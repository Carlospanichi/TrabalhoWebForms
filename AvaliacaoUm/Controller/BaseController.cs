using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AvaliacaoUm.Model;

namespace AvaliacaoUm.Controller
{
    public class BaseController
    {
        protected static BancoFerramentaBDContainer contexto = new BancoFerramentaBDContainer();
    }
}