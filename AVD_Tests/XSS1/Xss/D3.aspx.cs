using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Xss
{
    public partial class D3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["msg"] != null)
            {
                Label1.Text = Server.HtmlEncode(Request.QueryString["msg"].ToString());
            }
        }
    }
}