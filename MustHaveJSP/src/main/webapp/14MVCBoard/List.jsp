<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>파일 첨부형 게시판</title>
	</head>
	<body>
		<h2>파일 첨부형 게시판-현재 페이지:${map.pageNum } </h2>
		  <form method="get">  
	    <table border="1" width="90%">
	    <tr>
	        <td align="center">
	        	<!-- 검색 항목(searchField)은 제목과 내용 중 선택 -->
	            <select name="searchField"> 
	                <option value="title">제목</option> 
	                <option value="content">내용</option>
	            </select>
	            <input type="text" name="searchWord" />
	            <input type="submit" value="검색하기" />
	        </td>
	    </tr>   
	    </table>
	    </form>
	       <!-- 게시물 목록 테이블(표) -->
	    <table border="1" width="90%">
	        <tr>
	            <th width="10%">번호</th>
	            <th width="50%">제목</th>
	            <th width="15%">작성자</th>
	            <th width="10%">조회수</th>
	            <th width="15%">작성일</th>
	            <th width="8%">첨부</th>
	        </tr>
	<c:choose>	
		<c:when test="${ empty boardLists }">
	        <tr>
	            <td colspan="6" align="center">
	                등록된 게시물이 없습니다^^*
	            </td>
	        </tr>
	    </c:when>
<c:otherwise>
		<c:forEach items="${ boardLists }" var="row" varStatus="loop">
		<tr align="center">
			<td>
				${ map.totalCount - (((map.pageNum-1) * map.pageSize)
					+ loop.index)}
			</td>
			<td align="left">
				<a href="../mvcboard/view.do?idx=${ row.idx }">
					${ row.title }</a>
			</td>
			<td>${ row.name }</td>
			<td>${ row.visitcount }</td>
			<td>${ row.postdate }</td>
			<td>
			<c:if test="${ not empty row.ofile }">
				<a href="../mvcboard/download.do?ofile=${ row.ofile }
					&sfile=${ row.sfile }&idx=${ row.idx }">[Down]</a>
			</c:if>
			</td>
		</tr>
		</c:forEach>
	</c:otherwise>
</c:choose>
	</table>

  	<table border="1" width="90%">
		<tr align="center">
	  		<td>
	  			${ map.pagingimg }
	  		</td>
	  		<td width="100"><button type="button"
	  	  	onclick = "location.href='../mvcboard/write.do';">
	  	  	글쓰기</button></td>
		</tr>
	</table>
	</body>
</html>