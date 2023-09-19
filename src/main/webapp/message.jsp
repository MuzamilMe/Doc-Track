<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Muzamil
  Date: 9/19/2023
  Time: 12:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter Out = response.getWriter();
    String message = (String) session.getAttribute("message");
    if(message!= null){

        %>


<div class="alert alert-success alert-dismissible"  role="alert" >
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <strong><%=message%></strong>
</div>
<%
        session.removeAttribute("message");
    }
%>
