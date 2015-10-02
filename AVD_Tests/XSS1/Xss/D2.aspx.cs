using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Xss
{
    public partial class D2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString["msg"] != null)
                {
                    Label1.Text = Request.QueryString["msg"].ToString();
                }

            }
            catch (HttpRequestValidationException)
            {
                if (Request.QueryString["msg"] != null)
                {
                    Label1.Text = Request.QueryString["msg"].ToString();
                }
            }
        }
    }
}