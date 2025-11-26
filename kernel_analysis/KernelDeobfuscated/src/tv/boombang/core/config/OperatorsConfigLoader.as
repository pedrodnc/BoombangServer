package src.tv.boombang.core.config
{
   import flash.events.*;
   import flash.net.*;
   import src.config.*;
   import src.tv.boombang.core.datatypes.countries.*;
   import src.tv.boombang.core.datatypes.payments.*;
   
   public class OperatorsConfigLoader extends EventDispatcher
   {
      
      private var items:Array;
      
      private var _if1315:XML;
      
      private var _db5068:URLLoader;
      
      private var urlString:String;
      
      public function OperatorsConfigLoader()
      {
         this.urlString = Configuration.urlString3;
         super();
      }
      
      public function init() : void
      {
         this._db5068 = new URLLoader();
         this._db5068.addEventListener(Event.COMPLETE,this.decrypt,false,0,true);
         this._db5068.load(new URLRequest(this.urlString));
      }
      
      private function decrypt(param1:Event) : void
      {
         var count:CountriesModel = null;
         var count3:Array = null;
         var count7:int = 0;
         this._db5068.removeEventListener(Event.COMPLETE,this.decrypt);
         this._if1315 = new XML(this._db5068.data);
         this.items = new Array();
         var count1:XMLList = this._if1315.child("country");
         var count2:Array = this.getList(count1);
         while(count7 < count1.length())
         {
            count = new CountriesModel();
            count.id = count1[count7].attribute("id").toString();
            if(count2.length > 0 && count.id != "")
            {
               count3 = this.getList1(count1[count7].child("method")).concat(count2);
               count._dl11403 = count3;
            }
            else
            {
               count._dl11403 = this.getList1(count1[count7].child("method"));
               if(count.id == "")
               {
                  count.id = "others";
               }
            }
            this.items.push(count);
            count7++;
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function get countries() : Array
      {
         return this.items;
      }
      
      private function getList(param1:XMLList) : Array
      {
         var count:Array = null;
         var count3:CountriesModel = null;
         var count1:int = 0;
         while(count1 < param1.length())
         {
            count3 = new CountriesModel();
            count3.id = param1[count1].attribute("id").toString();
            if(count3.id == "")
            {
               count = new Array();
               count = this.getList1(param1[count1].child("method"));
            }
            count1++;
         }
         return count;
      }
      
      private function getList1(param1:XMLList) : Array
      {
         var count:PaymentsModel = null;
         var count3:XMLList = null;
         var count1:Array = null;
         var count2:int = 0;
         var count7:XMLList = null;
         var items:Array = null;
         var count8:int = 0;
         var count6:PaymentsModel = null;
         var count:PaymentsModel = null;
         var textString14:int = 0;
         var count10:XMLList = param1;
         var textString12:Array = new Array();
         var isEnabled:int = 2;
         while(textString14 < count10.length())
         {
            count = new PaymentsModel();
            count.type = count10[textString14].attribute("type").toString();
            count._rf7615 = count10[textString14].attribute("phone").toString();
            count.text = count10[textString14].attribute("text").toString();
            count._bs1659 = count10[textString14].attribute("new").toString() as Boolean;
            count._vx2773 = count10[textString14].attribute("carrier").toString();
            if(count._vx2773 == "PayByCash")
            {
               count._pn10903 = 1;
            }
            else if(count._vx2773 == "PaySafeCard")
            {
               count._pn10903 = 0;
            }
            else
            {
               count._pn10903 = isEnabled;
               isEnabled++;
            }
            count3 = count10[textString14].child("change");
            count1 = new Array();
            count2 = 0;
            while(count2 < count3.length())
            {
               count6 = new PaymentsModel();
               count6._sb10522 = Number(count3[count2].attribute("pvp"));
               count6._gd9340 = Number(count3[count2].attribute("credits").toString());
               count6._cr1013 = count3[count2].attribute("currency").toString();
               count6._ds9766 = parseInt(count3[count2].attribute("object").toString());
               count6._we13394 = parseInt(count3[count2].attribute("multiplier"));
               count6.date = count3[count2].attribute("date").toString();
               count6.request = count3[count2].attribute("request").toString();
               count6._at985 = count3[count2];
               count1.push(count6);
               count2++;
            }
            count7 = count10[textString14].child("logo");
            items = new Array();
            count8 = 0;
            while(count8 < count7.length())
            {
               count = new PaymentsModel();
               count.country = count7[count8].attribute("country").toString();
               count.name = count7[count8].attribute("name").toString();
               count.type = count7[count8].attribute("type").toString();
               count._ck7386 = count7[count8].attribute("image").toString() == "1" ? true : false;
               items.push(count);
               count8++;
            }
            count._sg7679 = items;
            count.change = count1;
            count.info = count10[textString14].child("info");
            textString12.push(count);
            textString14++;
         }
         return textString12;
      }
   }
}

