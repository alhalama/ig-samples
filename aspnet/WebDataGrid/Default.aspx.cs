using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable data = Session["data"] as DataTable;
        if (data == null)
        {
            Session["data"] = data = this.GetEmployees();
        }

        this.WebDataGrid1.DataSource = data;
    }

    private DataTable GetEmployees()
    {
        DataTable dtData = new DataTable("Employees");

        dtData.Columns.Add("EmployeeID", typeof(int));
        dtData.Columns.Add("Name", typeof(string));
        dtData.Columns.Add("OnSite", typeof(bool));
        dtData.Columns.Add("DateOfHire", typeof(DateTime));
        dtData.Columns.Add("Department", typeof(int));
        dtData.Columns.Add("Site", typeof(string));
        dtData.PrimaryKey = new DataColumn[] { dtData.Columns["EmployeeID"] };
        for (int i = 0; i < 24; i++)
        {
            dtData.Rows.Add(new object[] { i, string.Format("Name {0}", i), (i % 2 == 0), DateTime.Today.Date.AddDays(-1 * i), i % 8, "http://www.google.com" });
        }

        return dtData;
    }
}