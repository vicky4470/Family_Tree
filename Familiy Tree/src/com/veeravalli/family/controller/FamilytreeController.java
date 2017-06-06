package com.veeravalli.family.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.veeravalli.family.model.FamilyMemberData;
import com.veeravalli.family.serviceImp.FamilyServiceImp;

/**
 * Servlet implementation class Familytree
 */
@WebServlet("/Familytree")
public class FamilytreeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       String redirect="Launch.jsp";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FamilytreeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("in controller ::::::  ");
		FamilyMemberData fmldata=new FamilyMemberData();
		String memId=(String) request.getParameter("fmemid");
		System.out.println("in controller fmemid :: "+memId);
		
		String action=(String) request.getParameter("action");
		System.out.println("in controller action :: "+action);
		if(action.equalsIgnoreCase("getdetails") || action.equalsIgnoreCase("getdetails2") ){
			FamilyServiceImp fmsImpl=new FamilyServiceImp();
			fmldata=fmsImpl.retrieveMemDetails(memId);
			System.out.println("in do post after result");
			System.out.println(fmldata.getName());
			request.setAttribute("familydata", fmldata);
			ArrayList<FamilyMemberData> fm=new ArrayList<FamilyMemberData>();
			fm=fmldata.getFmlydata();
			System.out.println(fm.size());
			if(action.equalsIgnoreCase("getdetails")){
			redirect="Response.jsp";}
			else{
				redirect="Response2.jsp";
			}
			RequestDispatcher rd = request.getRequestDispatcher(redirect);
	        rd.forward(request, response);
		}
		
		
	}

}
