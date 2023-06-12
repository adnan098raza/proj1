using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace StudentMaterialBoard
{
    public partial class MaterialDeactive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        public void LoadData()
        {
            try
            {
                MyConnection obj = new MyConnection();
                DataTable tab = obj.GetMaterial_DeptId(Session["UserId"].ToString());
                Table1.Controls.Clear();
                if (tab.Rows.Count > 0)
                {
                    lblMsg.Text = "";
                    TableRow hr = new TableRow();
                    TableHeaderCell hc1 = new TableHeaderCell();
                    TableHeaderCell hc2 = new TableHeaderCell();
                    TableHeaderCell hc3 = new TableHeaderCell();

                    hc1.Text = "Material Name";
                    hr.Cells.Add(hc1);
                    hc2.Text = "Upload Date";
                    hr.Cells.Add(hc2);
                    hc3.Text = "";
                    hr.Cells.Add(hc3);


                    Table1.Rows.Add(hr);
                    for (int i = 0; i < tab.Rows.Count; i++)
                    {
                        TableRow row = new TableRow();

                        Label lblName = new Label();
                        lblName.Text = tab.Rows[i]["MaterialName"].ToString();
                        TableCell Name = new TableCell();
                        Name.Controls.Add(lblName);

                        Label lblUploadDate = new Label();
                        lblUploadDate.Text = tab.Rows[i]["UploadDate"].ToString();
                        TableCell UploadDate = new TableCell();
                        UploadDate.Controls.Add(lblUploadDate);



                        LinkButton Delete = new LinkButton();
                        Delete.Text = "Delete";
                        Delete.ID = "lnkDelete" + i.ToString();
                        Delete.CommandArgument = tab.Rows[i]["MMId"].ToString();
                        Delete.Click += new EventHandler(Delete_Click);
                        TableCell DeleteCell = new TableCell();
                        DeleteCell.Controls.Add(Delete);


                        row.Controls.Add(Name);
                        row.Controls.Add(UploadDate);
                        row.Controls.Add(DeleteCell);
                        Table1.Controls.Add(row);

                    }
                }
                else
                {
                    lblMsg.Text = "No Record Found";
                }
            }
            catch
            {

            }
        }

        void Delete_Click(object sender, EventArgs e)
        {
            //throw new NotImplementedException();
            LinkButton lnk = (LinkButton)sender;
            MyConnection obj = new MyConnection();
            int MMId = int.Parse(lnk.CommandArgument);
            string result = obj.MaterialDeactive(MMId);
            if (result == "1")
            {
                Response.Redirect("MaterialDeactive.aspx");
            }
        }

    }
}