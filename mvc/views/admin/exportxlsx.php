<?php
// Import các lớp cần thiết từ PhpSpreadsheet
require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

// Kết nối đến cơ sở dữ liệu
$servername = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "duan1";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname;charset=utf8", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Lỗi kết nối cơ sở dữ liệu: " . $e->getMessage());
}

// Truy vấn dữ liệu từ bảng orders
$stmt = $conn->prepare("SELECT total_order, phone_order, email_order, adress_order, name_order, date_order FROM orders");
$stmt->execute();
$dataTin = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Khởi tạo đối tượng Spreadsheet và Sheet
$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();
$sheet->setTitle('Thống kê đơn hàng');

// Tạo tiêu đề cột
$sheet
    ->setCellValue('A1', 'STT')
    ->setCellValue('B1', 'Tổng tiền')
    ->setCellValue('C1', 'Số điện thoại')
    ->setCellValue('D1', 'Email')
    ->setCellValue('E1', 'Địa chỉ')
    ->setCellValue('F1', 'Họ và tên')
    ->setCellValue('G1', 'Ngày đặt hàng');

// Định dạng độ rộng cột
$sheet->getColumnDimension('A')->setWidth(5);
$sheet->getColumnDimension('B')->setWidth(20);
$sheet->getColumnDimension('C')->setWidth(20);
$sheet->getColumnDimension('D')->setWidth(30);
$sheet->getColumnDimension('E')->setWidth(28);
$sheet->getColumnDimension('F')->setWidth(25);
$sheet->getColumnDimension('G')->setWidth(25);
// Ghi dữ liệu vào các hàng
$rowCount = 2;
foreach ($dataTin as $key => $value) {
    $sheet->setCellValue('A' . $rowCount, $rowCount - 1); // STT
    $sheet->setCellValue('B' . $rowCount, $value['total_order']);    // Tổng tiền
    $sheet->setCellValue('C' . $rowCount, $value['phone_order']);    // Số điện thoại
    $sheet->setCellValue('D' . $rowCount, $value['email_order']);    // Email
    $sheet->setCellValue('E' . $rowCount, $value['adress_order']);   // Địa chỉ
    $sheet->setCellValue('F' . $rowCount, $value['name_order']);     // Họ và tên
    $sheet->setCellValue('G' . $rowCount, $value['date_order']);     // Ngày đặt hàng
    $rowCount++;
}

// Xuất file Excel
$writer = new Xlsx($spreadsheet);
$filename = 'Thống kê'  . time() . '.xlsx'; // Đặt tên file dựa trên timestamp

// Thiết lập tiêu đề HTTP để tải file xuống
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment; filename="' . $filename . '"');
$writer->save('php://output');
exit;
?>