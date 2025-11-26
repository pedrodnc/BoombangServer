package src.modules.interfaz.intercambios
{
   import src.allData.texts.*;
   
   public class _to7430
   {
      
      private var _vx16176:String;
      
      public var _ra14588:String;
      
      public var _yn5032:String;
      
      public var _pe7262:String;
      
      public var _iq3045:String;
      
      public var ERROR:String;
      
      public var _unico:String;
      
      public var _casiUnico:String;
      
      public var _muyRare:String;
      
      public var _rare:String;
      
      public var _ltd:String;
      
      public var _evento:String;
      
      public var _im13843:String;
      
      public var _do5286:String;
      
      public var _wp6753:String;
      
      public var _od82:String;
      
      public var _vn3681:String;
      
      public var _hf13978:String;
      
      public var _ao8380:String;
      
      public var _qw11914:String;
      
      public var _hr3731:String;
      
      public var _uq5612:String;
      
      public var _ae5945:String;
      
      public var _pj2713:String;
      
      public function _to7430()
      {
         this._vx16176 = "intercambios";
         super();
         var _loc1_:XML = new XML(_yh6510._eo5308[this._vx16176].toXMLString());
         this._ra14588 = _loc1_.attribute("vacio");
         this._yn5032 = _loc1_.attribute("aceptar");
         this._pe7262 = _loc1_.attribute("cancelar");
         this._iq3045 = _loc1_.attribute("listo");
         this.ERROR = _loc1_.attribute("error");
         this._unico = _loc1_.attribute("unico");
         this._casiUnico = _loc1_.attribute("casiUnico");
         this._muyRare = _loc1_.attribute("muyRare");
         this._rare = _loc1_.attribute("rare");
         this._ltd = _loc1_.attribute("ltd");
         this._evento = _loc1_.attribute("evento");
         this._im13843 = _loc1_.attribute("cambiar");
         this._do5286 = _loc1_.attribute("descripcionMia");
         this._wp6753 = _loc1_.attribute("descripcionOtro");
         this._od82 = _loc1_.attribute("tusObjetos");
         this._vn3681 = _loc1_.attribute("susObjetos");
         this._hf13978 = _loc1_.attribute("total");
         this._ao8380 = _loc1_.attribute("cancelado");
         this._qw11914 = _loc1_.attribute("tituloTenCuidado");
         this._hr3731 = _loc1_.attribute("descripcionTenCuidado");
         this._uq5612 = _loc1_.attribute("bullet1TenCuidado");
         this._ae5945 = _loc1_.attribute("bullet2TenCuidado");
         this._pj2713 = _loc1_.attribute("seguir");
      }
   }
}

