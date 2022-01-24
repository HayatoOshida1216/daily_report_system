<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="constants.AttributeConst" %>
<%@ page import="constants.ForwardConst" %>

<c:set var="action" value="${ForwardConst.ACT_RET.getValue()}" />

<label for="${AttributeConst.RET_NAME.getValue()}">名前</label><br />
<input type="text" name="${AttributeConst.RET_NAME.getValue()}" />
<button type="submit">Save</button>
