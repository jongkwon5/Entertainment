package com.entertain.biz.board;

import java.sql.Timestamp;

public class CommentVO {

	private int comment_number;
	private int board_number;
	private String comment_user_id;
	private String comment_text;
	private Timestamp comment_create_date;

	
	public int getBoard_number() {
		return board_number;
	}
	public void setBoard_number(int board_number) {
		this.board_number = board_number;
	}
	public String getComment_user_id() {
		return comment_user_id;
	}
	public void setComment_user_id(String comment_user_id) {
		this.comment_user_id = comment_user_id;
	}
	public String getComment_text() {
		return comment_text;
	}
	public void setComment_text(String comment_text) {
		this.comment_text = comment_text;
	}
	public Timestamp getComment_create_date() {
		return comment_create_date;
	}
	public void setComment_create_date(Timestamp comment_create_date) {
		this.comment_create_date = comment_create_date;
	}
	public int getComment_number() {
		return comment_number;
	}
	public void setComment_number(int comment_number) {
		this.comment_number = comment_number;
	}

}
	