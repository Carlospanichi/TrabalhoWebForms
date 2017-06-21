using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AvaliacaoUm.Controller;
using AvaliacaoUm.Model;

namespace AvaliacaoUm.View.FerramentaView
{
    public partial class FerramentaV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoteController lc = new LoteController();
                ddlLote.DataSource = lc.ListarTodos();
                ddlLote.DataBind();
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Ferramenta f = new Ferramenta();
            f.Matricula = txtMatricula.Text;
            f.Diametro = txtDiametro.Text;
            f.LoteId = int.Parse(ddlLote.SelectedValue);

            FerramentaController fer = new FerramentaController();
            fer.Adicionar(f);

            txtMatricula.Text = "";
            txtDiametro.Text = "";
        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            txtMatricula.Text = "";
            txtDiametro.Text = "";
            
        }
    }
}