using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ASPxGridView1.DataSource = Enumerable.Range(0, 10).Select(i => new { Col1 = i, Col2 = i*2});
        ASPxGridView1.DataBind();
    }
}