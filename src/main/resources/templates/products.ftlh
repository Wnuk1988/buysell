<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Buysell</title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h4>Товары по всей Белорусии</h4>
<form action="/" method="get">
    <label for="title">Поиск по названию обявления:</label>
    <input type="text" name="title"><br>
    <input type="submit" value="Поиск">
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
<#else>
    <h3>Товаров нет</h3>
</#list>
<hr>
<h3>Создать новый товар</h3>
<form action="/product/create" method="post">
    <label for="title">Название объявления:</label>
    <input type="text" name="title" id="title"/><br><br>

    <label for="description">Описание товара:</label>
    <input type="text" name="description" id="description"/><br><br>

    <label for="price">Цена:</label>
    <input type="number" name="price" id="price"/><br><br>

    <label for="city">Город:</label>
    <input type="text" name="city" id="city"/><br><br>

    <label for="author">Автор:</label>
    <input type="text" name="author" id="author"/><br><br>

    <input type="submit" value="Добавить товар">
</form>
</body>
</html>