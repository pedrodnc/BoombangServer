package src.loaders
{
   import src.allData.texts.*;
   
   public class _br8483
   {
      
      private static const _bj5614:String = "loader";
      
      public var _eq8273:String;
      
      public var _uh2246:String;
      
      public var _hk10108:String;
      
      public var _ml13802:String;
      
      public var _pi359:String;
      
      public var _qy16083:String;
      
      public var _vs457:String;
      
      public var _nx6702:String;
      
      public var _vf11493:String;
      
      public var _wf2344:String;
      
      public var _ef7073:String;
      
      public var _cf7337:String;
      
      public var _xj8479:String;
      
      public var _uf4952:String;
      
      public var _xn4219:String;
      
      public function _br8483()
      {
         super();
         var _loc1_:XML = new XML(_yh6510._eo5308[_bj5614].toXMLString());
         this._eq8273 = _loc1_.attribute("conectando");
         this._nx6702 = _loc1_.attribute("paqueteLogin");
         this._vf11493 = _loc1_.attribute("paqueteFlowerPower");
         this._wf2344 = _loc1_.attribute("paqueteChooseIsla");
         this._ef7073 = _loc1_.attribute("paqueteEscenario");
         this._cf7337 = _loc1_.attribute("paqueteInterfaz");
         this._xj8479 = _loc1_.attribute("paquetePersonajes");
         this._uf4952 = _loc1_.attribute("paqueteCreateLocalization");
         this._xn4219 = _loc1_.attribute("paqueteMultiplayerGames");
         this._uh2246 = _loc1_.attribute("descNovedad1");
         this._hk10108 = _loc1_.attribute("descNovedad2");
         this._ml13802 = _loc1_.attribute("descNovedad3");
         this._pi359 = _loc1_.attribute("descNovedad4");
         this._qy16083 = _loc1_.attribute("descNovedad5");
         this._vs457 = _loc1_.attribute("descNovedad6");
      }
   }
}

