using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

using Newtonsoft.Json;
using System.Web.Script.Serialization;


    public class Employee
    {
        public string empid { get; set; }
        public string pos { get; set; }
        public string name { get; set; }

        public string mail { get; set; }
        public string phone { get; set; }
        public string img1 { get; set; }
    }
    public partial class employeesjson : System.Web.UI.Page
    {
        public string TaxEmpId = "";
        public string TaxPos = "";
        public string TaxName = "";
        public string TaxEmailId = "";
        public string TaxPhoneNo = "";
        public string TaxProImg = "";

public string imgurl="https://www.taxmanager.in/images/bg13.jpg";

        protected void Page_Load(object sender, EventArgs e)
        {
			Session["LoginError"] = "";
            if (Request.QueryString["empid"] != null)
            {

                func(Request.QueryString["empid"]);
                msgload.Visible = false;
            }
            else {
                d1.Visible = false;
                msgload.Visible = true;
            }
        }
        public void createtable(string id, string pos1, string name1, string mail1, string phone1, string imgname1)
        {
            //empid.Value = id;
            //pos.Value = pos1;
            //name.Value = name1;
            //mail.Value = mail1;
            //phone.Value = phone1;
            //img2.ImageUrl = imgname1;

            TaxEmpId = id;
            TaxPos = pos1;
            TaxName = name1;
            TaxEmailId = mail1;
            TaxPhoneNo = phone1;
            TaxProImg = imgname1;

imgurl="https://www.taxmanager.in/other/career/Stafe/img/"+TaxProImg ;
        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            func(txt1.Text);

            var uri = new Uri(Request.Url.AbsoluteUri);
            string path = uri.GetLeftPart(UriPartial.Path);

            Response.Redirect(path + "?empid=" + txt1.Text);
        }
        public void func(string id)
        {
            using (StreamReader reader = new StreamReader(Server.MapPath("records.json")))
            {
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                List<Employee> emps = serializer.Deserialize<List<Employee>>(reader.ReadToEnd());
                IEnumerable<Employee> query1 = from num in emps where num.empid == id select num;
                int q = query1.Count();
                
                if (q == 0)
                {
                    d1.Visible = false;
                    msg.Visible = true;
                    return;
                }
                else {
                    msg.Visible = false;
                }
                foreach (var i in query1)
                {
                    createtable(i.empid,i.pos,i.name,i.mail,i.phone,i.img1);

                }

            }


            
        }
    }
