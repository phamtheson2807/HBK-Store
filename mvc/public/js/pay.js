let MY_BANK = {
    BANK_ID: "MB",
    ACCOUNT_NO: "051234456",
};

document.addEventListener("DOMContentLoaded", () => {
    // Sử dụng giá trị coursePrice đã được truyền từ PHP
    console.log("Tổng số tiền:", coursePrice);
    // Thực hiện các thao tác khác với coursePrice

    const payBtn = document.getElementById("payBtn");
    const paid_content = document.getElementById("paid_content");
    const paid_price = document.getElementById("paid_price");
    const qr_image = document.querySelector(".qr_image");

    // Hàm tạo chuỗi ngẫu nhiên
    function generateRandomString(length) {
        const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
        let result = '';
        const charactersLength = characters.length;
        for (let i = 0; i < length; i++) {
            result += characters.charAt(Math.floor(Math.random() * charactersLength));
        }
        return result;
    }

    if (payBtn && paid_content && paid_price && qr_image) {
        payBtn.addEventListener("click", () => {
            const NDCK = generateRandomString(10); // Tạo chuỗi ngẫu nhiên dài 10 ký tự
            const QR = `https://img.vietqr.io/image/MB-4868688889999-compact.png`;
            qr_image.src = QR;
            qr_image.style.display = 'block'; // Hiển thị ảnh QR
            paid_content.innerHTML = NDCK;
            paid_price.innerHTML = `${coursePrice}đ`;
        });
    }
});