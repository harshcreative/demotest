using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Newtonsoft.Json;
    public partial class Contactx : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        [System.Web.Services.WebMethod]
        public static string f2(string gst)
        {
            
            string urls = "https://gsp.alankitgst.com/commonapi/v1.0/returns?gstin="+gst+"&fy=2022-23&type=R1&action=RETTRACK";
            var client = new HttpClient();



            client.DefaultRequestHeaders.TryAddWithoutValidation("Content-Type", "application/json");
            client.DefaultRequestHeaders.TryAddWithoutValidation("ocp-apim-subscription-key", "ALPRD9H9N3x0x6B8C8Y5");
            var result = client.GetAsync(urls);

            var t = result.Result.Content.ReadAsStringAsync();

            dynamic data = JsonConvert.DeserializeObject(t.Result.ToString());
            string d = data.data;
            return d.ToString();

            
        }
    }
