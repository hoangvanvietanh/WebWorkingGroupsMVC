package com.java.vakapu.model;

import com.java.vakapu.entity.Notes;
import com.java.vakapu.entity.TaskTeamProject;

public class NoteModel {
	private int id;
	private String notes;
	private String titleNotes;
	private String date;
	private TaskTeamProject taskTeamProject;
	
	public void fromNote(Notes note)
	{
		this.setId(note.getId());
		this.setNotes(note.getNotes());
		this.setTitleNotes(note.getTitleNotes());
		this.setDate(note.getDate());
		this.setTaskTeamProject(note.getTaskTeamProject());
	}
	
	public Notes toNote()
	{
		Notes note=new Notes();
		note.setId(this.getId());
		note.setNotes(this.getNotes());
		note.setTitleNotes(this.getTitleNotes());
		note.setDate(this.getDate());
		note.setTaskTeamProject(this.getTaskTeamProject());
		
		return note;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	public String getTitleNotes() {
		return titleNotes;
	}
	public void setTitleNotes(String titleNotes) {
		this.titleNotes = titleNotes;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public TaskTeamProject getTaskTeamProject() {
		return taskTeamProject;
	}
	public void setTaskTeamProject(TaskTeamProject taskTeamProject) {
		this.taskTeamProject = taskTeamProject;
	}
	
	
}
