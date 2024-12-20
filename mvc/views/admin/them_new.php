<main>
    <h2>Thêm tin tức</h2>
    <form method="post" action="" enctype="multipart/form-data">
        <div class="form-group">
            <label for="email">Tiêu đề:</label>
            <input type="text" class="form-control" name="title" placeholder="Tiêu đề">
        </div>
        <div class="form-group">
            <label for="pwd">Nội dung:</label>
            <textarea class="form-control" name="content" rows="5" id="editor" placeholder="Nhập nội dung"></textarea>
        </div>
        <div class="form-group">
            <label for="pwd">Image:</label>
            <input type="file" class="form-control" name="image">
        </div>
        <div class="form-group">
            <label for="pwd">Người viết:</label>
            <input type="text" class="form-control" id="pwd" placeholder="Enter sale" name="nguoi_viet" placeholder="Nhập người viết">
        </div>
        <input type="submit" name="sua_new" value="thêm" class="btn btn-primary">
    </form>
</main>