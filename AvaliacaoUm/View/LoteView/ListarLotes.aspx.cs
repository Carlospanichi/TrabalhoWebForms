using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AvaliacaoUm.Controller;
using AvaliacaoUm.Model;

namespace AvaliacaoUm.View.LoteView
{
    public partial class ListarLotes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoteController lc = new LoteController();
            List<Lote> lista = lc.ListarTodos();

            gvLote.DataSource = lista.OrderBy(c => c.Nome);
            gvLote.DataBind();            

        }
    }
}