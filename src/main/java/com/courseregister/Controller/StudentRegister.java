package com.courseregister.Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class StudentRegister
 */
@WebServlet("/register")
public class StudentRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String add_record = "insert into studdetails values(?,?,?)";
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","sahithi@01");
		PreparedStatement st = con.prepareStatement(add_record);
		String name = request.getParameter("aname");
		String course = request.getParameter("course");
		int fee = Integer.parseInt(request.getParameter("fee"));
		st.setString(1, name);
		st.setString(2, course);
		st.setInt(3, fee);
		st.executeUpdate();
		RequestDispatcher rd = request.getRequestDispatcher("details");
		rd.forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
