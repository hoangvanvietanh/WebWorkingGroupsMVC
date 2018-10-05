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

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.java.vakapu.entity.Profile;
import com.java.vakapu.model.ProfileModel;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.ProfileServices;

import utils.Constants;

@Controller
@RequestMapping("/profile")
public class ProfileController {

	@Autowired
	private AccountServices accountServices;

	@Autowired
	private ProfileServices profileServices;

	@GetMapping
	public String showProfile(Model model) {
		Profile profile = profileServices.findByEmail(accountServices.getEmailUser());
		ProfileModel profileModel = new ProfileModel();
		profileModel.fromProfile(profile);

		model.addAttribute("profile", profileModel);
		model.addAttribute("emailProfile", profile.getEmail());
		return "profile";
	}

	@PostMapping
	public String updateProfile(Model model, @RequestParam("file") MultipartFile file,
			@ModelAttribute("profile") Profile profile, RedirectAttributes redirectAttributes) {
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

			profile.setAvartar(file.getOriginalFilename());
		} else {
			profile.setAvartar(profileServices.findByEmail(accountServices.getEmailUser()).getAvartar());
		}
		profileServices.updateProfile(profile);
		return "redirect:/profile";
	}

	@RequestMapping(value = "/avatar/{email}", method = RequestMethod.GET)
	public void downloadAvatar(HttpServletResponse response, @PathVariable("email") String email) throws IOException {

		System.out.println("Email la:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::" + email);
		Profile profile = profileServices.findByEmail(email);
		if (profile == null) {
			return;
		}

		String fullPath = Constants.UPLOAD_FOLDER + "/" + profile.getAvartar();
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

}
