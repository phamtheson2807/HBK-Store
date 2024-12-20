var checkall = document.querySelector("#checkall");
var check = document.querySelectorAll("#check");
var select = document.querySelector(".select");
var unselect = document.querySelector(".unselect");
console.log(checkall);
checkall.onclick = function() {
    check.forEach(function(checkbox){
        if (checkall.checked == true) {
            checkbox.checked = true;
            unselect.style.display = "block";
            select.style.display = "none";
        } else {
            checkbox.checked = false;
            unselect.style.display = "none";
            select.style.display = "block";
        }

    });
}