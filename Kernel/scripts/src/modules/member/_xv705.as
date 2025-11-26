package src.modules.member
{
   import src.allData.texts.*;
   
   public class _xv705
   {
      
      private static const _by516:String = "fichaMember";
      
      public var _ou574:String;
      
      public var _sm7920:String;
      
      public var _ym898:String;
      
      public var _pk8802:String;
      
      public var _bx15552:String;
      
      public var _th6865:String;
      
      public var _sr3429:String;
      
      public var _ru545:String;
      
      public var _rc14828:String;
      
      public var _hd11426:String;
      
      public var _ns11891:String;
      
      public var _oy7380:String;
      
      public var _da13537:String;
      
      public var _bk5495:String;
      
      public var _gk15965:String;
      
      public var _ye2654:String;
      
      public var _cj11625:String;
      
      public var _dr4184:String;
      
      public var _rf7674:String;
      
      public var _ds4767:String;
      
      public var _jp3101:String;
      
      public var _fi15661:String;
      
      public var _xs1862:String;
      
      public var _rq1928:String;
      
      public var _yn12134:String;
      
      public var _ts14611:String;
      
      public var _tn74:String;
      
      public var _yx3006:String;
      
      public var _pq2052:String;
      
      public var _od12606:String;
      
      public var _kp6172:String;
      
      public var _pi12935:String;
      
      public var _pv7696:String;
      
      private var _dd8597:XML;
      
      public function _xv705()
      {
         super();
         this._ah13783();
         this._gc6700();
         this._xf11205();
      }
      
      private function _ah13783() : void
      {
         this._dd8597 = new XML(_yh6510._eo5308[_by516].toXMLString());
      }
      
      private function _xf11205() : void
      {
         this._dd8597 = null;
      }
      
      private function _gc6700() : void
      {
         this._ou574 = this._dd8597.attribute("inicioTitulo");
         this._sm7920 = this._dd8597.attribute("inicioTexto");
         this._ym898 = this._dd8597.attribute("inicioBoton");
         this._pk8802 = this._dd8597.attribute("noMemberTitulo");
         this._bx15552 = this._dd8597.attribute("noMemberMesUno");
         this._th6865 = this._dd8597.attribute("noMemberMesDos");
         this._sr3429 = this._dd8597.attribute("noMemberMesTres");
         this._ru545 = this._dd8597.attribute("noMemberPrecioUno");
         this._rc14828 = this._dd8597.attribute("noMemberPrecioDos");
         this._hd11426 = this._dd8597.attribute("noMemberPrecioTres");
         this._ns11891 = this._dd8597.attribute("noMemberAdvertencia");
         this._oy7380 = this._dd8597.attribute("noMemberPagar");
         this._da13537 = this._dd8597.attribute("noMemberVentajaTitulo");
         this._bk5495 = this._dd8597.attribute("noMemberVentajaUno");
         this._gk15965 = this._dd8597.attribute("noMemberVentajaDos");
         this._ye2654 = this._dd8597.attribute("noMemberVentajaTres");
         this._cj11625 = this._dd8597.attribute("noMemberVentajaBpad");
         this._dr4184 = this._dd8597.attribute("noMemberVentajaFicha");
         this._rf7674 = this._dd8597.attribute("pagoRealizadoTitulo");
         this._ds4767 = this._dd8597.attribute("pagoRealizadoObjetos");
         this._jp3101 = this._dd8597.attribute("pagoRealizadoModelo");
         this._fi15661 = this._dd8597.attribute("pagoRealizadoRenovar");
         this._xs1862 = this._dd8597.attribute("pagoRealizadoMembership");
         this._rq1928 = this._dd8597.attribute("creditosInsuficientesTitulo");
         this._yn12134 = this._dd8597.attribute("creditosInsuficientesTexto");
         this._ts14611 = this._dd8597.attribute("creditosInsuficientesBoton");
         this._tn74 = this._dd8597.attribute("creditosInsuficientesMoneda");
         this._yx3006 = this._dd8597.attribute("siMemberTitulo");
         this._pq2052 = this._dd8597.attribute("renovarTitulo");
         this._od12606 = this._dd8597.attribute("renovarExtender");
         this._kp6172 = this._dd8597.attribute("renovarMensajeBpad");
         this._pi12935 = this._dd8597.attribute("errorTitulo");
         this._pv7696 = this._dd8597.attribute("errorTexto");
      }
   }
}

