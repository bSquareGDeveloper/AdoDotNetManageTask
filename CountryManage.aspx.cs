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

using BusinessObjectLayer;
using PropertyObjects;

namespace CorporateTraining
{
    public partial class CountryManage : System.Web.UI.Page
    {
        CountryMaster fields = new CountryMaster();
        CountryBusinessLogic CountryObj = new CountryBusinessLogic();
        //        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Visible = false;
            //conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connStr"].ConnectionString);

            if (!IsPostBack)
            {
                LoadData();
            }

        }
        public void LoadData()
        {

            //SqlDataAdapter adp = new SqlDataAdapter("Select * from CountryMaster", conn);
            //DataTable dt = new DataTable();
            //adp.Fill(dt);

            //gridCountry.DataSource = dt;
            //gridCountry.DataBind();

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            lblMessage.Visible = true;

            fields = new CountryMaster()
            {
                _CountryCode = txtCountryCode.Text,
                _CountryName = txtCountryName.Text,
                _IsCountryEnabled = isEnabled.Checked
            };
            lblMessage.InnerText = CountryObj.AddCountry(fields);

            LoadData();

        }
    }
}