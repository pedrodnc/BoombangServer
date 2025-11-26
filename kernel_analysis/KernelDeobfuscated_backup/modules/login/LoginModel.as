package src.modules.login
{
   import src.allData.texts.*;
   
   public class _wi878
   {
      
      private static const _tf1047:String = "login";
      
      private static const _ep9142:String = "baseGlobo";
      
      private static const _qg15402:String = "baseLogin";
      
      private static const _xu64:String = "baseRegistro";
      
      public var _ch3961:String;
      
      public var _hv2673:String;
      
      public var _kx13602:String;
      
      public var _uk6127:String;
      
      public var _db14441:String;
      
      public var _fj14617:String;
      
      public var _go1770:String;
      
      public var _hd4822:String;
      
      public var _ml4044:String;
      
      public var _wb5791:String;
      
      public var _yj9637:String;
      
      public var _db13727:String;
      
      public var _dl11418:String;
      
      public var _va4320:String;
      
      public var _ld9813:String;
      
      public var _il5425:String;
      
      public var _sc1959:String;
      
      public var _cu2072:String;
      
      public var _pt65:String;
      
      public var _ub1879:String;
      
      public var _vj5760:String;
      
      public var _xj9125:String;
      
      public var _ji12688:String;
      
      public var _jc9940:String;
      
      public var _nf8348:String;
      
      public var _bn7174:String;
      
      public var _sg6366:String;
      
      public var _li4011:String;
      
      public var _mr4033:String;
      
      public var _ii3333:String;
      
      public var _bn12565:String;
      
      public var _sk5126:String;
      
      public var _en4425:String;
      
      public var _xp13169:String;
      
      public var _qd3764:String;
      
      public var _kc16044:String;
      
      public var _wq13862:String;
      
      public var _mc13887:String;
      
      public var _wd14697:String;
      
      public var _mx576:String;
      
      public var _fd1531:String;
      
      public var _yb5731:String;
      
      public var _vd8517:String;
      
      public var _cq7572:String;
      
      public var _wk4361:String;
      
      public var _tc8552:String;
      
      public var _ss4773:String;
      
      public var _tn14774:String;
      
      public var _uh3236:String;
      
      public var _yb3488:String;
      
      public var _xu13916:String;
      
      public var _sr2088:String;
      
      public var _br14083:String;
      
      public var _hw705:String;
      
      public var _an6163:String;
      
      public var _ja14658:String;
      
      public var _rb8828:String;
      
      public var _dy15982:String;
      
      public var _ok224:String;
      
      public var _su9670:String;
      
      public var _xo3620:String;
      
      public var _ak15699:String;
      
      public var _yl11812:String;
      
      public var _rh6376:String;
      
      public var _ty6212:String;
      
      public var _dr14194:String;
      
      public var _bx55:String;
      
      private var _pl15814:XML;
      
      private var _py1652:XML;
      
      private var _bk3546:XML;
      
      public function _wi878()
      {
         super();
         this._ah13783();
         this._rl5177();
         this._wa13568();
         this._df13967();
         this._xf11205();
      }
      
      private function _ah13783() : void
      {
         this._pl15814 = new XML(_yh6510._eo5308[_tf1047].toXMLString());
         this._bk3546 = new XML(this._pl15814[_ep9142].toXMLString());
         this._py1652 = new XML(this._pl15814[_qg15402].toXMLString());
      }
      
      private function _xf11205() : void
      {
         this._pl15814 = null;
         this._bk3546 = null;
         this._py1652 = null;
      }
      
      private function _rl5177() : void
      {
         this._kx13602 = this._pl15814.attribute("login");
         this._uk6127 = this._pl15814.attribute("nick");
         this._db14441 = this._pl15814.attribute("pass");
         this._fj14617 = this._pl15814.attribute("jugar");
         this._go1770 = this._pl15814.attribute("enviar");
         this._hd4822 = this._pl15814.attribute("continuar");
         this._ml4044 = this._pl15814.attribute("cerrar");
         this._wb5791 = this._pl15814.attribute("proximo");
         this._yj9637 = this._pl15814.attribute("anterior");
         this._db13727 = this._pl15814.attribute("descNavidad");
         this._dl11418 = this._pl15814.attribute("facebookBtn");
      }
      
      private function _wa13568() : void
      {
         this._vd8517 = this._py1652.attribute("vincularTitle");
         this._cq7572 = this._py1652.attribute("burbujaFacebook");
         this._tc8552 = this._py1652.attribute("errorMenores");
         this._ss4773 = this._py1652.attribute("error");
         this._wk4361 = this._py1652.attribute("conectando");
         this._ub1879 = this._py1652.attribute("hasOlvidadoPass");
         this._vj5760 = this._py1652.attribute("daleNombre");
         this._xj9125 = this._py1652.attribute("recuperarPersonaje");
         this._ji12688 = this._py1652.attribute("escribeMail");
         this._jc9940 = this._py1652.attribute("nombrePersonaje");
         this._nf8348 = this._py1652.attribute("hemosEnviadoCodigo");
         this._bn7174 = this._py1652.attribute("escribeCodigo");
         this._sg6366 = this._py1652.attribute("codigoCorrecto");
         this._li4011 = this._py1652.attribute("nuevoPass");
         this._mr4033 = this._py1652.attribute("escribeNuevoPass");
         this._ii3333 = this._py1652.attribute("confirmaNuevoPass");
         this._bn12565 = this._py1652.attribute("cuentaRecuperada");
         this._sk5126 = this._py1652.attribute("maxIntentos");
         this._en4425 = this._py1652.attribute("hola");
         this._xp13169 = this._py1652.attribute("vacio");
         this._qd3764 = this._py1652.attribute("validarCodigo");
         this._kc16044 = this._py1652.attribute("mailEnviado");
         this._wq13862 = this._py1652.attribute("rememberComputer");
         this._mc13887 = this._py1652.attribute("rememberPass");
         this._va4320 = this._py1652.attribute("registroTitle");
         this._ld9813 = this._py1652.attribute("registroDescription");
         this._il5425 = this._py1652.attribute("recuperarTitle");
         this._sc1959 = this._py1652.attribute("recuperarDescription");
         this._cu2072 = this._py1652.attribute("cancelarTitle");
         this._pt65 = this._py1652.attribute("cancelarDescription");
         this._wd14697 = this._py1652.attribute("advertenciaTitle");
         this._mx576 = this._py1652.attribute("advertenciaDescription");
         this._ch3961 = this._py1652.attribute("avisoTitulo");
         this._hv2673 = this._py1652.attribute("avisoTexto");
         this._fd1531 = this._py1652.attribute("crearCuenta");
         this._yb5731 = this._py1652.attribute("descCrearCuenta");
      }
      
      private function _df13967() : void
      {
         this._tn14774 = this._bk3546.attribute("hasOlvidadoPass");
         this._uh3236 = this._bk3546.attribute("recuperar");
         this._yb3488 = this._bk3546.attribute("verificando");
         this._xu13916 = this._bk3546.attribute("verificalo");
         this._sr2088 = this._bk3546.attribute("usuarioInexistente");
         this._br14083 = this._bk3546.attribute("yaEstasDentro");
         this._hw705 = this._bk3546.attribute("operacionIncompleta");
         this._an6163 = this._bk3546.attribute("mailIncorrecto");
         this._ja14658 = this._bk3546.attribute("camposVacios");
         this._rb8828 = this._bk3546.attribute("codigoIncorrecto");
         this._dy15982 = this._bk3546.attribute("reingresoCodigo");
         this._ok224 = this._bk3546.attribute("codigoTardar");
         this._su9670 = this._bk3546.attribute("noCodigo");
         this._xo3620 = this._bk3546.attribute("piensaPassDiferente");
         this._ak15699 = this._bk3546.attribute("passDesigual");
         this._yl11812 = this._bk3546.attribute("probarNewPass");
         this._rh6376 = this._bk3546.attribute("enviamosMailConPass");
         this._ty6212 = this._bk3546.attribute("minimoLargoPass");
         this._dr14194 = this._bk3546.attribute("passFacil");
         this._bx55 = this._bk3546.attribute("yingo");
      }
   }
}

