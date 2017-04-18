using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void send_Mail(object sender, EventArgs e)
    {
        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        client.Host = "smtp.gmail.com";
        client.Port = 587;

        // setup Smtp authentication
        System.Net.NetworkCredential credentials =
            new System.Net.NetworkCredential("#####", "####");
        client.UseDefaultCredentials = false;
        client.Credentials = credentials;

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("#######");
        msg.To.Add(new MailAddress("#######"));

        msg.Subject = "Message from Usher website user";
        msg.IsBodyHtml = true;
        msg.Body = string.Format(
                                 "<html><head></head><body><b> Mail From : " + String.Format("{0}", mail.Text) +
                                 "<br/> Name    : " + String.Format("{0}", name.Text) +
                                 "<br/> Phone Number    : " + String.Format("{0}", phone.Text) +
                                 "<br/> Message :   " + String.Format("{0}", comment.Text) +
                                 "</b></body>"
                                 );

        if (email_attachment.FileContent != null)
            msg.Attachments.Add(new Attachment(email_attachment.FileContent, System.IO.Path.GetFileName(email_attachment.FileName)));

        try
        {
            client.Send(msg);
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "clentscript", "alert('Message Sent'); parent.location.href='Contact.aspx'", true);

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error Occured, please try again !')", true);
        }

    }

}
