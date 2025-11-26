package src.modules.interfaz.mochila
{
   import src.allData.texts.*;
   
   public class _vu9089
   {
      
      private var _vj15855:String;
      
      public var _mm14038:String;
      
      public var _qn5869:String;
      
      public var _aq1419:String;
      
      public var _ra14588:String;
      
      public var _sq5437:String;
      
      public var _tb8790:String;
      
      public var _jt11415:String;
      
      public var _is780:String;
      
      public var _ap10478:String;
      
      public var _hs11452:Array;
      
      public var _jh9457:String;
      
      public var VOLVER:String;
      
      public var _pq3280:String;
      
      public var _di350:Array;
      
      public var _by8495:String;
      
      public var _qw8374:String;
      
      public var _mi15528:String;
      
      public var _bc3358:String;
      
      public var _ag11421:String;
      
      public var _ef10934:String;
      
      public function _vu9089()
      {
         this._vj15855 = "mochila";
         super();
         var _loc1_:XML = new XML(_yh6510._eo5308[this._vj15855].toXMLString());
         this._mm14038 = _loc1_.attribute("mochila");
         this._qn5869 = _loc1_.attribute("contiene");
         this._aq1419 = _loc1_.attribute("objetos");
         this._ra14588 = _loc1_.attribute("vacio");
         this._sq5437 = _loc1_.attribute("arrastra");
         this._tb8790 = _loc1_.attribute("cambia");
         this._jt11415 = _loc1_.attribute("setTitulo");
         this._is780 = _loc1_.attribute("todos");
         this._ap10478 = _loc1_.attribute("nuevos");
         this._hs11452 = new Array();
         this._hs11452.push(_loc1_.attribute("set1"));
         this._hs11452.push(_loc1_.attribute("set2"));
         this._hs11452.push(_loc1_.attribute("set3"));
         this._hs11452.push(_loc1_.attribute("set4"));
         this._hs11452.push(_loc1_.attribute("set5"));
         this._hs11452.push(_loc1_.attribute("set6"));
         this._hs11452.push(_loc1_.attribute("set7"));
         this._hs11452.push(_loc1_.attribute("set8"));
         this._hs11452.push(_loc1_.attribute("set9"));
         this._hs11452.push(_loc1_.attribute("set10"));
         this._hs11452.push(_loc1_.attribute("set11"));
         this._hs11452.push(_loc1_.attribute("set12"));
         this._hs11452.push(_loc1_.attribute("set13"));
         this._hs11452.push(_loc1_.attribute("set14"));
         this._hs11452.push(_loc1_.attribute("set15"));
         this._hs11452.push(_loc1_.attribute("set16"));
         this._hs11452.push(_loc1_.attribute("set17"));
         this._hs11452.push(_loc1_.attribute("set18"));
         this._hs11452.push(_loc1_.attribute("set19"));
         this._hs11452.push(_loc1_.attribute("set20"));
         this._hs11452.push(_loc1_.attribute("set21"));
         this._hs11452.push(_loc1_.attribute("set22"));
         this._hs11452.push(_loc1_.attribute("set23"));
         this._hs11452.push(_loc1_.attribute("set24"));
         this._hs11452.push(_loc1_.attribute("set25"));
         this._hs11452.push(_loc1_.attribute("set26"));
         this._hs11452.push(_loc1_.attribute("set27"));
         this._hs11452.push(_loc1_.attribute("set28"));
         this._hs11452.push(_loc1_.attribute("set29"));
         this._hs11452.push(_loc1_.attribute("set30"));
         this._hs11452.push(_loc1_.attribute("set31"));
         this._hs11452.push(_loc1_.attribute("set32"));
         this._hs11452.push(_loc1_.attribute("set33"));
         this._hs11452.push(_loc1_.attribute("set34"));
         this._hs11452.push(_loc1_.attribute("set35"));
         this._hs11452.push(_loc1_.attribute("set36"));
         this._hs11452.push(_loc1_.attribute("set37"));
         this._hs11452.push(_loc1_.attribute("set38"));
         this._hs11452.push(_loc1_.attribute("set39"));
         this._jh9457 = _loc1_.attribute("numeroObjetos");
         this.VOLVER = _loc1_.attribute("volver");
         this._pq3280 = _loc1_.attribute("tituloHelp");
         this._di350 = new Array();
         this._di350.push(_loc1_.attribute("textoHelp01"));
         this._di350.push(_loc1_.attribute("textoHelp02"));
         this._di350.push(_loc1_.attribute("textoHelp03"));
         this._di350.push(_loc1_.attribute("textoHelp04"));
         this._by8495 = _loc1_.attribute("textoTeleportDirigido");
         this._qw8374 = _loc1_.attribute("textoPocionAvion");
         this._mi15528 = _loc1_.attribute("textoAdvertencia");
         this._bc3358 = _loc1_.attribute("textodecorarIsla");
         this._ag11421 = _loc1_.attribute("textodecorarCasa");
         this._ef10934 = _loc1_.attribute("abrirCarpeta");
      }
   }
}

