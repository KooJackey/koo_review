package com.pknu.member.dto;

public class MemberDto {
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_email;
	private String member_sex;
	private String member_birth;
	private String member_regdate;
	private String member_score;
	private String member_memo;
	private String member_grade;
	private String member_nickname;
	private String member_phonenumber;
	private String member_picture;
	private String member_introduce;
	
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_sex() {
		return member_sex;
	}
	public void setMember_sex(String member_sex) {
		this.member_sex = member_sex;
	}
	public String getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}
	public String getMember_regdate() {
		return member_regdate;
	}
	public void setMember_regdate(String member_regdate) {
		this.member_regdate = member_regdate;
	}
	public String getMember_score() {
		return member_score;
	}
	public void setMember_score(String member_score) {
		this.member_score = member_score;
	}
	public String getMember_memo() {
		return member_memo;
	}
	public void setMember_memo(String member_memo) {
		this.member_memo = member_memo;
	}
	public String getMember_grade() {
		return member_grade;
	}
	public void setMember_grade(String member_grade) {
		this.member_grade = member_grade;
	}
	public String getMember_nickname() {
		return member_nickname;
	}
	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}
	public String getMember_phonenumber() {
		return member_phonenumber;
	}
	public void setMember_phonenumber(String member_phonenumber) {
		this.member_phonenumber = member_phonenumber;
	}
	public String getMember_picture() {
		return member_picture;
	}
	public void setMember_picture(String member_picture) {
		this.member_picture = member_picture;
	}
	
	public String getMember_introduce() {
		return member_introduce;
	}
	public void setMember_introduce(String member_introduce) {
		this.member_introduce = member_introduce;
	}
	@Override
	public String toString() {
		return "MemberDto [member_id=" + member_id + ", member_pw=" + member_pw + ", member_name=" + member_name
				+ ", member_email=" + member_email + ", member_sex=" + member_sex + ", member_birth=" + member_birth
				+ ", member_regdate=" + member_regdate + ", member_score=" + member_score + ", member_memo="
				+ member_memo + ", member_grade=" + member_grade + ", member_nickname=" + member_nickname
				+ ", member_phonenumber=" + member_phonenumber + ", member_picture=" + member_picture
				+ ", member_introduce=" + member_introduce + "]";
	}

	
}
