package com.veeravalli.family.model;

import java.util.ArrayList;

public class FamilyMemberData {
	String fMemId = "";
	String name = "";
	String nickname="";
	String spouseName="";
	String spouseImgPath="";
	String dob = "";
	String imgpath="";
	int totalchildren=0;
	String childOf = "";
	String Add1 = "";
	String Add = "";
	String phone = "";
	String fblnk = "";
	String twtlnk = "";
	String instlnk = "";
	String realtnshp = "";
	FamilyMemberData fmldata=null;
	ArrayList<FamilyMemberData> fmlydata;

	public String getfMemId() {
		return fMemId;
	}

	public void setfMemId(String fMemId) {
		this.fMemId = fMemId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getSpouseName() {
		return spouseName;
	}

	public void setSpouseName(String spouse) {
		this.spouseName = spouse;
	}

	public String getSpouseImgPath() {
		return spouseImgPath;
	}

	public void setSpouseImgPath(String spouseImgPath) {
		this.spouseImgPath = spouseImgPath;
	}

	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public int getTotalchildren() {
		return totalchildren;
	}

	public void setTotalchildren(int totalchildren) {
		this.totalchildren = totalchildren;
	}

	public String getChildOf() {
		return childOf;
	}

	public void setChildOf(String childOf) {
		this.childOf = childOf;
	}

	public String getAdd1() {
		return Add1;
	}

	public void setAdd1(String add1) {
		Add1 = add1;
	}

	public String getAdd() {
		return Add;
	}

	public void setAdd(String add) {
		Add = add;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getFblnk() {
		return fblnk;
	}

	public void setFblnk(String fblnk) {
		this.fblnk = fblnk;
	}

	public String getTwtlnk() {
		return twtlnk;
	}

	public void setTwtlnk(String twtlnk) {
		this.twtlnk = twtlnk;
	}

	public String getInstlnk() {
		return instlnk;
	}

	public void setInstlnk(String instlnk) {
		this.instlnk = instlnk;
	}

	public String getRealtnshp() {
		return realtnshp;
	}

	public void setRealtnshp(String realtnshp) {
		this.realtnshp = realtnshp;
	}

	public FamilyMemberData getFmldata() {
		return fmldata;
	}

	public void setFmldata(FamilyMemberData fmldata) {
		this.fmldata = fmldata;
	}

	public ArrayList<FamilyMemberData> getFmlydata() {
		return fmlydata;
	}

	public void setFmlydata(ArrayList<FamilyMemberData> fmlydata) {
		this.fmlydata = fmlydata;
	}

}
