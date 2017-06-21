using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AvaliacaoUm.Model;

namespace AvaliacaoUm.Controller
{
    public class FerramentaController : BaseController
    {
        public void Adicionar(Ferramenta ferramenta)
        {
            if (ferramenta != null)
            {
                contexto.Ferramentas.Add(ferramenta);
                contexto.SaveChanges();
            }
        }
        public List<Ferramenta> Listar()
        {
            return contexto.Ferramentas.ToList();
        }

        public Ferramenta BuscarPorMatricula(int Matricula)
        {
            return contexto.Ferramentas.Find(Matricula);
        }

        public void Excluir(Ferramenta ferramenta)
        {
            contexto.Entry(ferramenta).State = System.Data.Entity.EntityState.Deleted;
            contexto.SaveChanges();
        }
        public void Editar(Ferramenta ferramenta)
        {
            contexto.Entry(ferramenta).State = System.Data.Entity.EntityState.Modified;
            contexto.SaveChanges();
        }
        internal List<Ferramenta> ListarTodos()
        {
            return contexto.Ferramentas.ToList();
        }

        public Ferramenta BuscarFerramentaPorMatricula(Ferramenta ferramenta)
        {
            return contexto.Ferramentas.FirstOrDefault(m => m.Matricula.Equals(ferramenta.Matricula));
        }

    }
}