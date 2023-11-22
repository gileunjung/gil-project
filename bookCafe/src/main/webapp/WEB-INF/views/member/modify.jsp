<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp" %>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Member Register</h1>
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
                        <form>
                        <div class="form-group">
							<label>bno</label> 
							<input class="form-control" name="bno" readonly="readonly" value='<c:out value = "${member.bno}"/>'>
					    </div>
                        <div class="form-group">
							<label>아이디</label> 
							<input class="form-control" name="id" readonly = "readonly" value = '<c:out value="${member.id}"/>'>
					    </div>
					   	<div class="form-group">
							<label>패스워드</label> 
							<input class="form-control" name="pw"  value = '<c:out value="${member.pw}"/>'>
					    </div> 
					   <div class="form-group">
							<label>이름</label> 
							<input class="form-control" name="name" value = '<c:out value="${member.name}"/>'>
					    </div>
					    <div class="form-group">
							<label>폰번호</label> 
							<input class="form-control" name="phone" value='<c:out value="${member.phone}"/>'>
					    </div>
					    <button class="btn btn-default" data-oper='modify'>수정</button>
					    <button class="btn btn-danger" data-oper='remove'>삭제</button>
                        <button id="listBack" type="reset" class="btn btn-info" data-oper='list'>취소</button>
						</form>
                            <!-- /.table-responsive -->                          
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
        <script>
        	$(document).ready(function() {
        		var formObj = $("form");
        		
        		$('.btn').click(function(e){
        			e.preventDefault();
        			var operation = $(this).data("oper");
        			console.log(operation);
        			
        			if(operation === 'list') {
        				self.location ="/member/list";        			
        			}else if(operation === 'remove') {
        				formObj.attr("action", "/member/remove")
        				.attr("method", "post");
        				formObj.submit();
        			} else if(operation === 'modify') {
        				formObj.attr("action", "/member/modify")
        				.attr("method", "post");
        				formObj.submit();
        			}
        		});
        		
        	});
        </script>    

      
        <%@include file="../includes/footer.jsp" %>