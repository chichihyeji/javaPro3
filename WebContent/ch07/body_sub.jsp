<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    body_sub���� name �Ķ���� ��: <%=request.getParameter("name") %>
    <br/>
    name �Ķ���� �� ���:
    <ul>
    <%
    String[] names=request.getParameterValues("name");
    for(String name:names){
    %>
    
    <li><%=name %></li>
    <% 
    }
    %>
    </ul>
