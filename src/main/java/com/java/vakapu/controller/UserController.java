package com.java.vakapu.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.ParseException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.java.vakapu.entity.Account;
import com.java.vakapu.entity.User;
import com.java.vakapu.model.AccountModel;
import com.java.vakapu.model.ProfileModel;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.NotificationsSystemServices;
import com.java.vakapu.services.UserServices;

import utils.Constants;

@Controller
@RequestMapping("/profile")
public class UserController {

	@Autowired
	private AccountServices accountServices;

	@Autowired
	private UserServices userServices;
	
	@Autowired
	private NotificationsSystemServices notificationsSystemServices ;

	@GetMapping
	public String showProfile(Model model) {
		String emailUser = accountServices.getEmailUser();
		User user = userServices.findByEmail(emailUser);
		ProfileModel profileModel = new ProfileModel();
//		ProfileModel editProfile= new ProfileModel();
		profileModel.fromProfile(user);
//		editProfile.fromProfile(user);
		Account acc = accountServices.findByEmail(emailUser);
		AccountModel account = new AccountModel();
		account.fromAccount(acc);
		model.addAttribute("change", account);
		model.addAttribute("profile", profileModel);
		model.addAttribute("emailProfile", user.getEmail());
		model.addAttribute("emailUser", emailUser);
		return "account-settings";
	}

	@PostMapping
	public String updateProfile(Model model, @RequestParam("file") MultipartFile file,
			@ModelAttribute("profile") User user, RedirectAttributes redirectAttributes) {
		System.out.println("viet anh dep trai");
		if (!file.isEmpty()) {
			try {

				byte[] bytes = file.getBytes();
				Path path = Paths.get(Constants.UPLOAD_FOLDER + file.getOriginalFilename());
				Files.write(path, bytes);

				redirectAttributes.addFlashAttribute("message",
						"You successfully uploaded '" + file.getOriginalFilename() + "'");

			} catch (IOException e) {
				e.printStackTrace();
			}

			user.setAvartar(file.getOriginalFilename());
		} else {
			user.setAvartar(userServices.findByEmail(accountServices.getEmailUser()).getAvartar());
		}
		userServices.updateProfile(user);
		return "redirect:/profile";
	}

	@RequestMapping(value = "/avatar/{email}", method = RequestMethod.GET)
	public void downloadAvatar(HttpServletResponse response, @PathVariable("email") String email) throws IOException {

		User user = userServices.findByEmail(email+".com");
		if (user == null) {
			return;
		}

		String fullPath = Constants.UPLOAD_FOLDER + "/" + user.getAvartar();
		File file = new File(fullPath);

		if (!file.exists()) {
			String errorMessage = "Sorry. The file you are looking for does not exist";
			OutputStream outputStream = response.getOutputStream();
			outputStream.write(errorMessage.getBytes(Charset.forName("UTF-8")));
			outputStream.close();
			return;
		}

		String mimeType = URLConnection.guessContentTypeFromName(file.getName());
		if (mimeType == null) {
			System.out.println("mimetype is not detectable, will take default");
			mimeType = "application/octet-stream";
		}

		response.setContentType(mimeType);

		response.setHeader("Content-Disposition", String.format("inline; filename=\"" + file.getName() + "\""));

		response.setContentLength((int) file.length());

		InputStream inputStream = new BufferedInputStream(new FileInputStream(file));

		FileCopyUtils.copy(inputStream, response.getOutputStream());
	}
	@RequestMapping(value="/edit-profile",method=RequestMethod.POST)
	public String updateProfile(@ModelAttribute("profile") ProfileModel profile,
			BindingResult result ,Model model) throws ParseException
	{
		if(result.hasErrors())
		{
			return "redirect:/profile";
		}
		User user=profile.toProfile();
		userServices.updateProfile(user);
		return "redirect:/profile";
	}
}
