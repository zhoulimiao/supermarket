<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>

<div class="right">
     <div class="location">
         <strong>你现在所在的位置是:</strong>
         <span>退货单管理页面 >> 退货单添加页面</span>
     </div>
     <div class="providerAdd">
         <form id="refuseForm" name="refuseForm" method="post" action="${pageContext.request.contextPath }/refuse/saverefuse.html">
             <!--div的class 为error是验证错误，ok是验证成功-->
             <div class="">
                 <label for="refCode">退货单编码：</label>
                 <input type="text" name="refCode" class="text" id="refCode" value=""> 
				 <!-- 放置提示信息 -->
				 <font color="red"></font>
             </div>
             <div>
                 <label for="refName">退货名称：</label>
                <select id="refName" name="refName"></select>
             </div>
             <div>
                 <label for="refnumber">退货数量：</label>
                <input type="text" name="refnumber" id="refnumber" value=""> 
				 <font color="red"></font>
             </div>
             <div>
                 <label for="refReasion">退货理由：</label>
                 <input type="text" name="refReasion" id="refReasion" value=""> 
				 <font color="red"></font>
             </div>
             <div class="providerAddBtn">
                  <input type="button" name="add" id="add" value="保存">
				  <input type="button" id="back" name="back" value="返回" >
             </div>
         </form>
     </div>
 </div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/refuseadd.js"></script>