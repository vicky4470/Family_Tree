package com.veeravalli.family.serviceImp;

import java.util.ArrayList;

import com.veeravalli.family.dao.RetrieveMemDAO;
import com.veeravalli.family.model.FamilyMemberData;
import com.veeravalli.family.service.FamilyTreeService;

public class FamilyServiceImp implements FamilyTreeService {
RetrieveMemDAO rtmemDao=new RetrieveMemDAO();

FamilyMemberData fmldata=new FamilyMemberData();
ArrayList<FamilyMemberData> fmlydata = new ArrayList<FamilyMemberData>();
	@Override
	public FamilyMemberData retrieveMemDetails(String fMemId) {
		// TODO Auto-generated method stub
		System.out.println("in retrieve mem details");
		fmldata=rtmemDao.retrieveMemDetails(fMemId);
		System.out.println(fmldata.getName());
		return fmldata;
	}

	@Override
	public FamilyMemberData addMemDetails(String fMemId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FamilyMemberData getChildrenInfo(String fMemId) {
		// TODO Auto-generated method stub
		System.out.println("in retrieve mem details");
		//fmldata=rtmemDao.(fMemId);
		return null;
	}



	/*public static void main(String args[]){
		FamilyServiceImp fml=new FamilyServiceImp();
		FamilyMemberData fmldata=new FamilyMemberData();
		System.out.println("in main");
		fmldata=fml.retrieveMemDetails("v0");
		System.out.println(fmldata.getName());
	}*/
}
