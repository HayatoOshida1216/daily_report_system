<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="constants.ForwardConst" %>

<c:set var="actRep" value="${ForwardConst.ACT_REP.getValue()}" />
<c:set var="actFav" value="${ForwardConst.ACT_FAV.getValue()}" />
<c:set var="commIdx" value="${ForwardConst.CMD_INDEX.getValue()}" />
<c:set var="commShow" value="${ForwardConst.CMD_SHOW.getValue()}" />
<c:set var="commNew" value="${ForwardConst.CMD_NEW.getValue()}" />

<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">

        <h2>いいね 一覧</h2>
        <table id="report_list">
            <tbody>
                <tr>
                    <th class="report_name">投稿者</th>
                    <th class="report_title">タイトル</th>
                    <th class="report_content">コンテント</th>


                </tr>
                <c:forEach var="favorites" items="${favorite}" varStatus="status">


                    <tr>
                        <td class="report_name"><c:out value="${favorites.report.employee.name}" /></td>
                         <td class="report_title"><c:out value="${favorites.report.title}" /></td>
                         <td class="report_content"><c:out value="${favorites.report.content}" /></td>


                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </c:param>
</c:import>
