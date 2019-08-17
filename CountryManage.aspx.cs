using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//data table and data set
using System.Data;

//sql classes
using System.Data.SqlClient;
using System.Configuration;

namespace CorporateTraining
{
    public partial class CountryManage : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Visible = false;
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connStr"].ConnectionString);

            if(!IsPostBack)
            {
                LoadData();
            }

        }
        public void LoadData() {

            SqlDataAdapter adp = new SqlDataAdapter("Select * from CountryMaster", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);

            gridCountry.DataSource = dt;
            gridCountry.DataBind();

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            lblMessage.Visible = true;
            try
            {
                conn.Open();
                SqlCommand command = new SqlCommand("CountryInsert", conn);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.AddWithValue("@CName", txtCountryName.Text);
                command.Parameters.AddWithValue("@CCode", txtCountryCode.Text);
                command.Parameters.AddWithValue("@IsE", isEnabled.Checked==true?1:0);
                command.ExecuteNonQuery();
                lblMessage.InnerText = "Country Details Saved!";

            }
            catch (Exception ex)
            {
                lblMessage.InnerText = "Error:" + ex.Message;
                
            }
            finally
            {
                conn.Close();
            }
        }
    }
}