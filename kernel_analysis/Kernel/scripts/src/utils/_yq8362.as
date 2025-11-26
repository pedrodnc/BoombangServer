package src.utils
{
   import flash.text.TextField;
   import flash.text.TextFormat;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class _yq8362
   {
      
      public function _yq8362()
      {
         super();
      }
      
      public static function splitInt(param1:String, param2:String) : Array
      {
         var _loc6_:int = 0;
         var _loc3_:Array = param1.split(param2);
         var _loc4_:Array = new Array();
         var _loc5_:int = int(_loc3_.length);
         while(_loc6_ < _loc5_)
         {
            _loc4_.push(int(_loc3_[_loc6_]));
            _loc6_++;
         }
         return _loc4_;
      }
      
      public static function _xc14382(param1:TextField, param2:int) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc3_:TextFormat = param1.getTextFormat();
         if(_loc3_.font == null)
         {
            return;
         }
         _loc3_.size = param2;
         param1.setTextFormat(_loc3_);
      }
      
      public static function _xl9503(param1:TextField, param2:String) : void
      {
         param2 = _la5519(param2);
         param1.defaultTextFormat = getTextFormat(param1);
         param1.embedFonts = true;
         param1.text = param2;
      }
      
      public static function _bj8346(param1:TextField, param2:String, param3:uint = 0) : void
      {
         param2 = _la5519(param2);
         param1.defaultTextFormat = getTextFormat(param1);
         param1.embedFonts = true;
         param1.htmlText = param2;
         param1.setTextFormat(getTextFormat(param1));
      }
      
      private static function _la5519(param1:String) : String
      {
         if(_lh7543.get(_dw1395) != null)
         {
            param1 = (_lh7543.get(_dw1395) as _dw1395)._ad13455(param1);
         }
         if(param1 == null)
         {
            param1 = "";
         }
         return param1;
      }
      
      public static function getTextFormat(param1:TextField) : TextFormat
      {
         var _loc2_:TextFormat = param1.getTextFormat();
         if(_loc2_.font == null)
         {
            _loc2_.font = "VAGRoundedBlack1";
         }
         if(_loc2_.font.charAt(_loc2_.font.length - 1) != "1")
         {
            _loc2_.font += "1";
         }
         return _loc2_;
      }
      
      public static function _kc12786(param1:TextField, param2:Boolean) : void
      {
         var _loc3_:TextFormat = param1.getTextFormat();
         _loc3_.underline = param2;
         param1.setTextFormat(_loc3_);
      }
      
      public static function _uu6142(param1:String) : String
      {
         return param1.replace(" ","%20").replace("á","a").replace("é","e").replace("í","i").replace("ó","o").replace("ú","u");
      }
      
      public static function _dy12945(param1:String) : Boolean
      {
         return param1.lastIndexOf("@") != -1 && param1.lastIndexOf(".") != -1 && param1.lastIndexOf("@.") == -1 && param1.lastIndexOf(".@") == -1 && param1.length >= 6;
      }
      
      public static function _np7275(param1:TextField, param2:uint) : void
      {
         var _loc3_:TextFormat = param1.getTextFormat();
         _loc3_.color = param2;
         param1.setTextFormat(_loc3_);
      }
      
      public static function _wk8181(param1:String) : String
      {
         var _loc2_:Array = param1.split(" ");
         return _loc2_.join("");
      }
      
      public static function _gv3731(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1.search(/@/) < 1)
         {
            return false;
         }
         var _loc3_:Array = param1.split("@");
         if(_loc3_.length != 2)
         {
            return false;
         }
         for each(_loc2_ in _loc3_)
         {
            if(_loc2_.charAt(0) == "." || _loc2_.charAt(_loc2_.length - 1) == ".")
            {
               return false;
            }
         }
         if(_loc2_.search(/\./) < 1)
         {
            return false;
         }
         return true;
      }
   }
}

