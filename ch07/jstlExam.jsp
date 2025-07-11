<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 종합 예제</title>
</head>
<body>
	<h2>JSTL 종합 예제</h2>
	<hr>
	<h3>set,out</h3>
	<c:set var="product1" value="<b>애플 아이폰</b>"></c:set>
	<c:set var="product2" value="<b>삼성 갤럭시 노트</b>"></c:set>
	<c:set var="intArray" value="${fn:split('1,2,3,4,5',',') }" />

	<p>
		product1(jstl):
		<c:out value="${product1}" default="Not registerd" escapeXml="true"></c:out>
	</p>
	<p>product1(el):${product}</p>
	<p>intArray[2]: ${intArray[2]}</p>

	<hr>
	
	<h3> foreach: 배열 출력 </h3>
	<ul>
		<c:forEach var="num" varStatus="i" items="${intArray}">
			<li>${i.index}: ${num} </li>
		</c:forEach>
	</ul>
	<hr>
	
	<h3>if</h3>
	<c:set var="checkout" value="true"></c:set>
	<c:if test="${checkout}">
		<p>주문 제품: ${product2}</p>
	</c:if>	
		<c:if test="${!checkout}">
		<p>주문 제품이 아님</p>
	</c:if>	
		<c:if test="${!empty product2}">
		<p>${product2} 이미추가됨</p>
	</c:if>	
	<hr>
	
	<h3>choose when otherwise</h3>	
	<c:choose>
		<c:when test="${checkout}">
			<p>주문제품: ${product2}</p>
		</c:when>
		
		<c:otherwise>
			<p>주문 제품이 아님</p>
		</c:otherwise>
	
	</c:choose>			
	
	<hr>
	
	<h3>forTokens</h3>
	<c:forTokens var="city" items="Seoul | Tokyo | Newyork | Toronto" delims="|" varStatus="i">
	<c:if test="${i.first}">도시목록</c:if>
	${city}
	<c:if test="$!i.last">,</c:if>
	</c:forTokens>
</body>
</html>

















