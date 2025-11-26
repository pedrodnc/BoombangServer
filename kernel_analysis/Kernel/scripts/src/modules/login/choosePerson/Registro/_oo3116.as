package src.modules.login.choosePerson.Registro
{
   import src.allData.texts.*;
   
   public class _oo3116
   {
      
      private var _pa8329:String;
      
      public var _gn10382:String;
      
      public var _mo2600:String;
      
      public var _ff3846:String;
      
      public var _gw4745:String;
      
      public var _bm2876:String;
      
      public var _jv4074:String;
      
      public var _hq13265:String;
      
      public var _km793:String;
      
      public var _vo1044:String;
      
      public var _fh7399:String;
      
      public var _cf15131:String;
      
      public function _oo3116()
      {
         this._pa8329 = "fichaRegistro";
         super();
         var _loc1_:XML = new XML(_yh6510._eo5308[this._pa8329].toXMLString());
         this._gn10382 = _loc1_.attribute("registrate");
         this._mo2600 = _loc1_.attribute("nombre");
         this._ff3846 = _loc1_.attribute("password");
         this._gw4745 = _loc1_.attribute("edad");
         this._bm2876 = _loc1_.attribute("emailNormal");
         this._jv4074 = _loc1_.attribute("repEmailNormal");
         this._hq13265 = _loc1_.attribute("emailPadre");
         this._km793 = _loc1_.attribute("repEmailPadre");
         this._vo1044 = _loc1_.attribute("condiciones");
         this._fh7399 = _loc1_.attribute("advertencia");
         this._cf15131 = _loc1_.attribute("crear");
      }
   }
}

