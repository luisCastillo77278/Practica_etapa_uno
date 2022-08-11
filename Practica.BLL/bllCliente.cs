using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ProdeskNet.BD;

namespace Practica.BLL
{
    public class bllCliente
    {
        clsManejaBD DB = new clsManejaBD();
        public string Nombre { get; set; }
        public string ApPaterno { get; set; }
        public string ApMaterno { get; set; }
        public string FechaNacimiento { get; set; }

        public void ManejaCliente(int op)
        {
            try
            {
                if (op == 1)
                {
                    DB.AgregaParametro("@opcion", tipoDato: TipoDato.Entero, valor: op.ToString());
                    DB.AgregaParametro("@Nombre", tipoDato: TipoDato.Cadena, valor: this.Nombre);
                    DB.AgregaParametro("@ApPaterno", tipoDato: TipoDato.Cadena, valor: this.ApPaterno);
                    DB.AgregaParametro("@ApMaterno", tipoDato: TipoDato.Cadena, valor: this.ApMaterno);
                    DB.AgregaParametro("@FechaNacimiento", tipoDato: TipoDato.Cadena, valor: this.FechaNacimiento);

                    var dts = DB.EjecutaStoredProcedure("spManejaClientes");
                }
            }catch(Exception e)
            {
                throw e;
            }
        }
    }
}
