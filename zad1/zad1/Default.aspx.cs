using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zad1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PrikaziGrad_Click(object sender, EventArgs e)
        {
            ListItem selected = ListaGradovi.SelectedItem;
            SelektiranGrad.Text = selected.Text;

        }

        protected void SelektiranGrad1_DataBinding(object sender, EventArgs e)
        {
            ListItem selectedItem = Gradovi.SelectedItem;
            SelektiranGrad1.Text = selectedItem.Text;
            Odalecenost.Text = selectedItem.Value;
        }

        protected void Selektirani_Gradovi(object sender, EventArgs e)
        {
            TekstZaPrikazuvanje.Text = "";
            ListItemCollection selectedItems = Cities.Items;
            foreach (ListItem item in selectedItems)
            {
                if (item.Selected)
                {
                    TekstZaPrikazuvanje.Text +="<br/>"+ item.Text;
                }
            }
        }
    }
}