<?php
session_start();
define('DB_HOST', '127.0.0.1');
define('DB_NAME', 'duan1');
define('DB_USER', 'root');
define('DB_PASS', '');

class Query {
    private $conn;

    public function __construct() {
        $servername = DB_HOST;
        $username = DB_USER;
        $password = DB_PASS;
        $dbname = DB_NAME;

        try {
            $this->conn = new PDO("mysql:host=$servername;dbname=$dbname;charset=utf8", $username, $password);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            die("Lỗi kết nối cơ sở dữ liệu: " . $e->getMessage());
        }
    }

    public function DanhSach($table, $columns) {
        $columnString = implode(", ", $columns);
        $stmt = $this->conn->prepare("SELECT $columnString FROM $table");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>