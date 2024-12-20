<?php
// Import các lớp cần thiết từ PhpSpreadsheet
require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

// Khởi tạo đối tượng Spreadsheet và Sheet
$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();

// Kết nối dữ liệu
require_once "Query.php";
$query = new Query();

if (isset($_GET['export'])) {
    // Lấy danh sách dữ liệu
    $dataTin = $query->DanhSach("orders", ["total_order", "phone_order", "email_order", "adress_order", "name_order", "date_order"]);

    // Tạo tiêu đề cột
    $sheet
        ->setCellValue('A1', 'STT')
        ->setCellValue('B1', 'Tổng tiền')
        ->setCellValue('C1', 'Số điện thoại')
        ->setCellValue('D1', 'Email')
        ->setCellValue('E1', 'Địa chỉ')
        ->setCellValue('F1', 'Họ và tên')
        ->setCellValue('G1', 'Ngày đặt hàng');

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
    $filename = 'order_details_' . time() . '.xlsx'; // Đặt tên file dựa trên timestamp

    // Thiết lập tiêu đề HTTP để tải file xuống
    header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
    header('Content-Disposition: attachment; filename="' . $filename . '"');
    $writer->save('php://output');
    exit;
}
?>