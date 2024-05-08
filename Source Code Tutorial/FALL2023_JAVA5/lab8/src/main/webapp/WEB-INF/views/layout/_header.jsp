<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<header class="p-3 text-bg-dark position-fixed z-3 top-0 w-100">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <i class="fs-3 me-2 bi bi-bootstrap"></i>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="/" class="nav-link px-2 text-white"><s:message code="header.home"/></a></li>
          <li><a href="#" class="nav-link px-2 text-white"><s:message code="header.features"/></a></li>
          <li><a href="#" class="nav-link px-2 text-white"><s:message code="header.faqs"/></a></li>
          <li><a href="/about" class="nav-link px-2 text-white"><s:message code="header.about"/></a></li>
           <li><a href="/anhtu" class="nav-link px-2 text-white"><s:message code="header.anhtu"/></a></li>
            <li><a href="#" class="nav-link px-2 text-white">TEST</a></li>
               <li><a href="#" class="nav-link px-2 text-white">TEST</a></li>
        </ul>

        <div class="text-end">
          <a href="?lang=en" class="px-2 text-decoration-none text-light"><s:message code="header.english"/></a>
          <a href="?lang=vi" class="px-2 text-decoration-none text-light"><s:message code="header.vietnamese"/></a>
        </div>
      </div>
    </div>
</header>
 
<script>
	$(document).ready(function(){
		$("a[href*=lang]").on("click", function(){
			var param = $(this).attr("href");
			$.ajax({
				url: "/" + param,
				success: function(){
					location.reload();
				}
			});
			return false;
		})
	})
</script>