package src.modules.interfaz.baseChat
{
   import src.allData.texts.*;
   
   public class ChatManager
   {
      
      private static var _jb6784:String = "baseChat";
      
      public var _fw914:String;
      
      public var _lj6721:String;
      
      public var _bl5172:String;
      
      public var _ff3846:String;
      
      public var _tu2443:String;
      
      public var _au6947:String;
      
      public var _je15197:Array;
      
      public var _yc11865:Array;
      
      public var _xk2920:String;
      
      public var _bc9842:String;
      
      public var _sj11974:String;
      
      public var _hl6917:String;
      
      public var _ra14549:String;
      
      public var _ec6655:Array;
      
      public var _oe8734:Array;
      
      public var _jd4780:String;
      
      private var _ie14486:XML;
      
      public function ChatManager()
      {
         var _loc1_:int = 0;
         super();
         this._ie14486 = new XML(TextManager._eo5308[_jb6784].toXMLString());
         this._fw914 = this._ie14486.attribute("publico");
         this._lj6721 = this._ie14486.attribute("aceptarCambios");
         this._bl5172 = this._ie14486.attribute("rechazo");
         this._ff3846 = this._ie14486.attribute("password");
         this._tu2443 = this._ie14486.attribute("tooltipMochila");
         this._xk2920 = this._ie14486.attribute("hour");
         this._bc9842 = this._ie14486.attribute("min");
         this._sj11974 = this._ie14486.attribute("sec");
         this._jd4780 = this._ie14486.attribute("titMonedasPlata");
         this._je15197 = new Array();
         this._je15197.push(this._ie14486.attribute("descMonedasPlata1"));
         this._je15197.push(this._ie14486.attribute("descMonedasPlata3"));
         this._yc11865 = new Array();
         this._yc11865.push(this._ie14486.attribute("descMonedasPlata2").split("|").join("<br/>"));
         this._hl6917 = this._ie14486.attribute("activarCambios");
         this._ra14549 = this._ie14486.attribute("desactivarCambios");
         this._ec6655 = new Array();
         this._oe8734 = new Array();
         var _loc2_:String = this._ie14486.attribute("perfumado" + _loc1_);
         while(_loc2_ != "")
         {
            this._ec6655.push(_loc2_);
            _loc2_ = this._ie14486.attribute("perfumado" + ++_loc1_);
         }
         _loc1_ = 0;
         var _loc3_:String = this._ie14486.attribute("cumplido" + _loc1_);
         while(_loc3_ != "")
         {
            this._oe8734.push(_loc3_);
            _loc3_ = this._ie14486.attribute("cumplido" + ++_loc1_);
         }
         this._ie14486 = null;
      }
      
      public static function get _hu2466() : String
      {
         return XML(TextManager._eo5308[_jb6784].toXMLString()).attribute("tooltipExit");
      }
   }
}

