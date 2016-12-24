using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Recruiter_JobPosting_frmRecruiterJobOpeningdetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    String connectionString = ConfigurationManager.ConnectionStrings["CareerPathConnectionString"].ConnectionString;
    JobTypeBL jobtype = new JobTypeBL();
    FunctionalAreaBL role = new FunctionalAreaBL();
    QualificationBL qual = new QualificationBL();
    RecruiterJobOpeningAndOtherDetail jobopen = new RecruiterJobOpeningAndOtherDetail();
    CityBL city = new CityBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/frmRecruiterLogin.aspx");
        }
        if (!IsPostBack)
        {
            BindData();
        }

    }
    private void BindData()
    {
        ddlLocation.DataSource = city.ShowAllCity();
        ddlLocation.DataTextField = "CityName";
        ddlLocation.DataBind();
        ddlLocation.Items.Insert(0, "---Select---");

        ddlJobType.DataSource = jobtype.ShowJobType();
        ddlJobType.DataTextField = "JobType";
        ddlJobType.DataBind();
        ddlJobType.Items.Insert(0, "---Select---");

        ddlFunctionalArea.DataSource = role.ShowFunctionalArea();
        ddlFunctionalArea.DataTextField = "FunctionalArea";
        ddlFunctionalArea.DataBind();
        ddlFunctionalArea.Items.Insert(0, "---Select---");

        ddlQualification.DataSource = qual.ShowQualification();
        ddlQualification.DataTextField = "Qualification";
        ddlQualification.DataBind();
        ddlQualification.Items.Insert(0, "---Select---");
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            sendNotification();
            jobopen.UserName = Session["UserName"].ToString();
            jobopen.JobID = txtJobId.Text.Trim();
            jobopen.JobCategory = ddlJobType.SelectedItem.Text;
            jobopen.SkillsRequired = txtSkills.Text.Trim();
            jobopen.Role = ddlFunctionalArea.SelectedItem.Text;
            jobopen.MinimumQualification = ddlQualification.SelectedItem.Text;
            jobopen.MaximumAge = int.Parse(txtAge.Text.Trim());
            jobopen.ExperienceYears = int.Parse(txtExperience.Text.Trim());
            jobopen.ExpectedSalary = Convert.ToDecimal(txtExpectedSalary.Text.Trim());
            jobopen.JobLocation = ddlLocation.SelectedItem.Text.Trim();
            jobopen.JobOpeningDate = GMDatePicker1.Date.Date;
            jobopen.JobClosingDate = GMDatePicker2.Date.Date;
            jobopen.JobDescription = txtDescription.Text.Trim();
            jobopen.InsertJobOpeningDetails();
            lblMsg.Text = "Inserted...!";
            }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            
        }
    }

    private void sendNotification()
    {
        DataTable dtEmail = Eas(ddlJobType.SelectedItem.Text);
        for (int i = 0; i < dtEmail.Rows.Count; i++)
        {
            SendEmail(dtEmail.Rows[i][0].ToString());
        }
    }

    private void SendEmail(string mailTo)
    {
        try
        {
            string MailAdd, MailPwd;
            MailAdd = "siddiquimauzzam@gmail.com";
            MailPwd = "mauzzam786";
            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add(mailTo);
            mail.From = new System.Net.Mail.MailAddress(MailAdd);
            mail.Subject = "Matching Jobs For You";
            mail.Body = "JobName" + "  " + txtJobId.Text.ToString() + "    " + "Skills" + "  " + txtSkills.Text.Trim().ToString() + "    " + "Qualification:" + "  " + ddlQualification.Text.Trim().ToString() + "    " + "Location" + "  " + ddlLocation.Text.Trim().ToString() +"  " ;
            mail.CC.Add(MailAdd);
            mail.IsBodyHtml = false;
            System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("smtp.gmail.com");
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential(MailAdd, MailPwd);
            smtp.EnableSsl = true;
            smtp.Port = 587;
            smtp.Send(mail);
            Response.Write("succ");
        }
        catch
        {
            Response.Write("Fail");
        }
    }

    public DataTable Eas(string JobType)
    {


        DataTable dt = new DataTable();
        con.ConnectionString = connectionString;
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = new SqlCommand("ProSendmail", con);
        da.SelectCommand.Parameters.AddWithValue("@JobType", JobType);
        da.SelectCommand.Parameters.AddWithValue("@Flag", "sendEmail");
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.ExecuteNonQuery();
        da.Fill(dt);
        con.Close();
        return dt;
    }

    protected void txtJobName_TextChanged(object sender, EventArgs e)
    {

    }
}
