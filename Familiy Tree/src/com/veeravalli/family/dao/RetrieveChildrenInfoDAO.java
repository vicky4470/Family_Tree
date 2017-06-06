/*package com.veeravalli.family.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.veeravalli.family.model.FamilyMemberData;

public class RetrieveChildrenInfoDAO {
	private ArrayList<FamilyMemberData> retrieveChildrenDetails(String fMemId) {
		// TODO Auto-generated method stub
		String childrenDetails = "SELECT * FROM family.familymembers where fmemcode like ";
		PreparedStatement ps = conn
				.prepareStatement(childrenDetails);
		ps.setString(1, fMemId);
		System.out.println(fMemId);
		ResultSet rs2 = ps2.executeQuery();
		while (rs.next()) {
			FamilyMemberData childdata = new FamilyMemberData();
			childdata.setName(rs2.getString("Name"));
			childdata.setfMemId(rs2.getString("Fmemcode"));
			fmlydata.add(childdata);

		}
		return null;
	}

}
*/