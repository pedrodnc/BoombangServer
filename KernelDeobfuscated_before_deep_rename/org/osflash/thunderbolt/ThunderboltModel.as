package src.org.osflash.thunderbolt
{
   import flash.external.*;
   import flash.system.*;
   import flash.utils.*;
   
   public class ThunderboltModel
   {
      
      private static var _un6590:int;
      
      private static var _xc15248:String;
      
      public static const INFO:String = "info";
      
      public static const WARN:String = "warn";
      
      public static const ERROR:String = "error";
      
      public static const LOG:String = "log";
      
      public static const _mw12070:Array = [INFO,WARN,ERROR,LOG];
      
      private static const _yi13132:String = "group";
      
      private static const _ae130:String = "groupEnd";
      
      private static const _kj4183:int = 255;
      
      private static const _ft9006:String = "2.2";
      
      private static const _ao6780:String = "Jens Krause [www.websector.de]";
      
      public static const _le11974:String = " :: ";
      
      private static var _pv1579:Boolean = false;
      
      private static var _uj332:Boolean = false;
      
      private static var _qp9620:Boolean = true;
      
      private static var _so13065:Boolean = false;
      
      public static var includeTime:Boolean = true;
      
      public static var _qp2133:Boolean = true;
      
      public function ThunderboltModel()
      {
         super();
      }
      
      public static function _pa8006() : void
      {
         var _loc1_:* = "+++ Welcome to ThunderBolt AS3 | VERSION: " + ThunderboltModel._ft9006 + " | AUTHOR: " + ThunderboltModel._ao6780 + " | Happy logging +++";
         ThunderboltModel.info(_loc1_);
      }
      
      public static function _vc1284() : String
      {
         var _loc1_:uint = uint(System.totalMemory);
         return "Memory Snapshot: " + Math.round(_loc1_ / 1024 / 1024 * 100) / 100 + " MB (" + Math.round(_loc1_ / 1024) + " kb)";
      }
      
      public static function info(param1:String = null, ... rest) : void
      {
         ThunderboltModel.log(ThunderboltModel.INFO,param1,rest);
      }
      
      public static function warn(param1:String = null, ... rest) : void
      {
         ThunderboltModel.log(ThunderboltModel.WARN,param1,rest);
      }
      
      public static function error(param1:String = null, ... rest) : void
      {
         ThunderboltModel.log(ThunderboltModel.ERROR,param1,rest);
      }
      
      public static function debug(param1:String = null, ... rest) : void
      {
      }
      
      public static function set hide(param1:Boolean) : void
      {
         _uj332 = param1;
      }
      
      public static function set _mk9462(param1:Boolean) : void
      {
         _qp9620 = false;
         _so13065 = !param1;
      }
      
      public static function log(param1:String, param2:String = "", param3:Array = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(BoomBangKids.logEnable)
         {
         }
         if(!_uj332)
         {
            if(_qp9620)
            {
               _so13065 = _rv8062;
               _qp9620 = false;
            }
            _un6590 = 0;
            _xc15248 = param1;
            _loc4_ = "";
            if(includeTime)
            {
               _loc4_ += _wr15027();
            }
            if(_qp2133)
            {
               _loc4_ += _np4129();
            }
            _loc4_ += param2;
            ThunderboltModel.call(_loc4_);
            if(param3 != null)
            {
               _loc5_ = 0;
               _loc6_ = int(param3.length);
               _loc5_ = 0;
               while(_loc5_ < _loc6_)
               {
                  ThunderboltModel._vh7851(param3[_loc5_]);
                  _loc5_++;
               }
            }
         }
      }
      
      private static function get _rv8062() : Boolean
      {
         var _jn12031:String = null;
         var method:String = null;
         var _we11140:Boolean = Capabilities.playerType == "ActiveX" || Capabilities.playerType == "PlugIn";
         if(_we11140 && Boolean(ExternalInterface.available))
         {
            _jn12031 = "";
            for each(method in _mw12070)
            {
               _jn12031 += " && (typeof console." + method + " == \'function\' || typeof console." + method + " == \'object\') ";
            }
            try
            {
               if(ExternalInterface.call("function(){ return typeof window.console == \'object\' " + _jn12031 + "}"))
               {
                  return true;
               }
            }
            catch(error:SecurityError)
            {
               return false;
            }
         }
         return false;
      }
      
      private static function _vh7851(param1:*, param2:String = null) : void
      {
         var _loc3_:String = null;
         var _loc4_:XML = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:XMLList = null;
         var _loc11_:XML = null;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc14_:String = null;
         var _loc15_:* = undefined;
         if(_un6590 < ThunderboltModel._kj4183)
         {
            ++_un6590;
            _loc3_ = param2 || "";
            _loc4_ = describeType(param1);
            _loc5_ = _loc4_.@name;
            if(_ck3394(_loc5_))
            {
               _loc6_ = _loc3_.length ? "[" + _loc5_ + "] " + _loc3_ + " = " + param1 : "[" + _loc5_ + "] " + param1;
               ThunderboltModel.call(_loc6_);
            }
            else if(_loc5_ == "Object")
            {
               ThunderboltModel._yc11752(_yi13132,"[Object] " + _loc3_);
               for(_loc7_ in param1)
               {
                  _vh7851(param1[_loc7_],_loc7_);
               }
               ThunderboltModel._yc11752(_ae130);
            }
            else if(_loc5_ == "Array")
            {
               ThunderboltModel._yc11752(_yi13132,"[Array] " + _loc3_);
               _loc8_ = 0;
               _loc9_ = int(param1.length);
               while(_loc8_ < _loc9_)
               {
                  _vh7851(param1[_loc8_]);
                  _loc8_++;
               }
               ThunderboltModel._yc11752(_ae130);
            }
            else
            {
               _loc10_ = _loc4_..accessor;
               if(_loc10_.length())
               {
                  for each(_loc11_ in _loc10_)
                  {
                     _loc12_ = _loc11_.@name;
                     _loc13_ = _loc11_.@type;
                     _loc14_ = _loc11_.@_cg836;
                     if((Boolean(_loc14_)) && _loc14_ != "writeonly")
                     {
                        _loc15_ = param1[_loc12_];
                        ThunderboltModel._vh7851(_loc15_,_loc12_);
                     }
                  }
               }
               else
               {
                  ThunderboltModel._vh7851(param1,_loc5_);
               }
            }
         }
         else if(!_pv1579)
         {
            ThunderboltModel.call("STOP LOGGING: More than " + _un6590 + " nested objects or properties.");
            _pv1579 = true;
         }
      }
      
      private static function call(param1:String = "") : void
      {
         if(_so13065)
         {
            ExternalInterface.call("console." + _xc15248,param1);
         }
      }
      
      private static function _yc11752(param1:String, param2:String = "") : void
      {
         if(_so13065)
         {
            if(param1 == _yi13132)
            {
               ExternalInterface.call("console.group",param2);
            }
            else if(param1 == _ae130)
            {
               ExternalInterface.call("console.groupEnd");
            }
            else
            {
               ExternalInterface.call("console." + ThunderboltModel.ERROR,"group type has not defined");
            }
         }
         else if(param1 != _yi13132)
         {
            if(param1 == _ae130)
            {
            }
         }
      }
      
      private static function _ck3394(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         switch(param1)
         {
            case "Boolean":
            case "void":
            case "int":
            case "uint":
            case "Number":
            case "String":
            case "undefined":
            case "null":
               _loc2_ = true;
               break;
            default:
               _loc2_ = false;
         }
         return _loc2_;
      }
      
      private static function _wr15027() : String
      {
         var _loc1_:Date = new Date();
         return "time " + _xy4775(_loc1_.getHours()) + ":" + _xy4775(_loc1_.getMinutes()) + ":" + _xy4775(_loc1_.getSeconds()) + "." + _xy4775(_loc1_.getMilliseconds()) + _le11974;
      }
      
      private static function _xy4775(param1:Number) : String
      {
         return param1 > 9 ? param1.toString() : "0" + param1.toString();
      }
      
      private static function _vs10180(param1:String) : _kf8255
      {
         var _loc2_:Array = param1.match(/^\tat (?:(.+)::)?(.+)\/(.+)\(\)\[(?:(.+)\:(\d+))?\]$/) || new Array();
         var _loc3_:_kf8255 = new _kf8255();
         _loc3_._qd10180 = _loc2_[1] || "";
         _loc3_.className = _loc2_[2] || "";
         _loc3_._iv4632 = _loc2_[3] || "";
         _loc3_._le1402 = _loc2_[4] || "";
         _loc3_._qu7165 = int(_loc2_[5]) || 0;
         return _loc3_;
      }
      
      private static function _np4129() : String
      {
         var _kp10497:Error = null;
         var _wg10066:Object = null;
         var stackTrace:String = null;
         var _xy7064:Array = null;
         var _qa492:_kf8255 = null;
         var message:String = "";
         try
         {
            _wg10066.halli = "galli";
         }
         catch(error:Error)
         {
            _kp10497 = new Error();
         }
         finally
         {
            stackTrace = _kp10497.getStackTrace();
            if(stackTrace != null)
            {
               _xy7064 = stackTrace.split("\n");
               if(_xy7064 != null)
               {
                  if(_xy7064.length >= 5)
                  {
                     _qa492 = ThunderboltModel._vs10180(_xy7064[4]);
                  }
                  if(_qa492.className == "AbstractTarget" && _xy7064.length >= 9)
                  {
                     _qa492 = ThunderboltModel._vs10180(_xy7064[8]);
                  }
                  if(_qa492 != null)
                  {
                     message += _qa492._qd10180 != "" ? _qa492._qd10180 + "." : _qa492._qd10180;
                     message += _qa492.className;
                     if(_qa492._qu7165 > 0)
                     {
                        message += " [" + _qa492._qu7165 + "]" + ThunderboltModel._le11974;
                     }
                  }
               }
            }
         }
         return message;
      }
   }
}

class _kf8255
{
   
   public var _qd10180:String;
   
   public var className:String;
   
   public var _iv4632:String;
   
   public var _le1402:String;
   
   public var _qu7165:int;
   
   public function _kf8255()
   {
      super();
   }
   
   public function toString() : String
   {
      return "packageName " + this._qd10180 + " // className " + this.className + " // methodName " + this._iv4632 + " // fileName " + this._le1402 + "// lineNumber " + this._qu7165;
   }
}
