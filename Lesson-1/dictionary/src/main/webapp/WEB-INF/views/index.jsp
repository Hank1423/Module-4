<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Từ điển Anh - Việt</title>
</head>
<body>
<h2>Tra cứu từ điển Anh - Việt</h2>

<form action="search" method="post">
    <label for="word">Nhập từ tiếng Anh:</label>
    <input type="text" id="word" name="word" value="${searchWord}" placeholder="Ví dụ: hello, book..." required>
    <button type="submit">Tìm kiếm</button>
</form>

<hr>
<c:if test="${not empty result}">
    <p>Từ: <strong>${searchWord}</strong></p>
    <p>Nghĩa tiếng Việt: <strong style="color: green;">${result}</strong></p>
</c:if>

<c:if test="${not empty message}">
    <p style="color: red;">${message}</p>
</c:if>
</body>
</html>