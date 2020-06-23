<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Bai2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 414px">
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 2rem; margin-left: 2rem; box-shadow: 3px 3px 3px gray, -3px -3px 3px gray; width: 30rem; padding-top: 1rem;">
            <span style="background-color: rgb(246, 247, 183); color: red; padding: .5rem 1rem; width: 20rem; font-weight: bold;">Phiếu lấy ý kiến người tiêu
                dùng hãng AXB</span>
            <div class="group-Content" style="display: flex;">
                <div class="group-radio">
                    <p style="background-color: red; color: #ffffff; padding: .5rem 1rem;">Bạn hãy chọn sản phẩm: </p>
                    <input type="radio" name="product" id="mayGiat" value="Máy Giặt" runat="server" checked>Máy Giặt</br>
                    <input type="radio" name="product" id="tiVi" value="Ti Vi" runat="server">Ti vi</br>
                    <input type="radio" name="product" id="tuLanh" value="Tủ Lạnh" runat="server">Tủ Lạnh</br>
                    <input type="radio" name="product" id="dauDia" value="Đầu Đĩa DVD" runat="server">Đầu Đĩa DVD</br>
                    <input type="radio" name="product" id="lovi" value="Lò Vi Ba" runat="server">Lò Vi Ba</br>
                    <input type="radio" name="product" id="noiCom" value="Nồi Cơm Điện" runat="server">Nồi Cơm Điện</br>
                </div>
                <div class="group-checkBox" style="padding-left: 1rem;">
                    <p style="background-color: red; color: #ffffff; padding: .5rem 1rem;">Các tiêu chuẩn bình chọn:</p>
                    <input id="CheckBox1" type="checkbox" name="CheckBox1" value="Có nhiều chức năng
                        giặt" runat="server"/><label for="CheckBox1">Có nhiều chức năng
                        giặt</label></br>
                    <input id="CheckBox2" type="checkbox" name="CheckBox2" value="Cho phép nhưng giữa
                        chừng" runat="server"/><label for="CheckBox2">Cho phép nhưng giữa
                        chừng</label></br>
                    <input id="CheckBox3" type="checkbox" name="CheckBox3" value="Sấy khô đồ sau khi gặt
                        xong" runat="server"/><label for="CheckBox3">Sấy khô đồ sau khi gặt
                        xong</label></br>
                    <input id="CheckBox4" type="checkbox" value="Mẫu mã gọn và
                        đẹp" name="CheckBox4" runat="server"/><label for="CheckBox4">Mẫu mã gọn và
                        đẹp</label>
                </div>
            </div>
            <label for="lb1">Bạn chọn sản phẩm: </label><p id="txtSanPham" runat="server"></p>
            <label for="lb2">Chức năng: </label><p id="txtChucNang" runat="server"></p>
        </div>
        <p runat="server">
                <asp:Button ID="Button1" runat="server" Text="Xem kết quả bình chọn" OnClick="Button1_Click" Width="203px" />
                </p>
    </form>
</body>
</html>
