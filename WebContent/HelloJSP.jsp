<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Hello JSP!</title>
</head>
<body>
ようこそ！ＪＳＰ＆サーブレットの世界へ！<br/>


<%@ include file="include.jsp" %><br/>
現在の時刻は

<%
    Calendar calendar = new GregorianCalendar();
    out.println( calendar.get(GregorianCalendar.HOUR_OF_DAY));
    out.println(":");
    out.println(calendar.get(GregorianCalendar.MINUTE));
%>
です。
<!-- 午前と午後の判定結果 -->
現在は
<%
    // Calendarの日時が午前であるか午後であるかを判定する;
    int ampm = calendar.get(GregorianCalendar.AM_PM);


    String value = "";
    if( ampm == GregorianCalendar.AM){
        value = "午前中";
    } else if(ampm == GregorianCalendar.PM){
        value = "午後";
    }
    out.println(value);
%>
ですね。

<table>
    <tr>
<%
    for (int i=0;i<9;i++){
%>
        <td><% out.print(i); %></td>
<%
    }
%>
    </tr>
</table>
</body>
</html>