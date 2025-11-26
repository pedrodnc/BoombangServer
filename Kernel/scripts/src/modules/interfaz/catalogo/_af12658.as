package src.modules.interfaz.catalogo
{
   import src.allData.texts.*;
   
   public class _af12658
   {
      
      private static const _aj8296:int = 20;
      
      private var _mt13632:String;
      
      public var _kk12256:Array;
      
      public var _ps14738:String;
      
      public var _hj14790:String;
      
      public var NORMAL:String;
      
      public var _cw10346:String;
      
      public var _ra14588:String;
      
      public var _yn5032:String;
      
      public var _pe7262:String;
      
      public var _wr11320:String;
      
      public var _iq3045:String;
      
      public var _hy5274:String;
      
      public var _yt12270:String;
      
      public var _af14267:String;
      
      public var _qa14188:String;
      
      public function _af12658()
      {
         this._mt13632 = "compraObjetos";
         this._kk12256 = new Array();
         super();
         var _loc1_:XML = new XML(_yh6510._eo5308[this._mt13632].toXMLString());
         var _loc2_:int = 1;
         while(_loc2_ <= _aj8296)
         {
            this._kk12256[_loc2_] = _loc1_.attribute("catalogo" + _loc2_);
            _loc2_++;
         }
         this._ps14738 = _loc1_.attribute("comprar");
         this._hj14790 = _loc1_.attribute("peque");
         this.NORMAL = _loc1_.attribute("normal");
         this._cw10346 = _loc1_.attribute("grande");
         this._ra14588 = _loc1_.attribute("vacio");
         this._yn5032 = _loc1_.attribute("aceptar");
         this._pe7262 = _loc1_.attribute("cancelar");
         this._wr11320 = _loc1_.attribute("cargando");
         this._iq3045 = _loc1_.attribute("listo");
         this._hy5274 = _loc1_.attribute("tituloCompraOk");
         this._yt12270 = _loc1_.attribute("mensajeCompraOk");
         this._af14267 = _loc1_.attribute("mensajeObjetoMember");
         this._qa14188 = _loc1_.attribute("noMonedasPlata");
      }
   }
}

