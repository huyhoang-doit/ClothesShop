(function () {
    "use strict";

    var treeviewMenu = $('.app-menu');

    // Toggle Sidebar
    $('[data-toggle="sidebar"]').click(function (event) {
        event.preventDefault();
        $('.app').toggleClass('sidenav-toggled');
    });

    // Activate sidebar treeview toggle
    $("[data-toggle='treeview']").click(function (event) {
        event.preventDefault();
        if (!$(this).parent().hasClass('is-expanded')) {
            treeviewMenu.find("[data-toggle='treeview']").parent().removeClass('is-expanded');
        }
        $(this).parent().toggleClass('is-expanded');
    });

    // Set initial active toggle
    $("[data-toggle='treeview.'].is-expanded").parent().toggleClass('is-expanded');

    //Activate bootstrip tooltips
    $("[data-toggle='tooltip']").tooltip();

})();

function addOption(selectElement, value, text) {
    var option = document.createElement("option");
    option.value = value;
    option.text = text;
    selectElement.add(option);
}

var defaultReleaseDate = document.getElementById("stringdateolb").value;
var defaultDateArray = defaultReleaseDate.split('-');
var defaultDay = parseInt(defaultDateArray[2]);
var defaultMonth = parseInt(defaultDateArray[1]);
var defaultYear = parseInt(defaultDateArray[0]);

var daysSelect = document.getElementById('dobDay');
var monthsSelect = document.getElementById('dobMonth');
var yearsSelect = document.getElementById('dobYear');

for (var day = 1; day <= 31; day++) {
    addOption(daysSelect, day, day);
}

for (var month = 1; month <= 12; month++) {
    addOption(monthsSelect, month, month);
}

var currentYear = new Date().getFullYear();
for (var year = currentYear; year >= 1900; year--) {
    addOption(yearsSelect, year, year);
}

daysSelect.value = defaultDay;
monthsSelect.value = defaultMonth;
yearsSelect.value = defaultYear;


function setValue() {
    var here = document.querySelector('#here');
    var dobDay = document.getElementById('dobDay').value;
    var dobMonthText = document.getElementById('dobMonth').value;
    var dobYear = document.getElementById('dobYear').value;
    if (dobMonthText < 10 && dobDay < 10) {
        dobFull = dobYear + '-0' + dobMonthText + '-0' + dobDay;
    } else if (dobMonthText < 10 && !(dobDay < 10)) {
        dobFull = dobYear + '-0' + dobMonthText + '-' + dobDay;
    } else if (dobDay < 10 && !(dobMonthText < 10)) {
        dobFull = dobYear + '-' + dobMonthText + '-0' + dobDay;
    } else {
        dobFull = dobYear + '-' + dobMonthText + '-' + dobDay;
    }
    here.value = dobFull;
}

function changeStatus(button, orderID) {
    var id = orderID;
    var action = 'changeStatus';
    $.ajax({
        url: "/PRJ301_Sp24_ClothesShop/ManageOrderServlet",
        type: "post",
        data: {
            id: id,
            action: action
        },
        success: function () {
            var row = button.parentElement;
            row.innerHTML = 'Đã giao';
        },
        error: function (xhr) {
        }
    });
}