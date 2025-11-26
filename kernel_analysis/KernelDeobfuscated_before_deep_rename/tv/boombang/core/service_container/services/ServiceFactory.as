package src.tv.boombang.core.service_container.services
{
   import flash.utils.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class ServiceFactory extends ServiceProvider implements Interfaces
   {
      
      public static const _me6934:String = "es_ES";
      
      public static const _bk11098:String = "es_CL";
      
      public static const _js6510:String = "es_MX";
      
      public static const _xy5004:String = "en_GB";
      
      private var _nm12239:Dictionary;
      
      private var _gb14488:String;
      
      private var _tf3613:String;
      
      public function ServiceFactory()
      {
         super();
      }
      
      public function destroy() : void
      {
         this._nm12239 = null;
      }
      
      override public function start(param1:Object) : Boolean
      {
         if(param1 == null || !param1.hasOwnProperty("lang_resource_id"))
         {
            return false;
         }
         this._tf3613 = param1["lang_resource_id"];
         ServiceLocator._un2007([ResourceManager],this._ge5832);
         return true;
      }
      
      override public function stop() : Boolean
      {
         this.destroy();
         dispatchEvent(new ServiceContainerEvents(this,ServiceContainerEvents._ij6606));
         return true;
      }
      
      override public function get _kn5152() : Boolean
      {
         return this._nm12239 != null;
      }
      
      public function _av6816(param1:Number) : String
      {
         var _loc2_:uint = param1 / 1000;
         var _loc3_:uint = param1 / 60 / 1000;
         var _loc4_:uint = param1 / 60 / 60 / 1000;
         var _loc5_:uint = param1 / 24 / 60 / 60 / 1000;
         var _loc6_:uint = _loc5_ / 7;
         var _loc7_:uint = _loc5_ / 30;
         var _loc8_:uint = _loc5_ / 365;
         if(_loc2_ == 1)
         {
            return this._ad13455("time.oneSecond");
         }
         if(_loc3_ == 1)
         {
            return this._ad13455("time.oneMinute");
         }
         if(_loc4_ == 1)
         {
            return this._ad13455("time.oneHour");
         }
         if(_loc5_ == 1)
         {
            return this._ad13455("time.oneDay");
         }
         if(_loc6_ == 1)
         {
            return this._ad13455("time.oneWeek");
         }
         if(_loc7_ == 1)
         {
            return this._ad13455("time.oneMonth");
         }
         if(_loc8_ == 1)
         {
            return this._ad13455("time.oneYear");
         }
         if(_loc2_ < 120)
         {
            return this._ad13455("time.nSeconds",_loc2_);
         }
         if(_loc3_ < 100)
         {
            return this._ad13455("time.nMinutes",_loc3_);
         }
         if(_loc4_ < 36)
         {
            return this._ad13455("time.nHours",_loc4_);
         }
         if(_loc5_ < 10)
         {
            return this._ad13455("time.nDays",_loc5_);
         }
         if(_loc6_ < 6)
         {
            return this._ad13455("time.nWeeks",_loc6_);
         }
         if(_loc7_ < 18)
         {
            return this._ad13455("time.nMonths",_loc7_);
         }
         return this._ad13455("time.nYears",_loc8_);
      }
      
      private function _re8838(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc7_:uint = 0;
         this._nm12239 = new Dictionary();
         var _loc4_:XML = new XML(param1);
         var _loc5_:XMLList = _loc4_.child("phrase");
         var _loc6_:uint = uint(_loc5_.length());
         while(_loc7_ < _loc6_)
         {
            _loc2_ = _loc5_[_loc7_].attribute("key").toString();
            _loc3_ = _loc5_[_loc7_].attribute("value").toString();
            if(this._nm12239[_loc2_] != null)
            {
               throw new Error("Duplicate localization phrase, key=" + _loc2_);
            }
            this._nm12239[_loc2_] = _loc3_;
            _loc7_++;
         }
         dispatchEvent(new ServiceContainerEvents(this,ServiceContainerEvents._fq14658));
      }
      
      public function _ad13455(param1:String, ... rest) : String
      {
         if(!this._kn5152)
         {
            return param1;
         }
         var _loc3_:String = this._nm12239[param1];
         if(_loc3_ == null)
         {
            return param1;
         }
         return this._ve7337(_loc3_,rest);
      }
      
      public function _ve7337(param1:String, param2:Array) : String
      {
         var _loc3_:String = null;
         var _loc7_:uint = 0;
         var _loc9_:uint = uint(param1.length);
         var _loc10_:* = new String();
         for(; _loc7_ < _loc9_; _loc7_++)
         {
            _loc3_ = param1.charAt(_loc7_);
            if(_loc3_ != "%")
            {
               _loc10_ += _loc3_;
               continue;
            }
            switch(param1.charAt(++_loc7_))
            {
               case "i":
               case "d":
                  var _temp_6:* = _loc10_;
                  var _temp_3:* = param2;
                  var _temp_2:* = 0;
                  var _loc8_:uint = _temp_2 + 1;
                  _loc10_ += String(int(_temp_3[_temp_2]));
                  break;
               case "u":
                  var _temp_11:* = _loc10_;
                  var _temp_8:* = param2;
                  var _temp_7:* = 0;
                  _loc8_ = _temp_7 + 1;
                  _loc10_ += String(uint(_temp_8[_temp_7]));
                  break;
               case "f":
               case "g":
                  var _temp_16:* = _loc10_;
                  var _temp_13:* = param2;
                  var _temp_12:* = 0;
                  _loc8_ = _temp_12 + 1;
                  _loc10_ += String(Number(_temp_13[_temp_12]));
                  break;
               case "s":
                  var _temp_20:* = _loc10_;
                  var _temp_18:* = param2;
                  var _temp_17:* = 0;
                  _loc8_ = _temp_17 + 1;
                  _loc10_ += String(_temp_18[_temp_17]);
                  break;
               case "r":
                  var _temp_24:* = _loc10_;
                  var _temp_22:* = param2;
                  var _temp_21:* = 0;
                  _loc8_ = _temp_21 + 1;
                  _loc10_ += String(_temp_22[_temp_21]);
                  break;
               case "%":
                  _loc10_ += "%";
                  break;
               case "o":
                  var _loc4_:int = int(param2[0][1]);
                  var _loc5_:* = "object." + 0 + ".name";
                  var _loc6_:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455(null);
                  _loc10_ += String(null);
                  break;
               case "n":
                  _loc10_ += String(param2[0][0]);
                  break;
               case "x":
                  _loc10_ += String(param2[0][3]);
                  break;
               case "c":
                  _loc10_ += String(param2[0][2]);
                  break;
               default:
                  throw new Error("Unexpected format string %" + param1.charAt(_loc7_));
            }
         }
         return _loc10_;
      }
      
      private function _ge5832() : void
      {
         (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029([this._tf3613],this._ot9355);
      }
      
      protected function _ot9355() : void
      {
         this._re8838((ServiceLocator.get(ResourceManager) as ResourceManager)._eb710(this._tf3613));
      }
   }
}

