<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div id="fa-moblie">
	<!---头部--->
	<div id="fa-header">
		<div id="fa-center">
			<a class="fa-logo" href="front/index.jsp"><img
				src="images/DSC_0030.png" />指艺</a>
			<ul class="fa-centers">
				<li class="first1"><a href="front/shoppingmall.jsp">商城</a>
				<li><a href="front/parts.jsp">配件</a>
				<li><a href="front/fa.jsp">应用</a>
				<li><a href="front/shouhou.jsp">服务</a>
				<li><a href="front/experienceStore.jsp">体验店</a>
				<li class="last1"><a href="#">社区</a>
			</ul>
			<img class="img1" src="images/zhuci.jpg" />
			<ul class="fa-right">
				<c:if test="${not empty sessionScope.users.uname}">
					<li><a href="#">当前用户名：${sessionScope.users.uname}</a></li>
					<li><a href="javascript:loginOut()">[注销]</a>
				</c:if>
				<c:if test="${empty sessionScope.users.uname}">
					<li><a href="register.jsp">注册</a>
					<li><a href="login.jsp">登录</a>
				</c:if>
			</ul>
		</div>
	</div>
</div>
<script>
function loginOut(){
	if(window.confirm('您确定要注销登录吗？')){
		var str='<li><a href="register.jsp">注册</a></li>';
		str+='<li><a href="login.jsp">登录</a></li>';
		$(".fa-right").html(str);
}
}

</script>
