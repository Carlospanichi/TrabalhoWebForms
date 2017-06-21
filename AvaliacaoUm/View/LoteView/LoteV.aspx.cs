using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AvaliacaoUm.Model;
using AvaliacaoUm.Controller;

namespace AvaliacaoUm.View.LoteView
{
    public partial class LoteV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Lote l = new Lote();
            l.Nome = txtNome.Text;
            l.Descricao = txtDescricao.Text;

            LoteController lo = new LoteController();
            lo.Adicionar(l);

            txtNome.Text = "";
            txtDescricao.Text = "";
        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            txtNome.Text = "";
            txtDescricao.Text = "";
        }
    }
}