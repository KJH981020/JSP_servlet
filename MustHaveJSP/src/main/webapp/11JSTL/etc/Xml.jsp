<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ tablib prefix="c" uri="jakarta.tags.core" %>
<%@ tablib prefix="fmt" uri="jakarta.tags.fmt" %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>JSTL - xml</title>
	</head>
	<body>
		<c:set var="booklist">
			<c:import url="../inc/BookList.xml" var= "booklist" charEncoding="UTF-8"/>
		</c:set>
		
		<x:parse xml="${booklist }" var="blist" />
		<h4>파싱 1</h4>
		제목 : <x:out select="$blist/booklist/book[1]/name" /><br />
		저자 : <x:out select="$blist/booklist/book[1]author" /><br />
	</body>
</html>