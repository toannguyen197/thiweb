
function DomID(id){
    return document.getElementById(id);
}

function render(id, start, end){
    var str = "";

    for (var i = start; i < end; i++){

        var ngaySinhTemp = '0' + i;
        if (i < 10){
            str += '<option value="'+ ngaySinhTemp +'">'+ ngaySinhTemp + '</option>'
            continue;
        }
        str += '<option value="'+ i +'">'+ i + '</option>'
    }

    DomID(id).innerHTML = str;
}

render('ngaySinh', 1, 32);
render('thangSinh', 1, 13);
render('namSinh', 1980, 2005);

DomID('btnSubmit').addEventListener('click', () => {
    var txtTenDangNhap = DomID('txtTenDangNhap').value;
    var txtPassword = DomID('txtMatKhau').value;
    var txtNhapLaiMatKhau = DomID('txtNhapLaiMatKhau').value;
    var txtHoTen = DomID('txtHoTen').value;
    var ngaySinh = DomID('ngaySinh').value;
    var thangSinh = DomID('thangSinh').value;
    var namSinh = DomID('namSinh').value;
    var txtEmail = DomID('txtEmail').value;
    var txtDiaChi = DomID('txtDiaChi').value;
    var txtDienThoai = DomID('txtDienThoai').value;
    var txtGender = document.getElementsByName('genderS');
    
    var gender = "";
    for (var i = 0; i < txtGender.length; i++){
        if (txtGender[i].checked){
            gender = txtGender[i].value;
        }
    }

    var objectStore = {
        hoten: txtHoTen,
        tenDangNhap: txtTenDangNhap,
        password: txtPassword,
        ngaySinh: ngaySinh + "/" + thangSinh + "/" + namSinh,
        gioiTinh: gender,
        email: txtEmail,
        diaChi: txtDiaChi,
        dienThoai: txtDienThoai
    }

    var arrStore = [];

    arrStore.push(objectStore);
    
    var str = "";

    for (var i = 0; i < arrStore.length; i++){
        str = '<label>Họ Tên Khách Hàng: ' + arrStore[i].hoten + '</label></br>' +
        '<label>Tên Đăng Nhập: ' + arrStore[i].tenDangNhap + '</label></br>' +
        '<label>Mật Khẩu: ' + arrStore[i].password + '</label></br>' +
        '<label>Ngày Sinh: ' + arrStore[i].ngaySinh + '</label></br>' +
        '<label>Giới Tính: ' + arrStore[i].gioiTinh + '</label></br>' +
        '<label>Email: ' + arrStore[i].email + '</label></br>' +
        '<label>Địa chỉ: ' + arrStore[i].diaChi + '</label></br>' +
        '<label>Điện Thoại: ' + arrStore[i].dienThoai + '</label>'
    }

    DomID('outPutSubmit').innerHTML = str;
});