$(document).ready(function() {
    $('.add-properties').click(function() {
        $(this).before(`<div class="card my-3 d-flex flex-row">
                            <input class="form-control" type="color" name="color[]" placeholder="Nhập màu">
                            <input class="form-control" type="text" name="size[]" placeholder="Nhập size">
                            <input class="form-control" type="number" name="number_atri[]" placeholder="Nhập số lượng">
                            <button class="btn btn-danger delete-properties" type="button">
                                detele
                            </button>
                        </div>`)
    })
    $(document).on('click','.delete-properties',function(){{
        $(this).parent().remove()
    }})
})