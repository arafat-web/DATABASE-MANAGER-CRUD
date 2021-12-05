<%-- 
    Document   : newjsp1
    Created on : Dec 2, 2021, 5:28:31 PM
    Author     : Arafat Hossain Ar
--%>

<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "student";
    String userid = "root";
    String password = "";
    JSONObject obj = new JSONObject();
    JSONArray list = new JSONArray();
    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    try {
        String id = request.getParameter("id");
        connection = DriverManager.getConnection(connectionUrl + database, userid, password);
        statement = connection.createStatement();
        String sql = "select * from records where SL=" + id;
        resultSet = statement.executeQuery(sql);

        while (resultSet.next()) {
            String sl = resultSet.getString("SL");
            String roll = resultSet.getString("roll");
            String name = resultSet.getString("name");
            String deptt = resultSet.getString("deptt");
            String dob = resultSet.getString("dob");

            obj.put("id", sl);
            obj.put("roll", roll);
            obj.put("name", name);
            obj.put("deptt", deptt);
            obj.put("dob", dob);
            list.add(obj);
        }
        out.print(list.toJSONString());
//        out.flush();
        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>