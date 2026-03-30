<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 리스트</title>
</head>
<body>
   <%
      System.out.println(request.getAttribute("orders"));
   %>
   
   <table border="1">
      <tr>
         <th>주문 번호</th>
         <th>주문 상품</th>
         <th>주문 수량</th>
         <th>주문 총액</th>
         <th>주문 이름</th>
      </tr>
      <c:forEach var="order" items="${orders}">
         <tr>
            <td><c:out value="${order.id}" escapeXml="true"></c:out></td>
            <td><c:out value="${order.productName}" escapeXml="true"></c:out></td>
            <td><c:out value="${order.orderCount}" escapeXml="true"></c:out></td>
            <td><c:out value="${order.totalPrice}" escapeXml="true"></c:out></td>
            <td><c:out value="${order.memberName}" escapeXml="true"></c:out></td>
         </tr>
      </c:forEach>
   </table>
</body>
<script type="text/javascript">
   
</script>
</html>