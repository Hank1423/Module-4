<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chuyển đổi tiền tệ</title>
</head>
<body>
<h2>Chuyển đổi USD sang VNĐ</h2>
<form action="convert" method="post">
    <p>
        <label>Tỉ giá (VNĐ / 1 USD):</label><br>
        <input type="number" step="any" name="rate" placeholder="Ví dụ: 25000" required>
    </p>
    <p>
        <label>Số lượng USD:</label><br>
        <input type="number" step="any" name="usd" placeholder="Ví dụ: 100" required>
    </p>
    <button type="submit">Chuyển đổi</button>
</form>
</body>
</html>