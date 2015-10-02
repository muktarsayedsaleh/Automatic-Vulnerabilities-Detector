using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Xss
{
    public partial class QsSqlInjection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["p"] != null)
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM [table1] WHERE [recID] = " + Request.QueryString["p"].ToString();
                //System.IO.FileStream x = new System.IO.FileStream(Request.QueryString["p"].ToString(),System.IO.FileMode.Open);
            }
        }
    }
}