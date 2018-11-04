package com.java.vakapu.model;


import java.util.List;

import com.java.vakapu.entity.TaskTeamProject;
import com.java.vakapu.entity.Todo;

public class TodoModel {
	
	private int id;
	
	private String todo;
	
	private int completed;
	
	private TaskTeamProject taskTeamProject;

	private Integer[] idTodo;
	
	private List<Todo> todoList;
	
	public void fromTodo(Todo todo)
	{
		this.setId(todo.getId());
		this.setTodo(todo.getTodo());
		this.setCompleted(todo.getCompleted());
		this.setTaskTeamProject(todo.getTaskTeamProject());
	}
	
	public void toTodo()
	{
		Todo todo = new Todo();
		todo.setId(this.getId());
		todo.setCompleted(this.getCompleted());
		todo.setTodo(this.getTodo());
		todo.setTaskTeamProject(this.getTaskTeamProject());
	}
	
	


	public List<Todo> getTodoList() {
		return todoList;
	}

	public void setTodoList(List<Todo> todoList) {
		this.todoList = todoList;
	}

	

	

	public Integer[] getIdTodo() {
		return idTodo;
	}

	public void setIdTodo(Integer[] idTodo) {
		this.idTodo = idTodo;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTodo() {
		return todo;
	}

	public void setTodo(String todo) {
		this.todo = todo;
	}

	public int getCompleted() {
		return completed;
	}

	public void setCompleted(int completed) {
		this.completed = completed;
	}

	public TaskTeamProject getTaskTeamProject() {
		return taskTeamProject;
	}

	public void setTaskTeamProject(TaskTeamProject taskTeamProject) {
		this.taskTeamProject = taskTeamProject;
	}
	
	
}
