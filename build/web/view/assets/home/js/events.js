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

function sortProducts(event) {
    var text = event.target.value;
    document.getElementById("sortinput").value = text;
    $.ajax({
        url: "/PRJ301_Sp24_ClothesShop/ShopServlet",
        type: "get",
        data: {
            valueSort: text
        },
        success: function (data) {
            var row = document.getElementById("listproduct");
            row.innerHTML = data;
        },
        error: function (xhr) {
        }
    });
}

function searchProducts(tag, scope) {
    var text = tag.value;
    var scope = scope;
    $.ajax({
        url: "/PRJ301_Sp24_ClothesShop/SearchServlet",
        type: "get",
        data: {
            txtSearch: text,
            scope: scope
        },
        success: function (data) {
            var row = document.getElementById("listproduct");
            row.innerHTML = data;
        },
        error: function (xhr) {
        }
    });
}

function addProductToCart(product_id, quantity) {
    var productId = product_id;
    var sl = quantity;
    $.ajax({
        url: "/PRJ301_Sp24_ClothesShop/CartServlet",
        type: "get",
        data: {
            product_id: productId,
            quantity: sl
        },
        success: function (data) {
            var row = document.getElementById("cart-icon");
            row.innerHTML = data;
        },
        error: function (xhr) {
        }
    });
}

function checkDuplicate(input) {
    var username = input.value;
    console.log(username);
    $.ajax({
        url: "/PRJ301_Sp24_ClothesShop/RegisterServlet",
        type: "post",
        data: {
            username: username,
            action: "CheckDuplicate"
        },
        success: function (data) {
            var row = document.getElementById("errorduplicate");
            row.innerHTML = data;
        },
        error: function (xhr) {
        }
    });
}

function getColor(element) {
    var inputColor = document.getElementById('chooseColor');
    var a = element.id;
    switch (a) {
        case 'Black':
            inputColor.value = 'Đen';
            break;
        case 'Orange':
            inputColor.value = 'Cam';
            break;
        case 'Blue':
            inputColor.value = 'Xanh dương';
            break;
        case 'Brown':
            inputColor.value = 'Nâu';
            break;
        case 'Yellow':
            inputColor.value = 'Vàng';
            break;
        case 'White':
            inputColor.value = 'Trắng';
            break;
        case 'Red':
            inputColor.value = 'Đỏ';
            break;
        case 'Green':
            inputColor.value = 'Xanh lá';
            break;
        default:
            break;
    }
    document.getElementById('form-filter').submit();
}

function setCheck(obj) {
    var fries = document.getElementsByName('id_filter');
    if ((obj.id === 'defaultcate') && (fries[0].checked) === true) {
        for (var i = 1; i < fries.length; i++) {
            fries[i].checked = false;
        }
    } else {
        for (var i = 1; i < fries.length; i++) {
            if (fries[i].checked === true) {
                fries[0].checked = false;
                break;
            }
        }
    }
    document.getElementById('actionfilter').value = 'filterByCategory';
    document.getElementById('form-filter').submit();
}