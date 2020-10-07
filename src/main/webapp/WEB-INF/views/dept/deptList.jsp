<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<table class="table table-striped">
			<caption class="text-primary">부서 목록</caption>
			<tr>
				<th>부서코드</th>
				<th>부서명</th>
				<th>근무지</th>
				<th>수정여부</th>
				<th>삭제여부</th>
			</tr>

			<!-- c:if 조건문  -->
			<c:if test="${empty list}">
				<tr>
					<!-- colspan : 컬럼 확장  -->
					<th colspan="5">부서 정보가 없습니다.</th>
				</tr>
			</c:if>
			<c:if test="${not empty list}">
				<!--Map, 컬렉션, 배열을 사용하는 경우 : var->변수 items->컬렉션) 형태-->
				<c:forEach var="dept" items="${list}">
					<tr>
						<td>${dept.deptno}</td>
						<td><a href="emplist.html?deptno=${dept.deptno}"
							class="btn btn-success btn-sm">${dept.dname}</a></td>
						<td>${dept.loc}</td>
						<td><a href="updateForm.html?depno=${dept.deptno}"
							class="btn btn-warning btn-sm">수정</a></td>
						<td><a href="deleteForm.html?depno=${dept.deptno}"
							class="btn btn-danger btn-sm">삭제</a></td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
		
		<a href="insertDeptForm.html" class="btn btn-info">부서 정보 입력</a>
		<a href="allEmpList.html" class="btn btn-default">전직원 목록</a>

	</div>
	
</body>
</html>








