using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace Assignment
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSoure2_InsertingUpdate(object sender, SqlDataSourceCommandEventArgs e)
        {
            // if file is too big, return
if ((FUImage.PostedFile.ContentLength / 1024) > (300))
{
LPageMsg.Text = "Error uploading file: File was too big!";
LPageMsg.ForeColor = System.Drawing.Color.DarkRed;
}
try
{
// Get the file name from the FileUpload control as named on the page,
string fileName = System.IO.Path.GetFileName(FUImage.PostedFile.FileName);
// Modify the fileName by adding a time stamp right down to seconds
// This code finds the .FileType position and inserts the timestamp before the "." using
// the string Replace() method.
fileName = fileName.Replace(".", System.DateTime.Now.ToString("yyyyMMddHHmmss") + ".");
// next, get the location of the image folder to store uploaded images
// this should be the same name given to your image folder
string serverLocation = Server.MapPath("~/UserImage") + "\\" + fileName;
// set the relative reference for the uploaded file (based from root folder of application)
// This will be used in the database to locate the image file in the images folder
string relativeUrl = "~/UserImage/" + fileName;
// set the image location for the SqlDataSource
e.Command.Parameters["@ImageProfile"].Value = relativeUrl;
// save the file to the CafeImages folder
FUImage.PostedFile.SaveAs(serverLocation);
LPageMsg.Text = "Image successfully uploaded";
LPageMsg.ForeColor = System.Drawing.Color.DarkGreen;
}
catch (Exception ex)
{
LPageMsg.Text = ex.Message;
LPageMsg.ForeColor = System.Drawing.Color.DarkRed;
//Note: Exception.Message returns a detailed message that describes the current exception.
//For security reasons, we do not recommend that you return Exception.Message to end users in
//production environments. It would be better to put a generic error message.
}
} // end no file to upload or file was to big
        }

      
    }
