<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp" %>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Member read</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            DataTables Advanced Tables
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        
                        <div class="form-group">
							<label>아이디</label> 
							<input class="form-control" name="id" readonly = "readonly" value = '<c:out value="${member.id}"/>'>
					    </div>
					   	<div class="form-group">
							<label>패스워드</label> 
							<input class="form-control" name="pw" readonly = "readonly" value = '<c:out value="${member.pw}"/>'>
					    </div> 
					   <div class="form-group">
							<label>이름</label> 
							<input class="form-control" name="name" readonly = "readonly" value = '<c:out value="${member.name}"/>'>
					    </div>
					    <div class="form-group">
							<label>폰번호</label> 
							<input class="form-control" name="phone" readonly = "readonly" value='<c:out value="${member.phone}"/>'>
					    </div>
					    <button id="modify" type=submit class="btn btn-default">수정</button>
                        <button id="listBack" type="reset" class="btn btn-default">취소</button>
						
                            <!-- /.table-responsive -->                          
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
        <script>
        	$("#listBack").on("click", function(){
        		self.location = "/member/list";
        	})
        	$("#modify").on("click", function(){
        		self.location = "/member/modify?bno=<c:out value="${member.bno}"/>";
        	})
        	
        </script>    

      
        <%@include file="../includes/footer.jsp" %>