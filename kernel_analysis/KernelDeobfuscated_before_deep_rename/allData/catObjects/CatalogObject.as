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
      
      private var _ol11041:Array;
      
      private var _lc9838:Dictionary;
      
      private var _km274:Array;
      
      private var _lp12925:MovieClip;
      
      private var _im11072:int;
      
      public function CatalogObject(param1:_vg2105)
      {
         this._km274 = new Array();
         super();
         this._ol11041 = new Array();
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
         ++this._im11072;
         return this._im11072;
      }
      
      public function _we14328(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:String = null;
         var _loc18_:String = null;
         var _loc19_:String = null;
         var _loc20_:String = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:String = null;
         var _loc25_:String = null;
         var _loc26_:String = null;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc30_:int = 0;
         var _loc31_:Boolean = false;
         var _loc32_:Array = null;
         var _loc33_:* = false;
         var _loc34_:int = 0;
         var _loc35_:Boolean = false;
         var _loc36_:Boolean = false;
         var _loc37_:Array = null;
         var _loc38_:Boolean = false;
         var _loc39_:Boolean = false;
         var _loc40_:int = 0;
         var _loc41_:CatobjectsController = null;
         var _loc42_:Array = null;
         var _loc43_:CatobjectsController = null;
         var _loc45_:int = 0;
         var _loc44_:int = int(param1.shift());
         while(_loc45_ < _loc44_)
         {
            this._im11072 = -1;
            _loc2_ = int(param1[this._yf13218()]);
            _loc3_ = "object." + _loc2_ + ".name";
            _loc4_ = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455(_loc3_);
            _loc5_ = param1[this._yf13218()];
            _loc6_ = "object." + _loc2_ + ".description";
            _loc7_ = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455(_loc6_);
            _loc8_ = int(param1[this._yf13218()]);
            _loc9_ = int(param1[this._yf13218()]);
            _loc10_ = SocketManager._hp13280(param1[this._yf13218()]);
            _loc11_ = param1[this._yf13218()];
            _loc12_ = param1[this._yf13218()];
            _loc13_ = "object." + _loc2_ + ".part.1";
            _loc14_ = "object." + _loc2_ + ".part.2";
            _loc15_ = "object." + _loc2_ + ".part.3";
            _loc16_ = "object." + _loc2_ + ".part.4";
            _loc17_ = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455(_loc13_);
            _loc18_ = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455(_loc14_);
            _loc19_ = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455(_loc15_);
            _loc20_ = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455(_loc16_);
            _loc21_ = Number(param1[this._yf13218()]);
            _loc22_ = Number(param1[this._yf13218()]);
            _loc23_ = Number(param1[this._yf13218()]);
            _loc24_ = param1[this._yf13218()];
            _loc25_ = param1[this._yf13218()];
            _loc26_ = param1[this._yf13218()];
            _loc27_ = int(param1[this._yf13218()]);
            _loc28_ = int(param1[this._yf13218()]);
            _loc29_ = int(param1[this._yf13218()]);
            _loc30_ = int(param1[this._yf13218()]);
            _loc31_ = Boolean(int(param1[this._yf13218()]));
            _loc32_ = SocketManager._hp13280(param1[this._yf13218()]);
            _loc33_ = int(param1[this._yf13218()]) == 1;
            _loc34_ = int(param1[this._yf13218()]);
            _loc35_ = Boolean(int(param1[this._yf13218()]));
            _loc36_ = Boolean(int(param1[this._yf13218()]));
            _loc37_ = SocketManager._hp13280(param1[this._yf13218()]);
            _loc38_ = Boolean(int(param1[this._yf13218()]));
            _loc39_ = Boolean(int(param1[this._yf13218()]));
            _loc40_ = this._im11072 + 1;
            param1.splice(0,_loc40_);
            _loc41_ = new CatobjectsController(_loc2_,_loc4_,_loc7_,_loc5_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc17_,_loc18_,_loc19_,_loc20_,_loc21_,_loc22_,_loc23_,_loc24_,_loc25_,_loc26_,_loc27_,_loc28_,_loc29_,_loc30_,_loc32_,_loc33_,_loc34_,_loc35_,_loc36_,_loc37_,_loc31_,_loc38_,_loc39_);
            this._lc9838[_loc2_] = _loc41_;
            this._ol11041.push(_loc41_);
            _loc45_++;
         }
         _loc45_ = 0;
         while(_loc45_ < param1.length)
         {
            _loc42_ = SocketManager._go4983(param1[_loc45_]);
            _loc43_ = this._lc9838[_loc42_[0]];
            if(_loc43_ != null)
            {
               _loc43_._ea12413 = _loc43_._hy3311;
               _loc43_._hy3311 = _loc42_[1];
               _loc43_._do11526 = _loc43_._sw10424;
               _loc43_._sw10424 = _loc42_[2];
               this._km274.push(_loc42_[0]);
            }
            _loc45_++;
         }
      }
      
      public function _ms14382(param1:int) : CatobjectsController
      {
         return this._lc9838[param1];
      }
      
      public function _nx16094(param1:int) : Array
      {
         var _loc2_:CatobjectsController = null;
         var _loc4_:int = 0;
         var _loc3_:Array = new Array();
         while(_loc4_ < this._ol11041.length)
         {
            _loc2_ = this._ol11041[_loc4_];
            if(_loc2_ != null && (_loc2_._td12337 && _loc2_._kb7753(param1)))
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         if(param1 == 17)
         {
            _loc3_.sort(this._uo8922,Array.DESCENDING | Array.NUMERIC);
         }
         else
         {
            _loc3_.sort(this._bx3558,Array.DESCENDING | Array.NUMERIC);
         }
         return _loc3_;
      }
      
      public function _io380() : Array
      {
         var _loc1_:int = 0;
         var _loc2_:CatobjectsController = null;
         var _loc3_:Array = new Array();
         for each(_loc1_ in this._km274)
         {
            _loc2_ = this._ms14382(_loc1_);
            if(_loc2_ != null)
            {
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_.sort(this._uo8922,Array.NUMERIC);
      }
      
      public function _ge8646(param1:MovieClip) : void
      {
         this._lp12925 = param1;
      }
      
      public function _ha6275() : MovieClip
      {
         var _loc1_:MovieClip = MovieClip(this._lp12925.getChildByName("mcBox"));
         if(_loc1_ != null)
         {
            var _loc2_:MovieClip = StringUtils._so3313(_loc1_);
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
