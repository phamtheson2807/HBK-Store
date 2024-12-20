const myButton = document.querySelector('#myBtn');
console.log(myButton);
window.onscroll = function () {
    scrollFuntion();
}
function scrollFuntion() {
    myButton.style.display = "block";
}

myButton.onclick = function () {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}