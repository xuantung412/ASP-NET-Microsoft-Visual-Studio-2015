using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.Driver
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            if (e.Exception != null)
            {
                LPageMsg.Text = e.Exception.Message;
                LPageMsg.ForeColor = System.Drawing.Color.DarkRed;
                e.ExceptionHandled = true;
            }
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            if (e.Exception != null)
            {
                LPageMsg.Text = e.Exception.Message;
                LPageMsg.ForeColor = System.Drawing.Color.DarkRed;
                e.ExceptionHandled = true;
            }
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            if (e.Exception != null)
            {
                LPageMsg.Text = e.Exception.Message;
                LPageMsg.ForeColor = System.Drawing.Color.DarkRed;
                e.ExceptionHandled = true;
            }
        }
    }
}