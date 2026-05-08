using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Configuration;
using System.IO;

public partial class WebForm1x : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       /* HttpContext.Current.Response.AddHeader("Access-Control-Allow-Origin", "*");*/
    }
/*
    // GSTIN Search Api
    [WebMethod]
    public static string f2(string gstindata)
    {
        // Deserialize the incoming JSON data
        dynamic requestData = JsonConvert.DeserializeObject(gstindata);

         Extract required parameters
        string gstinsearch = requestData.gstinsearch;
        string gstPublicApisURl = requestData.gstPublicApisURl;
        string getSearch = requestData.getSearch;
        string subscriptionKey = requestData.subscriptionKey; 

        using (var client = new HttpClient())
        {
            client.DefaultRequestHeaders.TryAddWithoutValidation("Content-Type", "application/json");
             client.DefaultRequestHeaders.TryAddWithoutValidation("ocp-apim-subscription-key", "ALPRD9H9N3x0x6B8C8Y5");
            var result = client.GetAsync("https://gsp.alankitgst.com/commonapi/v1.1/search?gstin=07AADCR6832P2ZS&action=TP");
          // Read the response content
            var content = result.Content.ReadAsStringAsync().Result;
            // Deserialize the response content
            dynamic responseData = JsonConvert.DeserializeObject(content);
            // Extract the 'data' property
            string responseDataString = responseData.data;

            return responseDataString;
        }
    }
*/

    // Form Contac Us Section
    [System.Web.Services.WebMethod]
    public static string GetCurrentTime(string uname, string umail, string umob, string ddl, string msg, string page)
    {
        string instqry = "insert into tbl_msg_box(uname,umail,umob,ddl_option,umsg,pagename) values('" + uname + "','" + umail + "','" + umob + "','" + ddl + "','" + msg + "','" + page + "')";
        using (SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["ETIConn"].ToString()))
        {
            scon.Open();
            using (SqlCommand scmd = new SqlCommand(instqry, scon))
            {
                scmd.CommandType = CommandType.Text;
                scmd.ExecuteNonQuery();
            }
            scon.Close();
        }
        try
        {

        }
        catch (Exception ex)
        {
            return "error";
        }
        return "Data Saved Successfully";
    }

}
