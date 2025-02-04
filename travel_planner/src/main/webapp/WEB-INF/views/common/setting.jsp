<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- JSTL 설정 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- contextPath 즉, 플젝명을 path 변수에 설정 -->
<c:set var="path" value="${pageContext.request.contextPath}" />
<%-- 어떤 이름의 플젝명이 오든 해당 플젝명(${pageContext.request.contextPath})을 읽어라 --%>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.7.1.min.js"></script>	<!-- 반드시 슬래쉬(/)가 아닌 따로 닫아준다. -->
