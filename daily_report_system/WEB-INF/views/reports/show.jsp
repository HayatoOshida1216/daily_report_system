<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="constants.ForwardConst" %>

<c:set var="actRep" value="${ForwardConst.ACT_REP.getValue()}" />

<c:set var="actRea" value="${ForwardConst.ACT_REA.getValue()}" />
<c:set var="commIdx" value="${ForwardConst.CMD_INDEX.getValue()}" />
<c:set var="commEdt" value="${ForwardConst.CMD_EDIT.getValue()}" />
<c:set var="commFav" value="${ForwardConst.CMD_FAVORITE.getValue()}" />
<c:set var="commRea" value="${ForwardConst.CMD_REA.getValue()}" />

<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">

        <h2>日報 詳細ページ</h2>



        <table style="margin-bottom:30px;">
            <tbody>
                <tr>
                    <th>氏名</th>
                    <td><c:out value="${report.employee.name}" /></td>
                </tr>
                <tr>
                    <th>日付</th>
                    <fmt:parseDate value="${report.reportDate}" pattern="yyyy-MM-dd" var="reportDay" type="date" />
                    <td><fmt:formatDate value='${reportDay}' pattern='yyyy-MM-dd' /></td>
                </tr>
                <tr>
                    <th>内容</th>
                    <td><pre><c:out value="${report.content}" /></pre></td>
                </tr>
                <tr>
                    <th>登録日時</th>
                    <fmt:parseDate value="${report.createdAt}" pattern="yyyy-MM-dd'T'HH:mm:ss" var="createDay" type="date" />
                    <td><fmt:formatDate value="${createDay}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                </tr>
                <tr>
                    <th>更新日時</th>
                    <fmt:parseDate value="${report.updatedAt}" pattern="yyyy-MM-dd'T'HH:mm:ss" var="updateDay" type="date" />
                    <td><fmt:formatDate value="${updateDay}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                </tr>


            </tbody>
        </table>

        <c:if test="${sessionScope.login_employee.id == report.employee.id}">
            <p>
                <a href="<c:url value='?action=${actRep}&command=${commEdt}&id=${report.id}' />">この日報を編集する</a>
            </p>
        </c:if>
        <c:choose>
         <c:when test="${reactions_user_count == 0 && sessionScope.login_employee.id != report.employee.id}">
         <form method="POST" action="<c:url value='?action=${actRea}&command=${commRea}' />">

               <c:import url="_favorite.jsp" />
         </form>
         </c:when>
         <c:otherwise>
           <c:if test="${sessionScope.login_employee.id != report.employee.id}">
              <p><c:out value="${reactions_Type.name}" />済み</p>
           </c:if>
         </c:otherwise>
         </c:choose>
         <p>この日報に押された<c:out value="${reactions_Type.name}" />の数:<c:out value="${reactions_count}" /></p>
         <h3>この日報に対して、<c:out value="${reactions_Type.name}" />を押した従業員</h3>
         <c:forEach var="user" items="${reactions_user}" varStatus="status">
           <p><c:out value="${user.employee.name}" /></p>
         </c:forEach>
            <p><a href="<c:url value='?action=${actRep}&command=${commIdx}' />">一覧に戻る</a></p>
    </c:param>
</c:import>