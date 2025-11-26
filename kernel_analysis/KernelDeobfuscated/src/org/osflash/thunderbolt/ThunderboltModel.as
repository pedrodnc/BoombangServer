package src.org.osflash.thunderbolt
{
   import flash.external.*;
   import flash.system.*;
   import flash.utils.*;
   
   public class ThunderboltModel
   {
      
      private static var count:int;
      
      private static var textString:String;
      
      public static const INFO:String = "info";
      
      public static const WARN:String = "warn";
      
      public static const ERROR:String = "error";
      
      public static const LOG:String = "log";
      
      public static const items:Array = [INFO,WARN,ERROR,LOG];
      
      private static const textString1:String = "group";
      
      private static const textString2:String = "groupEnd";
      
      private static const count1:int = 255;
      
      private static const textString3:String = "2.2";
      
      private static const textString4:String = "Jens Krause [www.websector.de]";
      
      public static const textString5:String = " :: ";
      
      private static var isEnabled:Boolean = false;
      
      private static var isEnabled1:Boolean = false;
      
      private static var isEnabled2:Boolean = true;
      
      private static var isEnabled3:Boolean = false;
      
      public static var includeTime:Boolean = true;
      
      public static var isEnabled4:Boolean = true;
      
      public function ThunderboltModel()
      {
         super();
      }
      
      public static function authenticateUser() : void
      {
         var count2:* = "+++ Welcome to ThunderBolt AS3 | VERSION: " + ThunderboltModel.textString3 + " | AUTHOR: " + ThunderboltModel.textString4 + " | Happy logging +++";
         ThunderboltModel.info(count2);
      }
      
      public static function getString() : String
      {
         var count2:uint = uint(System.totalMemory);
         return "Memory Snapshot: " + Math.round(count2 / 1024 / 1024 * 100) / 100 + " MB (" + Math.round(count2 / 1024) + " kb)";
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
         isEnabled1 = param1;
      }
      
      public static function set _mk9462(param1:Boolean) : void
      {
         isEnabled2 = false;
         isEnabled3 = !param1;
      }
      
      public static function log(param1:String, param2:String = "", param3:Array = null) : void
      {
         var count1:String = null;
         var count2:int = 0;
         var count7:int = 0;
         if(BoomBangKids.logEnable)
         {
         }
         if(!isEnabled1)
         {
            if(isEnabled2)
            {
               isEnabled3 = _rv8062;
               isEnabled2 = false;
            }
            count = 0;
            textString = param1;
            count1 = "";
            if(includeTime)
            {
               count1 += getString1();
            }
            if(isEnabled4)
            {
               count1 += getString3();
            }
            count1 += param2;
            ThunderboltModel.call(count1);
            if(param3 != null)
            {
               count2 = 0;
               count7 = int(param3.length);
               count2 = 0;
               while(count2 < count7)
               {
                  ThunderboltModel._vh7851(param3[count2]);
                  count2++;
               }
            }
         }
      }
      
      private static function get _rv8062() : Boolean
      {
         var textString7:String = null;
         var method:String = null;
         var isEnabled5:Boolean = Capabilities.playerType == "ActiveX" || Capabilities.playerType == "PlugIn";
         if(isEnabled5 && Boolean(ExternalInterface.available))
         {
            textString7 = "";
            for each(method in items)
            {
               textString7 += " && (typeof console." + method + " == \'function\' || typeof console." + method + " == \'object\') ";
            }
            try
            {
               if(ExternalInterface.call("function(){ return typeof window.console == \'object\' " + textString7 + "}"))
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
         var count3:String = null;
         var count1:XML = null;
         var count2:String = null;
         var count7:String = null;
         var items:String = null;
         var count8:int = 0;
         var count6:int = 0;
         var count:XMLList = null;
         var count10:XML = null;
         var textString12:String = null;
         var isEnabled:String = null;
         var textString14:String = null;
         var count16:* = undefined;
         if(count < ThunderboltModel.count1)
         {
            ++count;
            count3 = param2 || "";
            count1 = describeType(param1);
            count2 = count1.@name;
            if(_ck3394(count2))
            {
               count7 = count3.length ? "[" + count2 + "] " + count3 + " = " + param1 : "[" + count2 + "] " + param1;
               ThunderboltModel.call(count7);
            }
            else if(count2 == "Object")
            {
               ThunderboltModel._yc11752(textString1,"[Object] " + count3);
               for(items in param1)
               {
                  _vh7851(param1[items],items);
               }
               ThunderboltModel._yc11752(textString2);
            }
            else if(count2 == "Array")
            {
               ThunderboltModel._yc11752(textString1,"[Array] " + count3);
               count8 = 0;
               count6 = int(param1.length);
               while(count8 < count6)
               {
                  _vh7851(param1[count8]);
                  count8++;
               }
               ThunderboltModel._yc11752(textString2);
            }
            else
            {
               count = count1..accessor;
               if(count.length())
               {
                  for each(count10 in count)
                  {
                     textString12 = count10.@name;
                     isEnabled = count10.@type;
                     textString14 = count10.@_cg836;
                     if((Boolean(textString14)) && textString14 != "writeonly")
                     {
                        count16 = param1[textString12];
                        ThunderboltModel._vh7851(count16,textString12);
                     }
                  }
               }
               else
               {
                  ThunderboltModel._vh7851(param1,count2);
               }
            }
         }
         else if(!isEnabled)
         {
            ThunderboltModel.call("STOP LOGGING: More than " + count + " nested objects or properties.");
            isEnabled = true;
         }
      }
      
      private static function call(param1:String = "") : void
      {
         if(isEnabled3)
         {
            ExternalInterface.call("console." + textString,param1);
         }
      }
      
      private static function _yc11752(param1:String, param2:String = "") : void
      {
         if(isEnabled3)
         {
            if(param1 == textString1)
            {
               ExternalInterface.call("console.group",param2);
            }
            else if(param1 == textString2)
            {
               ExternalInterface.call("console.groupEnd");
            }
            else
            {
               ExternalInterface.call("console." + ThunderboltModel.ERROR,"group type has not defined");
            }
         }
         else if(param1 != textString1)
         {
            if(param1 == textString2)
            {
            }
         }
      }
      
      private static function _ck3394(param1:String) : Boolean
      {
         var count:Boolean = false;
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
               count = true;
               break;
            default:
               count = false;
         }
         return count;
      }
      
      private static function getString1() : String
      {
         var count2:Date = new Date();
         return "time " + getString2(count2.getHours()) + ":" + getString2(count2.getMinutes()) + ":" + getString2(count2.getSeconds()) + "." + getString2(count2.getMilliseconds()) + textString5;
      }
      
      private static function getString2(param1:Number) : String
      {
         return param1 > 9 ? param1.toString() : "0" + param1.toString();
      }
      
      private static function _vs10180(param1:String) : _kf8255
      {
         var count:Array = param1.match(/^\tat (?:(.+)::)?(.+)\/(.+)\(\)\[(?:(.+)\:(\d+))?\]$/) || new Array();
         var count3:_kf8255 = new _kf8255();
         count3.textString15 = count[1] || "";
         count3.className = count[2] || "";
         count3.textString16 = count[3] || "";
         count3.textString17 = count[4] || "";
         count3.count4 = int(count[5]) || 0;
         return count3;
      }
      
      private static function getString3() : String
      {
         var _kp10497:Error = null;
         var _wg10066:Object = null;
         var stackTrace:String = null;
         var items2:Array = null;
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
               items2 = stackTrace.split("\n");
               if(items2 != null)
               {
                  if(items2.length >= 5)
                  {
                     _qa492 = ThunderboltModel._vs10180(items2[4]);
                  }
                  if(_qa492.className == "AbstractTarget" && items2.length >= 9)
                  {
                     _qa492 = ThunderboltModel._vs10180(items2[8]);
                  }
                  if(_qa492 != null)
                  {
                     message += _qa492.textString15 != "" ? _qa492.textString15 + "." : _qa492.textString15;
                     message += _qa492.className;
                     if(_qa492.count4 > 0)
                     {
                        message += " [" + _qa492.count4 + "]" + ThunderboltModel.textString5;
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
   
   public var textString15:String;
   
   public var className:String;
   
   public var textString16:String;
   
   public var textString17:String;
   
   public var count4:int;
   
   public function _kf8255()
   {
      super();
   }
   
   public function toString() : String
   {
      return "packageName " + this.textString15 + " // className " + this.className + " // methodName " + this.textString16 + " // fileName " + this.textString17 + "// lineNumber " + this.count4;
   }
}
