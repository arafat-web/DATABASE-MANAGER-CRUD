<%-- 
    Document   : view
    Created on : Dec 2, 2021, 7:38:37 PM
    Author     : Arafat Hossain Ar
--%>

<%@page import="org.json.simple.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%
    JSONArray list = new JSONArray();
    Connection con = null;
    PreparedStatement ps;
    ResultSet resultSet;
    JSONObject obj = new JSONObject();
    try {

        String sql = "SELECT * FROM records ORDER BY SL ASC;";

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/student", "root", "");
        ps = con.prepareStatement(sql);
        resultSet = ps.executeQuery();
        
        

        if (!resultSet.next()) {
            out.print("0");
        } else {
            do {
                obj.put("sl", resultSet.getString("SL"));
                obj.put("roll", resultSet.getString("roll"));
                obj.put("name", resultSet.getString("name"));
                obj.put("deptt", resultSet.getString("deptt"));
                obj.put("dob", resultSet.getString("dob"));
                list.add(obj.toString());
            } while (resultSet.next());
            out.print(list);
        }

    } catch (Exception e) {

    } finally {
        if (con != null) {
            con.close();
        }
    }
%>
