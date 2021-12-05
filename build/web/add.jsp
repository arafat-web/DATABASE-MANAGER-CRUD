<%-- 
    Document   : add
    Created on : Nov 30, 2021, 7:28:50 PM
    Author     : Arafat Hossain Ar
--%>

<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.sql.*, java.util.*"%>
<%

    JSONArray list = new JSONArray();

    String roll = request.getParameter("roll");
    String name = request.getParameter("name");
    String deptt = request.getParameter("deptt");
    String dob = request.getParameter("date");
    Connection con = null;
    PreparedStatement ps;

    JSONObject obj = new JSONObject();

    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/student", "root", "");
        String sql = "INSERT into records(roll, name, deptt, dob) values(?, ?, ?, ?)";
        ps = con.prepareStatement(sql);
        ps.setString(1, roll);
        ps.setString(2, name);
        ps.setString(3, deptt);
        ps.setString(4, dob);
        ps.executeUpdate();
        obj.put("name", "success");
        list.add(obj);
        out.println(list.toJSONString());
        out.flush();

    } catch (Exception e) {
        String errorMessage = "Exception caught : ";
        out.println(errorMessage + e.toString());
        return;
    } finally {
        if (con != null) {
            con.close();
        }
    }

%>

