<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
div.plane {
	width:1000px;
	margin: 0 auto;
}
table {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;

}
table thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #369;
    border-bottom: 3px solid #036;
}
table tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #f3f6f7;
}
table td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}
</style>
</head>
<body>
	<div class="plane">
		<form id="boardForm" name="boardForm" method="post">
			<table>
				<thead>
					<tr>
						<th>제목</th>
						<th>작성자</th>
						<th>날짜</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${fn:length(list) > 0 }">
							<c:forEach items="${list }" var="result">
								<tr>
									<td><a href='/BoardWeb/board/detailBoard?seq=${result.serial}'><c:out value="${result.title }" /></a></td>
									<td><c:out value="${result.writer }" /></td>
									<td><fmt:formatDate value="${result.regDate}" pattern="yyyy.MM.dd" /></td>
									<td><c:out value="${result.cnt }" /></td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="5">조회된 결과가 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>

			<div>
				<a href='<c:url value='/board/boardWrite'/>' class="btn btn-outline-info">글쓰기</a>
			</div>
		</form>
		<script>
			
		</script>
	</div>
</body>
</html>
