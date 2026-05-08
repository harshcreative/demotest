using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


    public partial class ClientVerify : System.Web.UI.Page
    {
         public bool verified = false;
        protected void Page_Load(object sender, EventArgs e)
        {
try{
Session["LoginError"] = "";
Session["CheckFile"] ="";Session["memberid"] ="";
            if(!IsPostBack)
            {
                if (Request.QueryString["cid"] != null)
                {
                    DataTable dt = new DataTable();
                    using (SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["ETIConn"].ToString()))
                    {
                        scon.Open();
                        using (SqlCommand scmd = new SqlCommand("select * from tbl_Client_Verfication where umail = '" + Request.QueryString["cid"] + "'", scon))
                        {

                            scmd.CommandType = CommandType.Text;

                            SqlDataAdapter sda = new SqlDataAdapter(scmd);
                            sda.Fill(dt);
                            uid.Value = dt.Rows[0][1].ToString();
                            uname.Value = dt.Rows[0][2].ToString();
                            umail.Value = dt.Rows[0][3].ToString();
                            uphone.Value = dt.Rows[0][4].ToString();
							if(dt.Rows[0][5].ToString()=="True"){phoneverified.Checked=true;}
							if(dt.Rows[0][6].ToString()=="True"){mailverified.Checked=true;}
                            			    
											
											
											if (mailverified.Checked == true)
                                mailverified.Enabled = false;
                            else
                                mailverified.Enabled = true;

                            if (phoneverified.Checked == true)
                                phoneverified.Enabled = false;
                            else
                                phoneverified.Enabled = true;

                            if (phoneverified.Checked == true || mailverified.Checked == true)
                                verified = true;
                            else
                                verified = false;

                        }
                        scon.Close();
                    }
                }
            }
}catch (Exception ex){}
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string randomid = "";
            if (Request.QueryString["cid"] != null)
                randomid = Request.QueryString["cid"];
            
            
            string name = uname.Value;
            string phone = uphone.Value;
            string mail = umail.Value;

            string mail2 = umail2.Value;
            string phone2 = uphone2.Value;
            var mailver = mailverified.Checked ? 1 : 0;
            var phonever = phoneverified.Checked ? 1 : 0;


            using (SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["ETIConn"].ToString()))
            {
                scon.Open();
                using (SqlCommand scmd = new SqlCommand("update tbl_Client_Verfication set [updatedate]=getdate(), [verifiedphone]=" + phonever + ", [verifiedmail] =" + mailver + " where [randomid] ='"+ uid.Value.ToString()+"'", scon))
                {

                    scmd.CommandType = CommandType.Text;
                    scmd.ExecuteNonQuery();


                }
                using (SqlCommand scmd = new SqlCommand("insert into tbl_Client_New_Details([randomid] ,[umail] ,[uphone],[insertdate] ) values('" + uid.Value.ToString() + "','"+ mail2+"','"+ phone2+"',getdate())", scon))
                {

                    scmd.CommandType = CommandType.Text;
                    scmd.ExecuteNonQuery();


                }
                scon.Close();
            }
            Response.Redirect("https://taxmanager.in");
        }
    }
