package src.modules.bpad
{
   import src.allData.texts.*;
   
   public class BpadModel
   {
      
      private static const textString:String = "bpad";
      
      public var textString1:String;
      
      public var textString2:String;
      
      public var textString3:String;
      
      public var textString4:String;
      
      public var textString5:String;
      
      public var textString6:String;
      
      public var count:String;
      
      public var textString8:String;
      
      public var textString9:String;
      
      public var textString10:String;
      
      public var textString1:String;
      
      public var textString12:String;
      
      public var textString13:String;
      
      public var textString2:String;
      
      public var textString3:String;
      
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
      
      public var textString2:String;
      
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
      
      public var textString3:String;
      
      public var textString48:String;
      
      public var textString49:String;
      
      public var textString50:String;
      
      public var VOLVER:String;
      
      public var textString51:String;
      
      public var textString52:String;
      
      public var textString53:String;
      
      public var textString54:String;
      
      public var textString55:String;
      
      private var _mf6810:XML;
      
      public function BpadModel()
      {
         super();
         this._ah13783();
         this.stop();
         this._xf11205();
      }
      
      private function _ah13783() : void
      {
         this._mf6810 = new XML(TextManager._eo5308[textString].toXMLString());
      }
      
      private function _xf11205() : void
      {
         this._mf6810 = null;
      }
      
      private function stop() : void
      {
         this.textString1 = this._mf6810.attribute("bandejaEntra");
         this.textString2 = this._mf6810.attribute("agendaAmigos");
         this.textString3 = this._mf6810.attribute("addAmigo");
         this.textString4 = this._mf6810.attribute("busca");
         this.textString5 = this._mf6810.attribute("mensajes");
         this.textString6 = this._mf6810.attribute("usuarios");
         this.count = this._mf6810.attribute("usuario");
         this.textString8 = this._mf6810.attribute("recibido");
         this.textString9 = this._mf6810.attribute("ultimaConexion");
         this.textString10 = this._mf6810.attribute("responder");
         this.textString1 = this._mf6810.attribute("siguiente");
         this.textString12 = this._mf6810.attribute("destinatario");
         this.textString13 = this._mf6810.attribute("enviar");
         this.textString2 = this._mf6810.attribute("cancelar");
         this.textString3 = this._mf6810.attribute("aceptar");
         this.textString16 = this._mf6810.attribute("escribir");
         this.textString17 = this._mf6810.attribute("borrar");
         this.textString18 = this._mf6810.attribute("informacion");
         this.textString19 = this._mf6810.attribute("fraceBorrarContacto");
         this.textString20 = this._mf6810.attribute("escogeUsuario");
         this.textString21 = this._mf6810.attribute("fraceEscogeUsuario");
         this.textString22 = this._mf6810.attribute("fraceAddUsuario");
         this.textString23 = this._mf6810.attribute("escribeNick");
         this.textString24 = this._mf6810.attribute("addAgenda");
         this.textString25 = this._mf6810.attribute("irAlli");
         this.textString26 = this._mf6810.attribute("paraLeer");
         this.textString27 = this._mf6810.attribute("quierenSeaAmigo");
         this.textString29 = this._mf6810.attribute("cofirmacionAddUsuario");
         this.textString30 = this._mf6810.attribute("peticionDe");
         this.textString31 = this._mf6810.attribute("anios");
         this.textString2 = this._mf6810.attribute("vacio");
         this.textString33 = this._mf6810.attribute("contactos");
         this.textString34 = this._mf6810.attribute("contacto");
         this.textString35 = this._mf6810.attribute("noExiste");
         this.textString36 = this._mf6810.attribute("denunciaMensajeBPad");
         this.textString37 = this._mf6810.attribute("denunciaMensaje");
         this.textString38 = this._mf6810.attribute("denunciaMensajeTexto");
         this.textString39 = this._mf6810.attribute("denunciaEnviada");
         this.textString40 = this._mf6810.attribute("denunciaEnviadaTexto");
         this.textString41 = this._mf6810.attribute("denunciarUsuario");
         this.textString42 = this._mf6810.attribute("denunciarUsuarioTexto");
         this.textString43 = this._mf6810.attribute("denunciarIsla");
         this.textString44 = this._mf6810.attribute("denunciarIslaTexto");
         this.textString45 = this._mf6810.attribute("tooltip");
         this.textString46 = this._mf6810.attribute("godName");
         this.textString3 = this._mf6810.attribute("flowerPower");
         this.textString48 = this._mf6810.attribute("limiteAlzanzado");
         this.textString49 = this._mf6810.attribute("maxCantidadContactos");
         this.textString50 = this._mf6810.attribute("limiteContactos");
         this.VOLVER = this._mf6810.attribute("volver");
         this.textString51 = this._mf6810.attribute("maxCantidadContactosDelOtro");
         this.textString52 = this._mf6810.attribute("escribirATodos");
         this.textString53 = this._mf6810.attribute("advertenciaMensajeMasivos");
         this.textString54 = this._mf6810.attribute("limiteContactosMember");
         this.textString55 = this._mf6810.attribute("maxCantidadContactosMember");
      }
   }
}

