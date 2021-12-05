<%-- 
    Document   : delete
    Created on : Dec 4, 2021, 10:59:23 PM
    Author     : Arafat Hossain Ar
--%>

<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.sql.*, java.util.*"%>
<%

    JSONArray list = new JSONArray();

    String ID = request.getParameter("id");

    Connection con = null;
    PreparedStatement ps;
    
    int id = Integer.parseInt(ID);
    JSONObject obj = new JSONObject();

    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/student", "root", "");
        String sql = "DELETE FROM records where SL = ?" ;
        ps = con.prepareStatement(sql);
        ps.setInt(1, id);
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

