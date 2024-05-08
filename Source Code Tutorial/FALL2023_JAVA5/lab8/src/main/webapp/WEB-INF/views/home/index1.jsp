<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<div class="col-md-10 z-1 dropdown-menu position-static d-flex flex-column flex-lg-row align-items-stretch justify-content-start p-3 rounded-3 shadow-lg" data-bs-theme="dark">
    <nav class="col-lg-8">
      <ul class="list-unstyled d-flex flex-column gap-2">
        <li>
          <a href="#" class="btn btn-hover-light rounded-2 d-flex align-items-start gap-2 py-2 px-3 lh-sm text-start">
            <svg class="bi" width="24" height="24"><use xlink:href="#image-fill"></use></svg>
            <div>
              <strong class="d-block"><s:message code="index.mainpro"/></strong>
              <small><s:message code="index.mainpro.detail"/></small>
            </div>
          </a>
        </li>
        <li>
          <a href="#" class="btn btn-hover-light rounded-2 d-flex align-items-start gap-2 py-2 px-3 lh-sm text-start">
            <svg class="bi" width="24" height="24"><use xlink:href="#music-note-beamed"></use></svg>
            <div>
              <strong class="d-block"><s:message code="index.anotherpro"/></strong>
              <small><s:message code="index.anotherpro.detail"/></small>
            </div>
          </a>
        </li>
        <li>
          <a href="#" class="btn btn-hover-light rounded-2 d-flex align-items-start gap-2 py-2 px-3 lh-sm text-start">
            <svg class="bi" width="24" height="24"><use xlink:href="#question-circle"></use></svg>
            <div>
              <strong class="d-block"><s:message code="index.support"/></strong>
              <small><s:message code="index.anotherpro.detail"/></small>
            </div>
          </a>
        </li>
      </ul>
    </nav>
    <div class="d-none d-lg-block vr mx-4 opacity-10">&nbsp;</div>
    <hr class="d-lg-none">
    <div class="col-lg-auto pe-3">
      <nav>
        <ul class="d-flex flex-column gap-2 list-unstyled small">
          <li><a href="#" class="link-offset-2 link-underline link-underline-opacity-25 link-underline-opacity-75-hover"><s:message code="index.documentation"/></a></li>
          <li><a href="#" class="link-offset-2 link-underline link-underline-opacity-25 link-underline-opacity-75-hover"><s:message code="index.usecases"/></a></li>
          <li><a href="#" class="link-offset-2 link-underline link-underline-opacity-25 link-underline-opacity-75-hover"><s:message code="index.api"/></a></li>
          <li><a href="#" class="link-offset-2 link-underline link-underline-opacity-25 link-underline-opacity-75-hover"><s:message code="index.partners"/></a></li>
          <li><a href="#" class="link-offset-2 link-underline link-underline-opacity-25 link-underline-opacity-75-hover"><s:message code="index.resources"/></a></li>
        </ul>
        
      </nav>
    </div>
  </div>