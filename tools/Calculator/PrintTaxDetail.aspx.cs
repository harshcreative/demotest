using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class PrintTaxDetail : System.Web.UI.Page
{
    private SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ETIConn"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvbind();
        }
    }
    protected void gvbind()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select ID,Name,Sex,Mobile,eMail, Age, Salary, HP, BP,CG,OtherSrc,GTI,Ded80C,IntHP,Ded80Others,TotDed,NTI,BasTax,SC,EC,TotTax,convert(nvarchar(10),DateEntry,103)DateEntry from tbl_taxCal order by id desc", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        conn.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            GridView1.DataSource = ds;
            GridView1.DataBind();
            int columncount = GridView1.Rows[0].Cells.Count;
            GridView1.Rows[0].Cells.Clear();
            GridView1.Rows[0].Cells.Add(new TableCell());
            GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
            GridView1.Rows[0].Cells[0].Text = "No Records Found";
        }

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lblID");
        conn.Open();
        SqlCommand cmd = new SqlCommand("delete FROM tbl_taxCal where id='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        gvbind();

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        gvbind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
       
       
        TextBox txtName = (TextBox)row.Cells[3].Controls[0];
        TextBox txtsex = (TextBox)row.Cells[4].Controls[0];
        TextBox txtmobile = (TextBox)row.Cells[5].Controls[0];
        TextBox txtemail = (TextBox)row.Cells[6].Controls[0];
        TextBox txtage = (TextBox)row.Cells[7].Controls[0];
        TextBox txtsalary = (TextBox)row.Cells[8].Controls[0];
        TextBox txthp = (TextBox)row.Cells[9].Controls[0];
        TextBox txtbp = (TextBox)row.Cells[10].Controls[0];
        TextBox txtcg = (TextBox)row.Cells[11].Controls[0];
        TextBox txtothersrc = (TextBox)row.Cells[12].Controls[0];
        TextBox txtgti = (TextBox)row.Cells[13].Controls[0];
        TextBox txtded80c = (TextBox)row.Cells[14].Controls[0];
        TextBox txtIntHP = (TextBox)row.Cells[15].Controls[0];
        TextBox txtDed80Others = (TextBox)row.Cells[16].Controls[0];
        TextBox txtTotDed = (TextBox)row.Cells[17].Controls[0];
        TextBox txtNTI = (TextBox)row.Cells[18].Controls[0];
        TextBox txtBasTax = (TextBox)row.Cells[19].Controls[0];
        TextBox txtSC = (TextBox)row.Cells[20].Controls[0];
        TextBox txtEC = (TextBox)row.Cells[21].Controls[0];
        TextBox txtTotTax = (TextBox)row.Cells[22].Controls[0];
        TextBox txtService = (TextBox)row.Cells[23].Controls[0];
        TextBox txtIPAddress = (TextBox)row.Cells[24].Controls[0];
        TextBox txtDate = (TextBox)row.Cells[25].Controls[0];        
        
        if (txtIPAddress.Text == "")
            txtIPAddress.Text = "1";
      string updateqry =  "update tbl_taxCal set name= '" + txtName.Text + "', sex='" +  txtsex.Text + "',mobile=" + txtmobile.Text + ", email='" + txtemail.Text + "',age='" + 
          
          txtage.Text + "',salary=" + txtsalary.Text + ",HP=" + txthp.Text + ", BP=" + txtbp.Text + ", CG=" + txtcg.Text + ", othersrc=" + txtothersrc.Text + ", gti = " +
          txtgti.Text + ", Ded80C="+ txtded80c.Text   +", IntHP=" + txtIntHP.Text + ", Ded80Others="+ txtDed80Others.Text + ", TotDed=" + txtTotDed.Text +
          ", NTI=" + txtNTI.Text + ", BasTax= " + txtBasTax.Text + ", SC=" + txtSC.Text + ", EC= " + txtEC.Text + ", tottax=" + txtTotTax.Text + " ,service='" + txtService.Text + "', IPAddress = " + txtIPAddress.Text + ", DateEntry = convert(date,'"+ txtDate.Text + "',103)"
          + " where id=" + id.ToString();
        
        
        //TextBox textadd = (TextBox)row.FindControl("txtadd");
        //TextBox textc = (TextBox)row.FindControl("txtc");
        GridView1.EditIndex = -1;
        conn.Open();
        //SqlCommand cmd = new SqlCommand("SELECT * FROM detail", conn);
        SqlCommand cmd = new SqlCommand(updateqry, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        gvbind();
        //GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gvbind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        gvbind();
    }
    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
        gvbind();
    }
}