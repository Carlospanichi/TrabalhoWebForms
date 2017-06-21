using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AvaliacaoUm.Model;

namespace AvaliacaoUm.Controller
{
    public class LoteController : BaseController
    {
        public void Adicionar(Lote lote)
        {
            if (lote != null)
            {
                contexto.Lotes.Add(lote);
                contexto.SaveChanges();
            }
        }

        internal List<Lote> ListarTodos()
        {
            return contexto.Lotes.ToList();
        }
    }
}