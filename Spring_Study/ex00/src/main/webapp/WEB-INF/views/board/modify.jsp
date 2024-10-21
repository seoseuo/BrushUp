<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../includes/header.jsp" %>


<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Modify</h1>
<p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
    For more information about DataTables, please visit the <a target="_blank"
                                                               href="https://datatables.net">official DataTables
        documentation</a>.</p>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
    </div>
    <div class="card-body">
        <form id="actionForm" action="/board/modify" method="post">
            <!-- bno -->
            <div class="input-group input-group-lg">
                <div class="input-group-prepend">
                    <span class="input-group-text">Bno</span>
                </div>
                <input type="text" name="bno" class="form-control" value="<c:out value="${vo.bno}" />" readonly>
            </div>
            <!-- //bno -->
            <!-- title -->
            <div class="input-group input-group-lg">
                <div class="input-group-prepend">
                    <span class="input-group-text">Title</span>
                </div>
                <input type="text" name="title" class="form-control" value="<c:out value="${vo.title}" />">
            </div>
            <!-- //title -->
            <!-- content -->
            <div class="input-group input-group-lg">
                <div class="input-group-prepend">
                    <span class="input-group-text">Content</span>
                </div>
                <input type="text" name="content" class="form-control" value="<c:out value="${vo.content}" />">
            </div>
            <!-- //content -->
            <!-- writer -->
            <div class="input-group input-group-lg">
                <div class="input-group-prepend">
                    <span class="input-group-text">Writer</span>
                </div>
                <input type="text" class="form-control" value="<c:out value="${vo.writer}" />" readonly>
            </div>
            <!-- //writer -->
            <!-- regDate -->
            <div class="input-group input-group-lg">
                <div class="input-group-prepend">
                    <span class="input-group-text">RegDate</span>
                </div>
                <input type="text" class="form-control" value="<c:out value="${vo.regDate}" />" readonly>
            </div>
            <!-- //regDate -->
            <!-- buttons -->
            <div class="input-group input-group-lg">
                <button type="submit" class="btn btn-primary btnList">LIST</button>
                <button type="submit" class="btn btn-warning btnModify">MODIFY</button>
                <button type="submit" class="btn btn-danger btnRemove">REMOVE</button>
            </div>
            <!-- //buttons -->
        </form>
    </div>
</div>


<%@ include file="../includes/footer.jsp" %>

<script>

    const bno = '${vo.bno}';
    const actionForm = document.querySelector("#actionForm");

    document.querySelector(".btnList").addEventListener("click", (e) => {
        e.preventDefault();
        e.stopPropagation();
        window.location = "/board/list";
    }, false);

    document.querySelector(".btnModify").addEventListener("click", (e) => {

        e.preventDefault();
        e.stopPropagation();
        // window.location="/board/modify/${vo.bno}";

        actionForm.action = `/board/modify/\${bno}`;
        actionForm.method = "post";
        actionForm.submit();

    }, false);

    document.querySelector(".btnRemove").addEventListener("click", (e) => {

        e.preventDefault();
        e.stopPropagation();

        actionForm.action = `/board/remove/\${bno}`;
        actionForm.method = "post";
        actionForm.submit();

    }, false);


</script>


<%@ include file="../includes/end.jsp" %>