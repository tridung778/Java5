<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
        <title>LAB5 - BAI3</title>
    </head>

    <body>
        <main class="container">
            <header class="row bg-dark p-2">                
                    <div class="col-md-6">
                        <h3 class="text-white text-uppercase">SORT PRODUCT BY ${field }</h3>
                    </div>
            </header>
            <div class="row">
                <article class="col-md-12 p-0">
                    <%@include file="_table.jsp" %>
                </article>
                
            </div>
        </main>
    </body>
    

    </html>