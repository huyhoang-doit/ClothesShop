var form = document.getElementById("login-form");
var error = document.getElementById("error");
form.addEventListener("submit", function (event) {
    event.preventDefault();
    const response = grecaptcha.getResponse();
    if (response) {
        form.submit();
    } else {
        error.textContent = "Vui lòng xác minh rằng bạn không phải robot.";
    }
});

function changeIcon(obj) {
    var id = obj.previousSibling.previousSibling.id;
    var inputP = document.getElementById(id);

    if (obj.className === 'fa-solid fa-eye-slash') {
        obj.className = 'fa-solid fa-eye';
        inputP.type = 'text';
    } else {
        obj.className = 'fa-solid fa-eye-slash';
        inputP.type = 'password';
    }
}

function checkNumberCharacter(obj) {
    if (obj.value.length <= 5) {
        var text = document.getElementById("text1");
        text.style.display = "block";
        text.textContent = "Mật khẩu của bạn phải dài ít nhất 6 ký tự. Vui lòng thử một mật khẩu khác.";
    } else {
        var text = document.getElementById("text1");
        text.style.display = "none";
    }
}

function checkSame(obj) {
    var a = document.getElementById("firstpass");
    var text = document.getElementById("text2");
    if (obj.value !== a.value) {
        text.style.display = "block";
        text.textContent = "Mật khẩu mới không khớp. Vui lòng nhập lại mật khẩu mới của bạn tại đây.";
    } else {
        text.style.display = "none";
    }
}

function checkForm(e) {
    var form = document.getElementById("register-form");
    var a = document.getElementById("firstpass").value;
    var text = document.getElementById("text2");
    form.addEventListener("submit", function (event) {
        event.preventDefault();
        const response = grecaptcha.getResponse();
        if (a.length > 5) {
            form.submit();
        } else {
            text.textContent = "Mật khẩu của bạn phải dài ít nhất 6 ký tự. Vui lòng thử một mật khẩu khác.";
        }
    });
}

