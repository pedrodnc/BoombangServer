package src.modules.login
{
   import src.allData.texts.*;
   
   public class LoginModel
   {
      
      private static const textString:String = "login";
      
      private static const textString1:String = "baseGlobo";
      
      private static const textString2:String = "baseLogin";
      
      private static const textString3:String = "baseRegistro";
      
      public var textString4:String;
      
      public var textString5:String;
      
      public var textString6:String;
      
      public var textString7:String;
      
      public var textString8:String;
      
      public var textString9:String;
      
      public var textString10:String;
      
      public var textString11:String;
      
      public var textString12:String;
      
      public var textString13:String;
      
      public var textString14:String;
      
      public var textString15:String;
      
      public var textString16:String;
      
      public var textString17:String;
      
      public var textString18:String;
      
      public var textString19:String;
      
      public var textString20:String;
      
      public var textString21:String;
      
      public var textString22:String;
      
      public var textString23:String;
      
      public var textString24:String;
      
      public var textString25:String;
      
      public var textString26:String;
      
      public var textString27:String;
      
      public var textString28:String;
      
      public var textString29:String;
      
      public var textString30:String;
      
      public var textString31:String;
      
      public var textString32:String;
      
      public var textString33:String;
      
      public var textString34:String;
      
      public var textString35:String;
      
      public var textString36:String;
      
      public var textString37:String;
      
      public var textString38:String;
      
      public var textString39:String;
      
      public var textString40:String;
      
      public var textString41:String;
      
      public var textString42:String;
      
      public var textString43:String;
      
      public var textString44:String;
      
      public var textString45:String;
      
      public var textString46:String;
      
      public var textString47:String;
      
      public var textString48:String;
      
      public var textString49:String;
      
      public var textString50:String;
      
      public var textString51:String;
      
      public var textString52:String;
      
      public var textString53:String;
      
      public var textString54:String;
      
      public var textString55:String;
      
      public var textString56:String;
      
      public var textString57:String;
      
      public var textString58:String;
      
      public var textString59:String;
      
      public var textString60:String;
      
      public var textString61:String;
      
      public var textString62:String;
      
      public var textString63:String;
      
      public var textString64:String;
      
      public var textString65:String;
      
      public var textString66:String;
      
      public var textString67:String;
      
      public var textString68:String;
      
      public var textString69:String;
      
      public var textString70:String;
      
      private var _pl15814:XML;
      
      private var _py1652:XML;
      
      private var _bk3546:XML;
      
      public function LoginModel()
      {
         super();
         this._ah13783();
         this.authenticateUser();
         this._wa13568();
         this._df13967();
         this._xf11205();
      }
      
      private function _ah13783() : void
      {
         this._pl15814 = new XML(TextManager._eo5308[textString].toXMLString());
         this._bk3546 = new XML(this._pl15814[textString1].toXMLString());
         this._py1652 = new XML(this._pl15814[textString2].toXMLString());
      }
      
      private function _xf11205() : void
      {
         this._pl15814 = null;
         this._bk3546 = null;
         this._py1652 = null;
      }
      
      private function authenticateUser() : void
      {
         this.textString6 = this._pl15814.attribute("login");
         this.textString7 = this._pl15814.attribute("nick");
         this.textString8 = this._pl15814.attribute("pass");
         this.textString9 = this._pl15814.attribute("jugar");
         this.textString10 = this._pl15814.attribute("enviar");
         this.textString11 = this._pl15814.attribute("continuar");
         this.textString12 = this._pl15814.attribute("cerrar");
         this.textString13 = this._pl15814.attribute("proximo");
         this.textString14 = this._pl15814.attribute("anterior");
         this.textString15 = this._pl15814.attribute("descNavidad");
         this.textString16 = this._pl15814.attribute("facebookBtn");
      }
      
      private function _wa13568() : void
      {
         this.textString46 = this._py1652.attribute("vincularTitle");
         this.textString47 = this._py1652.attribute("burbujaFacebook");
         this.textString49 = this._py1652.attribute("errorMenores");
         this.textString50 = this._py1652.attribute("error");
         this.textString48 = this._py1652.attribute("conectando");
         this.textString23 = this._py1652.attribute("hasOlvidadoPass");
         this.textString24 = this._py1652.attribute("daleNombre");
         this.textString25 = this._py1652.attribute("recuperarPersonaje");
         this.textString26 = this._py1652.attribute("escribeMail");
         this.textString27 = this._py1652.attribute("nombrePersonaje");
         this.textString28 = this._py1652.attribute("hemosEnviadoCodigo");
         this.textString29 = this._py1652.attribute("escribeCodigo");
         this.textString30 = this._py1652.attribute("codigoCorrecto");
         this.textString31 = this._py1652.attribute("nuevoPass");
         this.textString32 = this._py1652.attribute("escribeNuevoPass");
         this.textString33 = this._py1652.attribute("confirmaNuevoPass");
         this.textString34 = this._py1652.attribute("cuentaRecuperada");
         this.textString35 = this._py1652.attribute("maxIntentos");
         this.textString36 = this._py1652.attribute("hola");
         this.textString37 = this._py1652.attribute("vacio");
         this.textString38 = this._py1652.attribute("validarCodigo");
         this.textString39 = this._py1652.attribute("mailEnviado");
         this.textString40 = this._py1652.attribute("rememberComputer");
         this.textString41 = this._py1652.attribute("rememberPass");
         this.textString17 = this._py1652.attribute("registroTitle");
         this.textString18 = this._py1652.attribute("registroDescription");
         this.textString19 = this._py1652.attribute("recuperarTitle");
         this.textString20 = this._py1652.attribute("recuperarDescription");
         this.textString21 = this._py1652.attribute("cancelarTitle");
         this.textString22 = this._py1652.attribute("cancelarDescription");
         this.textString42 = this._py1652.attribute("advertenciaTitle");
         this.textString43 = this._py1652.attribute("advertenciaDescription");
         this.textString4 = this._py1652.attribute("avisoTitulo");
         this.textString5 = this._py1652.attribute("avisoTexto");
         this.textString44 = this._py1652.attribute("crearCuenta");
         this.textString45 = this._py1652.attribute("descCrearCuenta");
      }
      
      private function _df13967() : void
      {
         this.textString51 = this._bk3546.attribute("hasOlvidadoPass");
         this.textString52 = this._bk3546.attribute("recuperar");
         this.textString53 = this._bk3546.attribute("verificando");
         this.textString54 = this._bk3546.attribute("verificalo");
         this.textString55 = this._bk3546.attribute("usuarioInexistente");
         this.textString56 = this._bk3546.attribute("yaEstasDentro");
         this.textString57 = this._bk3546.attribute("operacionIncompleta");
         this.textString58 = this._bk3546.attribute("mailIncorrecto");
         this.textString59 = this._bk3546.attribute("camposVacios");
         this.textString60 = this._bk3546.attribute("codigoIncorrecto");
         this.textString61 = this._bk3546.attribute("reingresoCodigo");
         this.textString62 = this._bk3546.attribute("codigoTardar");
         this.textString63 = this._bk3546.attribute("noCodigo");
         this.textString64 = this._bk3546.attribute("piensaPassDiferente");
         this.textString65 = this._bk3546.attribute("passDesigual");
         this.textString66 = this._bk3546.attribute("probarNewPass");
         this.textString67 = this._bk3546.attribute("enviamosMailConPass");
         this.textString68 = this._bk3546.attribute("minimoLargoPass");
         this.textString69 = this._bk3546.attribute("passFacil");
         this.textString70 = this._bk3546.attribute("yingo");
      }
   }
}

