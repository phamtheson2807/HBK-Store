
//hàm valid
// var form = document.querySelector("#form-1");
// form.addEventListener("submit", function(e){
//     e.prenventDefault();
// });
function validator(options){
    
    var selectorRules = {};

    function validator(inputElement, rule){
        //value: inputElement.value
        var errorMessage;
        var errorElement = inputElement.parentElement.querySelector(options.errorSelector);

        //lấy ra các rule của selector
        var rules = selectorRules[rule.selector];
        //lặp qua từng rule để kiểm tra
        for (var i = 0; i < rules.length ; ++i){
            errorMessage = rules[i](inputElement.value);
            if(errorMessage) break;
        }

        if(errorMessage){
            errorElement.innerText = errorMessage;
            inputElement.parentElement.classList.add('invalid');
        } else{
            errorElement.innerText = "";
            inputElement.parentElement.classList.remove('invalid');
        }

        return !errorMessage;
    }

    var formElement = document.querySelector(options.form);
    

    if(formElement){

        // khi submit form
        var form = document.querySelector(options.form);
        form.addEventListener('submit', e => {
            e.preventDefault();
            //lặp qua từng rule và xem lỗi
            var isFormValid = true;
            options.rules.forEach(function (rule) {
                var inputElement = formElement.querySelector(rule.selector);
                var isValid = validator(inputElement, rule);
                if(!isValid){
                    isFormValid = false;
                }
            });
            if(isFormValid){
            
                formElement.submit();
                
            }
        });
            
            
            
            
        }

        
        //lặp lại qua mỗi rule, xử lý phần lắng nghe sự kiện.
        options.rules.forEach(function (rule){

            // lưu lại các rules cho mỗi input
            if(Array.isArray(selectorRules[rule.selector])){
                selectorRules[rule.selector].push(rule.test);
            } else{
                selectorRules[rule.selector] = [rule.test];
            }
            

            var inputElement = formElement.querySelector(rule.selector);
            
            if(inputElement){
                //xử lý trường hợp blur khỏi input
                inputElement.onblur = function(){
                    validator(inputElement, rule);
                }
                //xử lý khi nhập vào input
                inputElement.oninput = function(){
                    var errorElement = inputElement.parentElement.querySelector(".form-message");
                    errorElement.innerText = "";
                    inputElement.parentElement.classList.remove('invalid');
                }
            }
        });
    }




//định nghĩa rules
//nguyên tắc của các rule.
// 1. có lỗi => trả ra mess lỗi
// 2. khi hợp lệ => không trả ra gì cả ( undefined)
validator.isRequired = function (selector, message) {
    return{
        selector: selector,
        test: function (value) {
            //trim loại bỏ dấu cách.
            return value.trim() ? undefined : message || '*vui lòng nhập trường này';
        }
    };
}

validator.isEmail = function (selector, message) {
    return{
        selector: selector,
        test: function (value) {
            var regex = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
            return regex.test(value) ? undefined : message || "*vui lòng nhập email";
        }
    }
}

validator.isPhone = function (selector, message) {
    return{
        selector: selector,
        test: function (value) {
            var regex = /^(\()?\d{3}(\))?(|\s)?\d{3}(|\s)\d{4}$/;
            return regex.test(value) ? undefined : message || "*vui lòng nhập đúng số điện thoại";
        }
    }
}

validator.minLength = function (selector, min) {
    return{
        selector: selector,
        test: function (value) {
            return value.length >= min ? undefined : "*nhập tối thiểu 8 kí tự";
        }
    }
}