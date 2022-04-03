<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lol Club - Добавление группы</title>
    <link rel="shortcut icon" href="<c:url value="/assets/img/sign-in.png"/>" type="image/png">
    <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&family=Raleway:wght@600&display=swap"
          rel="stylesheet">
</head>
<body>
<header>
    <div class="admin__logo">
        <p>AdmPanel</p>
    </div>
    <nav>
        <div class="menu" id="menu">
            <a href="main">Пользователи</a>
            <a href="<c:url value="/admin/group/control"/>"><span class="current__link">Группы</span></a>
            <a href="about">Домашка</a>
            <a href="test">Блог</a>
            <a href="blog">Фото</a>
            <a href="contacts">Прочее</a>
        </div>
    </nav>
    <a href="<c:url value="/sign-out"/>">
        <div class="sign__in">
            <div class="sign__in__logo">
                <p><img src="<c:url value="/assets/img/sign-in.png"/>" width="24px" height="24px" alt="Logo"></p>
            </div>
            <div class="sign__in__text">Выйти</div>
        </div>
    </a>
</header>
<div class="adm__panel__text">
    <p>AdmPanel</p>
</div>
<div class="admin__service__buttons">
    <form action="<c:url value="/admin/group/control/add-group"/>" method="post">
        <p>
            <label>
                <select>
                    <option disabled>Выберите название</option>
                    <option name="group_designation" value="Beginner">Beginner</option>
                    <option name="group_designation" value="Mid-intermediate">Mid-intermediate</option>
                </select>
                <select>
                    <option disabled>Выберите возраст</option>
                    <option name="group_age" value="Kids">Kids</option>
                    <option name="group_age" value="Teens">Teens</option>
                </select>
                <select>
                    <option disabled>Выберите уровень</option>
                    <option name="group_level" value="A1">A1</option>
                    <option name="group_level" value="A2">A2</option>
                </select>
                <select>
                    <option disabled>Выберите день</option>
                    <option name="Monday" value="Monday">Monday</option>
                    <option name="Friday" value="Friday">Friday</option>
                </select>
                <input type="text" id="group_time" name="group_time" placeholder="time" required
                       oninvalid="this.setCustomValidity('Введите time')" oninput="setCustomValidity('')">
            </label>
        </p>
        <button type="submit">Gooo</button>
    </form>
</div>
<script src="<c:url value="/js/script.js"/>"></script>
</body>
</html>