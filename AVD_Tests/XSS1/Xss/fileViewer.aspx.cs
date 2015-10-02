using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Xss
{
    public partial class fileViewer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["fileName"] != null)
            {
                System.IO.FileStream x;
                if (Request.QueryString["fileName"].ToString().StartsWith("file"))
                {
                     x = new System.IO.FileStream(Server.MapPath(Request.QueryString["fileName"].ToString()), System.IO.FileMode.Open);
                }
                else
                {
                    x = new System.IO.FileStream(Request.QueryString["fileName"].ToString(), System.IO.FileMode.Open);
                }
                StreamReader s = new StreamReader(x);
                TextBox1.Text=s.ReadToEnd();
            }
        }
    }
}