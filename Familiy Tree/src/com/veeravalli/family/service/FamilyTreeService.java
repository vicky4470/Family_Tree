package com.veeravalli.family.service;

import com.veeravalli.family.model.FamilyMemberData;

public interface FamilyTreeService {
public FamilyMemberData retrieveMemDetails(String fMemId);
public FamilyMemberData addMemDetails(String fMemId);
public FamilyMemberData getChildrenInfo(String fMemId); 
}
