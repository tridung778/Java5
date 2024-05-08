<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="d-flex justify-content-center pt-5">
			<div class=" card feed text-center mb-5 modal-content  mt-5">
				<div class="circle-image">
					<img src="/images/ok.png " width="50 ">
				</div>
				<small class="help-text mb-1 text-black-50 "><s:message code="feed.p1"/></small>
				<span class="fw-500 "><s:message code="feed.p2"/></span>
				<div class="row mb-5 mt-5 ">
					<div class="col-md-6 " data-dismiss="modal ">
						<span class="thumb thumbs-up "><i
							class="bi bi-hand-thumbs-up "></i></span> <small class="fw-500 ">Yes</small>
					</div>
					<div class="col-md-6 " data-dismiss="modal ">
						<span class="thumb thumbs-down "><i
							class="bi bi-hand-thumbs-down "></i></span> <small class="fw-500 ">No</small>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>