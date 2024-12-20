let btnAdd = document.querySelector('#add');
let btnSubtract = document.querySelector('#subtract');
let input = document.querySelector('#input');

btnAdd.addEventListener('click', () => {
    input.value = parseInt(input.value) + 1;
});

btnSubtract.addEventListener('click', () => {
    input.value = parseInt(input.value) - 1;
    if (input.value < 1) {
        input.value = 1;
    }
});
input.oninput = () => {
    if (input.value < 1) {
        input.value = '';
        console.log(input.value);

    }
}