using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zad1
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                List<ListItem> list = new List<ListItem>();

                ListItem item = new ListItem();
                ListItem item1 = new ListItem();

                item.Text = "Евро";
                item1.Text = "Долар";
                item.Value = "62";
                item1.Value = "46";

                list.Add(item);
                list.Add(item1);

                ListaValuti.DataSource= list;
                ListaValuti.DataBind();
            }
        }

        protected void DodadiValuta_Click(object sender, EventArgs e)
        {
            if (ImeValuta.Text != "" && VrednostValuta.Text!="")
            {
                ListItem item = new ListItem(ImeValuta.Text, VrednostValuta.Text);

                ListaValuti.Items.Add(item);
                ImeValuta.Text = "";
                VrednostValuta.Text = "";
                Total.Text = ListaValuti.Items.Count.ToString();
            }else
            {
                Status.Text = "Полињаа мора да се пополнети";
            }

        }

        protected void BrisiValuta_Click(object sender, EventArgs e)
        {
            if (ListaValuti.SelectedIndex != -1)
            {
                ListaValuti.Items.Remove(ListaValuti.SelectedItem);
                Total.Text = ListaValuti.Items.Count.ToString();
            }
            else
            {
                Status.Text = "Немате селектирано валута";

            }
        }

        protected void ListaValuti_SelectedIndexChanged(object sender, EventArgs e)
        {
            int value = Convert.ToInt32(ListaValuti.SelectedValue);

            Status.Text = Convert.ToString(Convert.ToInt32(Vrednost.Text) * value);
        }
    }
}