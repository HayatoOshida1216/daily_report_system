<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="constants.ForwardConst" %>

<c:import url="/WEB-INF/views/layout/app.jsp">
   <c:param name="content">
   <h2><c:out value="${reactions_Type.name}" />を押した日報一覧</h2>
   <table id="report_list">
     <tbody>
        <tr>
           <th class="report_name">投稿者</th>
           <th class="report_title">タイトル</th>
           <th class="report_content">コンテント</th>
        </tr>
        <c:forEach var="good" items="${reactions}" varStatus="status">
        <tr>
           <td class="report_name"><c:out value="${good.report.employee.name}" /></td>
           <td class="report_title"><c:out value="${good.report.title}" /></td>
           <td class="report_content"><c:out value="${good.report.content}" /></td>
        </tr>
        </c:forEach>
     </tbody>
   </table>
   </c:param>
</c:import>