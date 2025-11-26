package src.utils.boombang
{
   import flash.display.DisplayObject;
   import flash.system.*;
   import flash.utils.*;
   import src.config.*;
   import src.tv.boombang.core.datatypes.*;
   import src.utils.*;
   
   public class BoombangModel
   {
      
      public static const _yg212:String = "lang";
      
      public static const _yc9950:String = "target";
      
      public static const _of7519:String = "VTR";
      
      public static const _xb8706:String = "flower_power";
      
      public static const _lf14540:String = "publicos";
      
      public static const _bu948:String = "privados";
      
      public static const _tf15967:String = "hitsCheetos";
      
      public static const _dt6215:String = "bannerFP_PSU";
      
      public static const _vw15507:String = "impresionesCheetos";
      
      public function BoombangModel()
      {
         super();
      }
      
      public static function _cs5386(param1:String, param2:String) : void
      {
         var _loc3_:Dictionary = null;
         var _loc4_:String = null;
         if(Configuration._te13733 != null)
         {
            _loc3_ = new Dictionary();
            switch(param1)
            {
               case _of7519:
                  _loc4_ = "VTR";
                  break;
               case _xb8706:
                  _loc4_ = "flowerpower";
                  break;
               case _tf15967:
                  _loc4_ = "hitsCheetos";
                  break;
               case _vw15507:
                  _loc4_ = "impresionesCheetos";
                  break;
               case _dt6215:
                  _loc4_ = "bannerFP_PSU";
                  break;
               case _lf14540:
                  _loc4_ = UtilsUtils._uu6142(param2);
                  break;
               case _bu948:
                  _loc4_ = UtilsUtils._uu6142(param2);
            }
            _loc3_[_yg212] = RuntimeParams._ns12055;
            _loc3_[_yc9950] = _loc4_;
         }
      }
      
      public static function _lx13412() : void
      {
         var _loc1_:Dictionary = null;
         if(Configuration._lw6097 != null && Configuration._lw6097 != "")
         {
            _loc1_ = new Dictionary();
            _loc1_.o = "i";
            _loc1_.rnd = String(int(Math.random() * int.MAX_VALUE));
         }
      }
      
      public static function _pd5179(param1:DisplayObject = null) : String
      {
         var _loc2_:* = "OS: " + Capabilities.os + " Mem: " + Number(System.totalMemory / 1048576).toFixed(2) + " Mb";
         if(param1 != null && param1.stage != null)
         {
            _loc2_ + " Resolution: " + param1.stage.stageWidth + "x" + param1.stage.stageHeight;
         }
         return _loc2_;
      }
      
      public static function _iu2197() : void
      {
         UtilsUtils._qh12544("http://www.chilevision.cl/boombang/player.html?id=" + int(Math.random() * 5000),330,250);
      }
   }
}

