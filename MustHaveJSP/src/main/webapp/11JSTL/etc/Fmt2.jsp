<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ tablib prefix="c" uri="jakarta.tags.core" %>
<%@ tablib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>JSTL - fmt 2</title>
	</head>
	<body>
		<c:set var="today" value="<%= new java.util.Date()  %>" />
		
		<h4>날짜 포맷</h4>
		full : <fmt:formaDate value="${ today }" type="date" dateStyle="full"/> <br />
		short : <fmt:formaDate value="${ today }" type="date" dateStyle="short"/> <br />
		long : <fmt:formaDate value="${ today }" type="date" dateStyle="long"/> <br />
		default : <fmt:formaDate value="${ today }" type="date" dateStyle="default"/> 
		
		<h4>시간 포맷</h4>
		full : <fmt:formaDate value="${ today }" type="time" dateStyle="full"/> <br />
		short : <fmt:formaDate value="${ today }" type="time" dateStyle="short"/> <br />
		long : <fmt:formaDate value="${ today }" type="time" dateStyle="long"/> <br />
		default : <fmt:formaDate value="${ today }" type="time" dateStyle="default"/>
		
		<h4>날짜/시간 표시</h4>
		<fmt:timeZone value="GMT">
			<fmt: formatDate value="${ today }" type="both" dateStyle="full"
				timeStyle="full"/>
			<br />
		</fmt:timeZone>
		
		<fmt:timeZone value="America/Chicago">
			<fmt: formatDate value="${ today }" type="both" dateStyle="full"
				timeStyle="full"/>
			<br />
		</fmt:timeZone>
		
		
		 
	</body>
</html>