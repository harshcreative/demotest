using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.NetworkInformation;
using System.Text.RegularExpressions;

public partial class TaxCalculator : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static string Process(string fields)
    {
       
        SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["ETIConn"].ToString());
        scon.Open();
        SqlCommand scmd = new SqlCommand();
        scmd.CommandText = "insert into tbl_TaxCal(Name,Sex,Mobile,eMail, Age, Salary, HP, BP,CG,OtherSrc,GTI,Ded80C,IntHP,Ded80Others,TotDed,NTI,BasTax,SC,EC,TotTax) values('" + fields + ")";
        scmd.CommandType = CommandType.Text;
        scmd.Connection = scon;
        scmd.ExecuteNonQuery();
        scmd.CommandText = "SELECT top 1 id from tbl_taxcal order by id desc";
        scmd.CommandType = CommandType.Text;
        SqlDataAdapter sda = new SqlDataAdapter(scmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        scon.Close();

        return dt.Rows[0][0].ToString();
    }

    [WebMethod]
    public static string UpdateData(string fields)
    {
        if (fields != "")
        {
            SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["ETIConn"].ToString());
            scon.Open();
            SqlCommand scmd = new SqlCommand();

            string[] fieldparts = fields.Split(',');

            string query = "update tbl_TaxCal set Name='" + fieldparts[0] + " ,Sex = " + fieldparts[1] + " ,Mobile = " + fieldparts[2] + ",eMail= " + fieldparts[3] + ", Age = " + fieldparts[4] + ", Salary = " + fieldparts[5] + ", HP = " + fieldparts[6] + ", BP=" + fieldparts[7] + ",CG = " + fieldparts[8]
                + ",OtherSrc = " + fieldparts[9] + ",GTI = " + fieldparts[10] + ",Ded80C = " + fieldparts[11] + ",IntHP = " + fieldparts[12] + ",Ded80Others = " + fieldparts[13]
                + ",TotDed=" + fieldparts[14] + ",NTI = " + fieldparts[15] + ",BasTax = " + fieldparts[16] + ",SC = " + fieldparts[17] + ",EC = " + fieldparts[18] + ",TotTax = " + fieldparts[19]
                + " where id = " +  fieldparts[20];

            scmd.CommandText = query;
            scmd.CommandType = CommandType.Text;
            scmd.Connection = scon;
            scmd.ExecuteNonQuery();
            scon.Close();
        }
        return "Successfully Updated";
    }
   
}