using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bai2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (mayGiat.Checked)
            {
                txtSanPham.InnerHtml = mayGiat.Value;
            }
            if (tiVi.Checked)
            {
                txtSanPham.InnerHtml = tiVi.Value;
            }
            if (tuLanh.Checked)
            {
                txtSanPham.InnerHtml = tuLanh.Value;
            }
            if (dauDia.Checked)
            {
                txtSanPham.InnerHtml = dauDia.Value;
            }
            if (lovi.Checked)
            {
                txtSanPham.InnerHtml = lovi.Value;
            }
            if (noiCom.Checked)
            {
                txtSanPham.InnerHtml = noiCom.Value;
            }

            string temp = "";

            if (CheckBox1.Checked)
            {
                temp += CheckBox1.Value + "</br>";
            }
            if (CheckBox2.Checked)
            {
                temp += CheckBox2.Value + "</br>";
            }
            if (CheckBox3.Checked)
            {
                temp += CheckBox3.Value + "</br>";
            }
            if (CheckBox4.Checked)
            {
                temp += CheckBox4.Value + "</br>";
            }

            txtChucNang.InnerHtml = temp;
        }
    }
}