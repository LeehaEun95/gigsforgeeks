<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../../views/common/header2.jsp" %>

	<meta charset="UTF-8">
   	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/adminCommon.css">
	<title>관리자 메인페이지 = 회원전체조회 페이지</title>

</head>
<body>
    <div class="wrap">
        <div id="content">
        
        	<!-- 좌측 메뉴바 -->
        	<div id="content_l">
			    <jsp:include page="/views/admin/adminMenubar.jsp" flush="true"></jsp:include>
        	</div>
        	
        	<!-- 우측 메인 : 회원조회 -->
        	<div id="content_r">
        		<!-- 우측 상단 헤더 -->
				<div id="content_r_header">
				    <jsp:include page="/views/admin/adminHeaderbar.jsp" flush="true"></jsp:include>
				</div>
				
				<!-- ****************	여기서부터!!	***************** -->
				<!-- 우측 메인 -->
                <div id="content_r_center_h" style="padding: 30px; font-size: 40px;">
			        <b>1:1 문의 관리</b>
			    </div>

                <div id="content_r_center_m">

                    <div class="btn-group" id="jobType" role="group" style="float: right;">
                        <button type="button" class="btn btn-default">고용주</button>
                        <button type="button" class="btn btn-default">프리랜서</button>
                    </div>

                    <br><br><br>

                    <table class="table table-hover, listArea">
                        <thead>
                            <tr>
                                <td style="width: 50px;">No</td>
                                <td style="width: 200px;">문의 제목</td>
                                <td style="width: 300px;">답변 여부</td>
                                <td style="width: 200px;">문의 일자</td>
                                <td style="width: 200px;">상세 조회</td>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>5</td>
                                <td>문의제목입니닷</td>
                                <td>응?</td>
                                <td>2020-20-20</td>
                                <td>상세조회</td>
                            </tr>
                            <tr>
                                <td colspan="7">조회된 리스트가 없습니다.</td>
                            </tr>
                        </tbody>

                    </table>
               	</div>
                <!-- 복사 여기까지 끝 -->


			<!-- ****************	여기까지!! 	***************** -->
        	</div>
			
        </div>
    </div>
</body>
</html>