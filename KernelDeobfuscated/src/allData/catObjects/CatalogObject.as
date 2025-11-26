package src.allData.catObjects
{
   import flash.display.*;
   import flash.utils.*;
   import src.multiuser.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.utils.*;
   
   public class CatalogObject
   {
      
      private static var _instance:CatalogObject;
      
      private var items:Array;
      
      private var _lc9838:Dictionary;
      
      private var items1:Array;
      
      private var _lp12925:MovieClip;
      
      private var count:int;
      
      public function CatalogObject(param1:_vg2105)
      {
         this.items1 = new Array();
         super();
         this.items = new Array();
         this._lc9838 = new Dictionary();
      }
      
      public static function getInstance() : CatalogObject
      {
         if(_instance == null)
         {
            _instance = new CatalogObject(new _vg2105());
         }
         return _instance;
      }
      
      private function _yf13218() : int
      {
         ++this.count;
         return this.count;
      }
      
      public function _we14328(param1:Array) : void
      {
         var count:int = 0;
         var count3:* = null;
         var count1:String = null;
         var count2:String = null;
         var count7:* = null;
         var items:String = null;
         var count8:int = 0;
         var count6:int = 0;
         var count:Array = null;
         var count10:String = null;
         var textString12:String = null;
         var isEnabled:* = null;
         var textString14:* = null;
         var count16:* = null;
         var count17:* = null;
         var count18:String = null;
         var count19:String = null;
         var count20:String = null;
         var count21:String = null;
         var count22:Number = NaN;
         var count23:Number = NaN;
         var count24:Number = NaN;
         var textString9:String = null;
         var textString10:String = null;
         var textString11:String = null;
         var count7:int = 0;
         var count8:int = 0;
         var count9:int = 0;
         var count10:int = 0;
         var isEnabled:Boolean = false;
         var items3:Array = null;
         var items16:* = false;
         var count11:int = 0;
         var isEnabled1:Boolean = false;
         var isEnabled2:Boolean = false;
         var items4:Array = null;
         var isEnabled3:Boolean = false;
         var isEnabled4:Boolean = false;
         var count12:int = 0;
         var _loc41_:CatobjectsController = null;
         var items5:Array = null;
         var _loc43_:CatobjectsController = null;
         var count13:int = 0;
         var count14:int = int(param1.shift());
         while(count13 < count14)
         {
            this.count = -1;
            count = int(param1[this._yf13218()]);
            count3 = "object." + count + ".name";
            count1 = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1(count3);
            count2 = param1[this._yf13218()];
            count7 = "object." + count + ".description";
            items = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1(count7);
            count8 = int(param1[this._yf13218()]);
            count6 = int(param1[this._yf13218()]);
            count = SocketManager.getList2(param1[this._yf13218()]);
            count10 = param1[this._yf13218()];
            textString12 = param1[this._yf13218()];
            isEnabled = "object." + count + ".part.1";
            textString14 = "object." + count + ".part.2";
            count16 = "object." + count + ".part.3";
            count17 = "object." + count + ".part.4";
            count18 = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1(isEnabled);
            count19 = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1(textString14);
            count20 = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1(count16);
            count21 = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1(count17);
            count22 = Number(param1[this._yf13218()]);
            count23 = Number(param1[this._yf13218()]);
            count24 = Number(param1[this._yf13218()]);
            textString9 = param1[this._yf13218()];
            textString10 = param1[this._yf13218()];
            textString11 = param1[this._yf13218()];
            count7 = int(param1[this._yf13218()]);
            count8 = int(param1[this._yf13218()]);
            count9 = int(param1[this._yf13218()]);
            count10 = int(param1[this._yf13218()]);
            isEnabled = Boolean(int(param1[this._yf13218()]));
            items3 = SocketManager.getList2(param1[this._yf13218()]);
            items16 = int(param1[this._yf13218()]) == 1;
            count11 = int(param1[this._yf13218()]);
            isEnabled1 = Boolean(int(param1[this._yf13218()]));
            isEnabled2 = Boolean(int(param1[this._yf13218()]));
            items4 = SocketManager.getList2(param1[this._yf13218()]);
            isEnabled3 = Boolean(int(param1[this._yf13218()]));
            isEnabled4 = Boolean(int(param1[this._yf13218()]));
            count12 = this.count + 1;
            param1.splice(0,count12);
            _loc41_ = new CatobjectsController(count,count1,items,count2,count8,count6,count,count10,textString12,count18,count19,count20,count21,count22,count23,count24,textString9,textString10,textString11,count7,count8,count9,count10,items3,items16,count11,isEnabled1,isEnabled2,items4,isEnabled,isEnabled3,isEnabled4);
            this._lc9838[count] = _loc41_;
            this.items.push(_loc41_);
            count13++;
         }
         count13 = 0;
         while(count13 < param1.length)
         {
            items5 = SocketManager.getList1(param1[count13]);
            _loc43_ = this._lc9838[items5[0]];
            if(_loc43_ != null)
            {
               _loc43_.count44 = _loc43_.count42;
               _loc43_.count42 = items5[1];
               _loc43_.count45 = _loc43_.count43;
               _loc43_.count43 = items5[2];
               this.items1.push(items5[0]);
            }
            count13++;
         }
      }
      
      public function _ms14382(param1:int) : CatobjectsController
      {
         return this._lc9838[param1];
      }
      
      public function getList(param1:int) : Array
      {
         var count:CatobjectsController = null;
         var count1:int = 0;
         var count3:Array = new Array();
         while(count1 < this.items.length)
         {
            count = this.items[count1];
            if(count != null && (count.isEnabled && count._kb7753(param1)))
            {
               count3.push(count);
            }
            count1++;
         }
         if(param1 == 17)
         {
            count3.sort(this._uo8922,Array.DESCENDING | Array.NUMERIC);
         }
         else
         {
            count3.sort(this._bx3558,Array.DESCENDING | Array.NUMERIC);
         }
         return count3;
      }
      
      public function getList1() : Array
      {
         var count2:int = 0;
         var count:CatobjectsController = null;
         var count3:Array = new Array();
         for each(count2 in this.items1)
         {
            count = this._ms14382(count2);
            if(count != null)
            {
               count3.push(count);
            }
         }
         return count3.sort(this._uo8922,Array.NUMERIC);
      }
      
      public function _ge8646(param1:MovieClip) : void
      {
         this._lp12925 = param1;
      }
      
      public function _ha6275() : MovieClip
      {
         var count2:MovieClip = MovieClip(this._lp12925.getChildByName("mcBox"));
         if(count2 != null)
         {
            var count:MovieClip = StringUtils._so3313(count2);
         }
         return null;
      }
      
      private function _bx3558(param1:CatobjectsController, param2:CatobjectsController) : int
      {
         if(param1._sb8254 < param2._sb8254)
         {
            return -1;
         }
         if(param1._sb8254 > param2._sb8254)
         {
            return 1;
         }
         return 0;
      }
      
      private function _uo8922(param1:CatobjectsController, param2:CatobjectsController) : int
      {
         if(param1.id < param2.id)
         {
            return -1;
         }
         if(param1.id > param2.id)
         {
            return 1;
         }
         return 0;
      }
   }
}

class _vg2105
{
   
   public function _vg2105()
   {
      super();
   }
}
