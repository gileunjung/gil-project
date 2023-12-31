<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp" %>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            DataTables Advanced Tables
                            <button id='regBtn' type="button" class="btn btn-xs pull-right">Register New Board</button>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="">
                                <thead>
                                    <tr>
                                        <th>bno</th>
                                        <th>id</th>
                                        <th>name</th>
                                        <th>phone</th>
                                        <th>regDate</th>
                                        <th>updateDate</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${list}" var="member">
                                    <tr class="odd gradeX">
                                        <td>${member.bno}</td>
                                        <td><a href='/member/get?bno=<c:out value = "${member.bno}"/>'><c:out value = "${member.id}"/></a></td>
                                        <td>${member.name}</td>
                                        <td>${member.phone}</td>
                                        <td><fmt:formatDate pattern = "yyyy-MM-dd" value = "${member.regdate}"/></td>
                                        <td><fmt:formatDate pattern = "yyyy-MM-dd" value = "${member.updateDate}"/></td>
                                    </tr>
                                    </c:forEach>                                    
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->                          
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            
        <div id="myModal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Modal body text goes here.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Save changes</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>    
        <script>
        $(document).ready(function(){
        	var result = '<c:out value = "${result}"/>';
        	
        	checkModal(result);
        	
        	history.replaceState({}, null, null);
        	
        	function checkModal(result) {
        		if(result === '' || history.state)
        			return;
	        	
	        	if(result === 'success') {
	        		$(".modal-body").html(
	        			"정상적으로 처리되었습니다.");		
	        	} else if(parseInt(result) > 0) {
	        		$(".modal-body").html(
	        			"가입" + parseInt(result)+"번이 등록되었습니다.");		
	        	}
	        	$("#myModal").modal("show");
        	}
        	
        	$("#regBtn").on("click", function(){
        		self.location = "/member/register";
        	})
        });
        </script>

      
        <%@include file="../includes/footer.jsp" %>