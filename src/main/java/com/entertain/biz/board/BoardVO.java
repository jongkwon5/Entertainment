package com.entertain.biz.board;

import java.sql.Timestamp;

public class BoardVO {

	private int board_number;
	private String board_user_id;
	private String board_title;
	private String board_text;
	private Timestamp board_create_date;
	private String search_type;
	private int comment_count;
	
	public int getComment_count() {
		return comment_count;
	}
	public void setComment_count(int comment_count) {
		this.comment_count = comment_count;
	}
	public String getSearch_type() {
		return search_type;
	}
	public void setSearch_type(String search_type) {
		this.search_type = search_type;
	}
	public int getBoard_number() {
		return board_number;
	}
	public void setBoard_number(int board_number) {
		this.board_number = board_number;
	}
	public String getBoard_user_id() {
		return board_user_id;
	}
	public void setBoard_user_id(String board_user_id) {
		this.board_user_id = board_user_id;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_text() {
		return board_text;
	}
	public void setBoard_text(String board_text) {
		this.board_text = board_text;
	}
	public Timestamp getBoard_create_date() {
		return board_create_date;
	}
	public void setBoard_create_date(Timestamp board_create_date) {
		this.board_create_date = board_create_date;
	}

}
