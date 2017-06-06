package com.veeravalli.family.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.veeravalli.family.model.FamilyMemberData;
import com.veeravalli.family.util.SqlConnectionProvider;

public class RetrieveMemDAO {

	private Connection conn;

	public RetrieveMemDAO() {
		conn = SqlConnectionProvider.getConnection();
	}

	String fmemdetails = "SELECT * FROM family.familymembers where fmemcode=?";
	String childrenDetails = "SELECT * FROM family.familymembers where Childof=?";

	public FamilyMemberData retrieveMemDetails(String fMemId) {
		FamilyMemberData fmldata = new FamilyMemberData();
		try {

			System.out.println("after conn");
			String mem = "v0";
			String imgpath = "";
			String spouseimgpath = "";
			String spousename = "";
			int noOfChild = 0;

			// PreparedStatement stmt=conn.prepareStatement(sql);

			PreparedStatement ps = conn.prepareStatement(fmemdetails);

			ps.setString(1, fMemId);
			System.out.println(fMemId);
			ResultSet rs = ps.executeQuery();

			System.out.println("after execute");

			// System.out.println(rs.getString(2).toString());

			System.out.println("after execute query");
			// System.out.println(rs.getString("name"));
			ArrayList<FamilyMemberData> fmlydata = new ArrayList<FamilyMemberData>();

			if (rs.next()) {
				System.out.println("in while");
				fmldata.setName(rs.getString("name").toString());
				fmldata.setTotalchildren(rs.getInt("totalchildren"));
				noOfChild = fmldata.getTotalchildren();
				fmldata.setDob(rs.getString("DOB"));
				fmldata.setfMemId(rs.getString("Fmemcode"));
				fmldata.setChildOf(rs.getString("Childof"));
				fmldata.setSpouseName(rs.getString("spouseName"));
				fmldata.setSpouseImgPath(rs.getString("spouseImgPath"));
				imgpath = rs.getString("imgpath");
				spouseimgpath = rs.getString("spouseImgPath");
				spousename = rs.getString("spouseName");
				System.out.println(imgpath);
				// fmldata.setImgpath("images/cross.png");
				if (imgpath != null) {
					fmldata.setImgpath(rs.getString("imgpath"));
					// fmldata.setImgpath("images/cross.png");
				} else {
					// fmldata.setImgpath(rs.getString("imgpath"));
					fmldata.setImgpath("images/cross.png");
				}
				if (spouseimgpath != null) {
					fmldata.setSpouseImgPath(rs.getString("spouseImgPath"));
					// fmldata.setImgpath("images/cross.png");
				} else {
					// fmldata.setImgpath(rs.getString("imgpath"));
					fmldata.setSpouseImgPath("images/cross.png");
				}
				if (spousename != null) {
					fmldata.setSpouseName(rs.getString("spouseName"));
					// fmldata.setImgpath("images/cross.png");
				} else {
					// fmldata.setImgpath(rs.getString("imgpath"));
					fmldata.setSpouseName("Not Available");
				}
				if (noOfChild != 0) {

					fmlydata = retrieveChildrenDetails(fMemId);

				}
				fmldata.setFmlydata(fmlydata);
				System.out.println(rs.getInt("totalchildren"));
				System.out.println(rs.getInt("Fmemcode"));
			}
		} catch (Exception e) {

		}
		return fmldata;

	}

	private ArrayList<FamilyMemberData> retrieveChildrenDetails(String fMemId) {
		// TODO Auto-generated method stub
		PreparedStatement ps2;
		String imgpath = "";
		ArrayList<FamilyMemberData> fmlydata = new ArrayList<FamilyMemberData>();
		try {
			ps2 = conn.prepareStatement(childrenDetails);

			ps2.setString(1, fMemId);
			System.out.println(fMemId);
			ResultSet rs2 = ps2.executeQuery();

			while (rs2.next()) {
				FamilyMemberData childdata = new FamilyMemberData();
				childdata.setName(rs2.getString("Name"));
				childdata.setfMemId(rs2.getString("Fmemcode"));
				childdata.setImgpath("images/cross.png");

				imgpath = rs2.getString("imgpath");
				System.out.println("in meme path :::  " + imgpath);
				if (imgpath != null) {
					childdata.setImgpath(rs2.getString("imgpath"));
				} else {
					childdata.setImgpath("images/cross.png");
				}
				fmlydata.add(childdata);

			}
			System.out.println("size of children= :::     " + fmlydata.size());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fmlydata;
	}

}
