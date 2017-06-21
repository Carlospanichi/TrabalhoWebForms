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
    public partial class ListarFerramentas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CarregarGridFerramentas();

            if (!IsPostBack)
            {
                FerramentaController lc = new FerramentaController();
            }
        }

        private void CarregarGridFerramentas()
        {
            FerramentaController frc = new FerramentaController();
            List<Ferramenta> lista = frc.Listar();

            gvFerramentas.DataSource = lista.OrderBy(c => c.Matricula);
            gvFerramentas.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            FerramentaController fc = new FerramentaController();
            Ferramenta fer = fc.BuscarPorMatricula(int.Parse(txtRMatricula.Text));

            if (fer != null)
            {
                //txtRMatricula.Text = fer.Matricula;
                txtResultMatricula.Text = fer.Matricula;
                txtRDiametro.Text = fer.Diametro;
                txtRlote.Text = fer.LoteId.ToString();
                lblNExiste.Text = string.Empty;
            }
            else
            {
                lblNExiste.Text = "* Ferramenta procurada não existe!!!";
                LimparCampo();
            }
        }

        protected void ddlFerramenta_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            FerramentaController fc = new FerramentaController();
            Ferramenta fer = fc.BuscarPorMatricula(int.Parse(txtRMatricula.Text));
            if (fer != null)
            {
                fer.Matricula = txtResultMatricula.Text;
                fer.Diametro = txtRDiametro.Text;
                fer.LoteId = int.Parse(txtRlote.Text);
                fc.Editar(fer);
                lblNExiste.Text = "* Ferramenta Alterada!!!";

            }
            else
            {
                lblNExiste.Text = "* Ferramenta procurada não existe!!!";
                LimparCampo();
            }

            CarregarGridFerramentas();
           // LimparCampo();
        }

        protected void btnExcluir_Click(object sender, EventArgs e)
        {
            FerramentaController fc = new FerramentaController();
            Ferramenta fer = fc.BuscarPorMatricula(int.Parse(txtRMatricula.Text));
            if (fer != null)
            {
                txtResultMatricula.Text = fer.Matricula;
                txtRDiametro.Text = fer.Diametro;
                //Convert.ToInt32(txtRlote.Text) = fer.LoteId;
                fc.Excluir(fer);
            }
            LimparCampo();

            CarregarGridFerramentas();
        }

        private void LimparCampo()
        {
            txtResultMatricula.Text = string.Empty;
            txtRDiametro.Text = string.Empty;
            txtResultMatricula.Text = string.Empty;
            txtRlote.Text = string.Empty;
            txtRMatricula.Text = string.Empty;
        }

    }
}