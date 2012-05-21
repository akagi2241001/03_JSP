<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>階層の取得例(List)）</title>
</head>
<body>
<%
    List<String> list = new ArrayList<String>();
    list.add("valueA");
    list.add("valueB");
    list.add("valueC");
    list.add("valueD");
    list.add("valueE");
    pageContext.setAttribute("samples", list);
%>
<%-- ELで表示 --%>
${samples[3]}
</body>
</html>