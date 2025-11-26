package src.modules.bpad
{
   import src.allData.texts.*;
   
   public class _uc13813
   {
      
      private static const _pt6585:String = "bpad";
      
      public var _hb5954:String;
      
      public var _bm3867:String;
      
      public var _qy6019:String;
      
      public var _aw7708:String;
      
      public var _df7068:String;
      
      public var _wb5691:String;
      
      public var _rf10272:String;
      
      public var _xq6179:String;
      
      public var _vm11523:String;
      
      public var _ac11489:String;
      
      public var _gb1032:String;
      
      public var _xv4775:String;
      
      public var _kc85:String;
      
      public var _pe7262:String;
      
      public var _yn5032:String;
      
      public var _ys7182:String;
      
      public var _ap11835:String;
      
      public var _wi9815:String;
      
      public var _kh10844:String;
      
      public var _og8562:String;
      
      public var _vg11485:String;
      
      public var _uc11290:String;
      
      public var _ku745:String;
      
      public var _vl8064:String;
      
      public var _vi12494:String;
      
      public var _ux11680:String;
      
      public var _lr2694:String;
      
      public var _gp9987:String;
      
      public var _df3118:String;
      
      public var _qi935:String;
      
      public var _np126:String;
      
      public var _ra14588:String;
      
      public var _at14228:String;
      
      public var _uq15790:String;
      
      public var _vv2803:String;
      
      public var _dp6652:String;
      
      public var _ob13394:String;
      
      public var _pc277:String;
      
      public var _hu2179:String;
      
      public var _wm13160:String;
      
      public var _lg1586:String;
      
      public var _ad10099:String;
      
      public var _ga5410:String;
      
      public var _ud11001:String;
      
      public var _gn14977:String;
      
      public var _tw13556:String;
      
      public var _xb8706:String;
      
      public var _lg4895:String;
      
      public var _ko4394:String;
      
      public var _to14982:String;
      
      public var VOLVER:String;
      
      public var _yi10144:String;
      
      public var _xs3530:String;
      
      public var _fw11555:String;
      
      public var _mu3612:String;
      
      public var _fw11448:String;
      
      private var _mf6810:XML;
      
      public function _uc13813()
      {
         super();
         this._ah13783();
         this._qc13224();
         this._xf11205();
      }
      
      private function _ah13783() : void
      {
         this._mf6810 = new XML(_yh6510._eo5308[_pt6585].toXMLString());
      }
      
      private function _xf11205() : void
      {
         this._mf6810 = null;
      }
      
      private function _qc13224() : void
      {
         this._hb5954 = this._mf6810.attribute("bandejaEntra");
         this._bm3867 = this._mf6810.attribute("agendaAmigos");
         this._qy6019 = this._mf6810.attribute("addAmigo");
         this._aw7708 = this._mf6810.attribute("busca");
         this._df7068 = this._mf6810.attribute("mensajes");
         this._wb5691 = this._mf6810.attribute("usuarios");
         this._rf10272 = this._mf6810.attribute("usuario");
         this._xq6179 = this._mf6810.attribute("recibido");
         this._vm11523 = this._mf6810.attribute("ultimaConexion");
         this._ac11489 = this._mf6810.attribute("responder");
         this._gb1032 = this._mf6810.attribute("siguiente");
         this._xv4775 = this._mf6810.attribute("destinatario");
         this._kc85 = this._mf6810.attribute("enviar");
         this._pe7262 = this._mf6810.attribute("cancelar");
         this._yn5032 = this._mf6810.attribute("aceptar");
         this._ys7182 = this._mf6810.attribute("escribir");
         this._ap11835 = this._mf6810.attribute("borrar");
         this._wi9815 = this._mf6810.attribute("informacion");
         this._kh10844 = this._mf6810.attribute("fraceBorrarContacto");
         this._og8562 = this._mf6810.attribute("escogeUsuario");
         this._vg11485 = this._mf6810.attribute("fraceEscogeUsuario");
         this._uc11290 = this._mf6810.attribute("fraceAddUsuario");
         this._ku745 = this._mf6810.attribute("escribeNick");
         this._vl8064 = this._mf6810.attribute("addAgenda");
         this._vi12494 = this._mf6810.attribute("irAlli");
         this._ux11680 = this._mf6810.attribute("paraLeer");
         this._lr2694 = this._mf6810.attribute("quierenSeaAmigo");
         this._df3118 = this._mf6810.attribute("cofirmacionAddUsuario");
         this._qi935 = this._mf6810.attribute("peticionDe");
         this._np126 = this._mf6810.attribute("anios");
         this._ra14588 = this._mf6810.attribute("vacio");
         this._at14228 = this._mf6810.attribute("contactos");
         this._uq15790 = this._mf6810.attribute("contacto");
         this._vv2803 = this._mf6810.attribute("noExiste");
         this._dp6652 = this._mf6810.attribute("denunciaMensajeBPad");
         this._ob13394 = this._mf6810.attribute("denunciaMensaje");
         this._pc277 = this._mf6810.attribute("denunciaMensajeTexto");
         this._hu2179 = this._mf6810.attribute("denunciaEnviada");
         this._wm13160 = this._mf6810.attribute("denunciaEnviadaTexto");
         this._lg1586 = this._mf6810.attribute("denunciarUsuario");
         this._ad10099 = this._mf6810.attribute("denunciarUsuarioTexto");
         this._ga5410 = this._mf6810.attribute("denunciarIsla");
         this._ud11001 = this._mf6810.attribute("denunciarIslaTexto");
         this._gn14977 = this._mf6810.attribute("tooltip");
         this._tw13556 = this._mf6810.attribute("godName");
         this._xb8706 = this._mf6810.attribute("flowerPower");
         this._lg4895 = this._mf6810.attribute("limiteAlzanzado");
         this._ko4394 = this._mf6810.attribute("maxCantidadContactos");
         this._to14982 = this._mf6810.attribute("limiteContactos");
         this.VOLVER = this._mf6810.attribute("volver");
         this._yi10144 = this._mf6810.attribute("maxCantidadContactosDelOtro");
         this._xs3530 = this._mf6810.attribute("escribirATodos");
         this._fw11555 = this._mf6810.attribute("advertenciaMensajeMasivos");
         this._mu3612 = this._mf6810.attribute("limiteContactosMember");
         this._fw11448 = this._mf6810.attribute("maxCantidadContactosMember");
      }
   }
}

