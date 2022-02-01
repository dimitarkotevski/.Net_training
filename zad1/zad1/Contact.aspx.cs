using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zad1
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            boja.Items.Add(new ListItem("Green"));
            boja.Items.Add(new ListItem("Red"));
            boja.Items.Add(new ListItem("Blue"));

            Font.Items.Add(new ListItem("Ariel"));
            Font.Items.Add(new ListItem("Times New Roman"));
            Font.Items.Add(new ListItem("Courier"));


            ColorFont.Items.Add(new ListItem("Red"));
            ColorFont.Items.Add(new ListItem("Green"));
            ColorFont.Items.Add(new ListItem("Blue"));


            BorderType.Items.Add(new ListItem(BorderStyle.None.ToString(),((int)BorderStyle.None).ToString()));
            BorderType.Items.Add(new ListItem(BorderStyle.Solid.ToString(), ((int)BorderStyle.Solid).ToString()));


        }

        protected void Save_Click(object sender, EventArgs e)
        {
            Poraka.Text = ShortText.Text;
            Poraka.Font.Name = Font.SelectedItem.Text;

            int size;
            var success = Int32.TryParse(FontSize.Text, out size);

            if (success)
            {
                Poraka.Font.Size = size;

            }

            Cestitka.BackColor = Color.FromName(boja.SelectedItem.Text);
        }
    }
}