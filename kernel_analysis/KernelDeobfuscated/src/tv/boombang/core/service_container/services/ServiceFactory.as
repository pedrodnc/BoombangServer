package src.tv.boombang.core.service_container.services
{
   import flash.utils.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class ServiceFactory extends ServiceProvider implements Interfaces
   {
      
      public static const textString:String = "es_ES";
      
      public static const textString1:String = "es_CL";
      
      public static const textString2:String = "es_MX";
      
      public static const textString3:String = "en_GB";
      
      private var _nm12239:Dictionary;
      
      private var textString4:String;
      
      private var textString5:String;
      
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
         this.textString5 = param1["lang_resource_id"];
         ServiceLocator._un2007([ResourceManager],this._ge5832);
         return true;
      }
      
      override public function stop() : Boolean
      {
         this.destroy();
         dispatchEvent(new ServiceContainerEvents(this,ServiceContainerEvents.textString1));
         return true;
      }
      
      override public function get loadResource2() : Boolean
      {
         return this._nm12239 != null;
      }
      
      public function getString(param1:Number) : String
      {
         var count:uint = param1 / 1000;
         var count3:uint = param1 / 60 / 1000;
         var count1:uint = param1 / 60 / 60 / 1000;
         var count2:uint = param1 / 24 / 60 / 60 / 1000;
         var count7:uint = count2 / 7;
         var items:uint = count2 / 30;
         var count8:uint = count2 / 365;
         if(count == 1)
         {
            return this.getString1("time.oneSecond");
         }
         if(count3 == 1)
         {
            return this.getString1("time.oneMinute");
         }
         if(count1 == 1)
         {
            return this.getString1("time.oneHour");
         }
         if(count2 == 1)
         {
            return this.getString1("time.oneDay");
         }
         if(count7 == 1)
         {
            return this.getString1("time.oneWeek");
         }
         if(items == 1)
         {
            return this.getString1("time.oneMonth");
         }
         if(count8 == 1)
         {
            return this.getString1("time.oneYear");
         }
         if(count < 120)
         {
            return this.getString1("time.nSeconds",count);
         }
         if(count3 < 100)
         {
            return this.getString1("time.nMinutes",count3);
         }
         if(count1 < 36)
         {
            return this.getString1("time.nHours",count1);
         }
         if(count2 < 10)
         {
            return this.getString1("time.nDays",count2);
         }
         if(count7 < 6)
         {
            return this.getString1("time.nWeeks",count7);
         }
         if(items < 18)
         {
            return this.getString1("time.nMonths",items);
         }
         return this.getString1("time.nYears",count8);
      }
      
      private function _re8838(param1:String) : void
      {
         var count:String = null;
         var count3:String = null;
         var items:uint = 0;
         this._nm12239 = new Dictionary();
         var count1:XML = new XML(param1);
         var count2:XMLList = count1.child("phrase");
         var count7:uint = uint(count2.length());
         while(items < count7)
         {
            count = count2[items].attribute("key").toString();
            count3 = count2[items].attribute("value").toString();
            if(this._nm12239[count] != null)
            {
               throw new Error("Duplicate localization phrase, key=" + count);
            }
            this._nm12239[count] = count3;
            items++;
         }
         dispatchEvent(new ServiceContainerEvents(this,ServiceContainerEvents.textString));
      }
      
      public function getString1(param1:String, ... rest) : String
      {
         if(!this.loadResource2)
         {
            return param1;
         }
         var count3:String = this._nm12239[param1];
         if(count3 == null)
         {
            return param1;
         }
         return this.getString2(count3,rest);
      }
      
      public function getString2(param1:String, param2:Array) : String
      {
         var count3:String = null;
         var items:uint = 0;
         var count6:uint = uint(param1.length);
         var count:* = new String();
         for(; items < count6; items++)
         {
            count3 = param1.charAt(items);
            if(count3 != "%")
            {
               count += count3;
               continue;
            }
            switch(param1.charAt(++items))
            {
               case "i":
               case "d":
                  var _temp_6:* = count;
                  var _temp_3:* = param2;
                  var _temp_2:* = 0;
                  var count8:uint = _temp_2 + 1;
                  count += String(int(_temp_3[_temp_2]));
                  break;
               case "u":
                  var _temp_11:* = count;
                  var _temp_8:* = param2;
                  var _temp_7:* = 0;
                  count8 = _temp_7 + 1;
                  count += String(uint(_temp_8[_temp_7]));
                  break;
               case "f":
               case "g":
                  var _temp_16:* = count;
                  var _temp_13:* = param2;
                  var _temp_12:* = 0;
                  count8 = _temp_12 + 1;
                  count += String(Number(_temp_13[_temp_12]));
                  break;
               case "s":
                  var _temp_20:* = count;
                  var _temp_18:* = param2;
                  var _temp_17:* = 0;
                  count8 = _temp_17 + 1;
                  count += String(_temp_18[_temp_17]);
                  break;
               case "r":
                  var _temp_24:* = count;
                  var _temp_22:* = param2;
                  var _temp_21:* = 0;
                  count8 = _temp_21 + 1;
                  count += String(_temp_22[_temp_21]);
                  break;
               case "%":
                  count += "%";
                  break;
               case "o":
                  var count1:int = int(param2[0][1]);
                  var count2:* = "object." + 0 + ".name";
                  var count7:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1(null);
                  count += String(null);
                  break;
               case "n":
                  count += String(param2[0][0]);
                  break;
               case "x":
                  count += String(param2[0][3]);
                  break;
               case "c":
                  count += String(param2[0][2]);
                  break;
               default:
                  throw new Error("Unexpected format string %" + param1.charAt(items));
            }
         }
         return count;
      }
      
      private function _ge5832() : void
      {
         (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029([this.textString5],this._ot9355);
      }
      
      protected function _ot9355() : void
      {
         this._re8838((ServiceLocator.get(ResourceManager) as ResourceManager).getString2(this.textString5));
      }
   }
}

