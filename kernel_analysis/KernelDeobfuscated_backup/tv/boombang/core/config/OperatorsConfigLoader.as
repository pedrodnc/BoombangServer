package src.tv.boombang.core.config
{
   import flash.events.*;
   import flash.net.*;
   import src.config.*;
   import src.tv.boombang.core.datatypes.countries.*;
   import src.tv.boombang.core.datatypes.payments.*;
   
   public class _vr1926 extends EventDispatcher
   {
      
      private var _ym10154:Array;
      
      private var _if1315:XML;
      
      private var _db5068:URLLoader;
      
      private var _ry7960:String;
      
      public function _vr1926()
      {
         this._ry7960 = _cc7688._lc3908;
         super();
      }
      
      public function init() : void
      {
         this._db5068 = new URLLoader();
         this._db5068.addEventListener(Event.COMPLETE,this._rm1014,false,0,true);
         this._db5068.load(new URLRequest(this._ry7960));
      }
      
      private function _rm1014(param1:Event) : void
      {
         var _loc2_:_ta7764 = null;
         var _loc3_:Array = null;
         var _loc6_:int = 0;
         this._db5068.removeEventListener(Event.COMPLETE,this._rm1014);
         this._if1315 = new XML(this._db5068.data);
         this._ym10154 = new Array();
         var _loc4_:XMLList = this._if1315.child("country");
         var _loc5_:Array = this._ny1906(_loc4_);
         while(_loc6_ < _loc4_.length())
         {
            _loc2_ = new _ta7764();
            _loc2_.id = _loc4_[_loc6_].attribute("id").toString();
            if(_loc5_.length > 0 && _loc2_.id != "")
            {
               _loc3_ = this._kd4268(_loc4_[_loc6_].child("method")).concat(_loc5_);
               _loc2_._dl11403 = _loc3_;
            }
            else
            {
               _loc2_._dl11403 = this._kd4268(_loc4_[_loc6_].child("method"));
               if(_loc2_.id == "")
               {
                  _loc2_.id = "others";
               }
            }
            this._ym10154.push(_loc2_);
            _loc6_++;
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function get countries() : Array
      {
         return this._ym10154;
      }
      
      private function _ny1906(param1:XMLList) : Array
      {
         var _loc2_:Array = null;
         var _loc3_:_ta7764 = null;
         var _loc4_:int = 0;
         while(_loc4_ < param1.length())
         {
            _loc3_ = new _ta7764();
            _loc3_.id = param1[_loc4_].attribute("id").toString();
            if(_loc3_.id == "")
            {
               _loc2_ = new Array();
               _loc2_ = this._kd4268(param1[_loc4_].child("method"));
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      private function _kd4268(param1:XMLList) : Array
      {
         var _loc2_:_nv12424 = null;
         var _loc3_:XMLList = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:XMLList = null;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         var _loc9_:_eb3747 = null;
         var _loc10_:_vf14426 = null;
         var _loc14_:int = 0;
         var _loc11_:XMLList = param1;
         var _loc12_:Array = new Array();
         var _loc13_:int = 2;
         while(_loc14_ < _loc11_.length())
         {
            _loc2_ = new _nv12424();
            _loc2_.type = _loc11_[_loc14_].attribute("type").toString();
            _loc2_._rf7615 = _loc11_[_loc14_].attribute("phone").toString();
            _loc2_.text = _loc11_[_loc14_].attribute("text").toString();
            _loc2_._bs1659 = _loc11_[_loc14_].attribute("new").toString() as Boolean;
            _loc2_._vx2773 = _loc11_[_loc14_].attribute("carrier").toString();
            if(_loc2_._vx2773 == "PayByCash")
            {
               _loc2_._pn10903 = 1;
            }
            else if(_loc2_._vx2773 == "PaySafeCard")
            {
               _loc2_._pn10903 = 0;
            }
            else
            {
               _loc2_._pn10903 = _loc13_;
               _loc13_++;
            }
            _loc3_ = _loc11_[_loc14_].child("change");
            _loc4_ = new Array();
            _loc5_ = 0;
            while(_loc5_ < _loc3_.length())
            {
               _loc9_ = new _eb3747();
               _loc9_._sb10522 = Number(_loc3_[_loc5_].attribute("pvp"));
               _loc9_._gd9340 = Number(_loc3_[_loc5_].attribute("credits").toString());
               _loc9_._cr1013 = _loc3_[_loc5_].attribute("currency").toString();
               _loc9_._ds9766 = parseInt(_loc3_[_loc5_].attribute("object").toString());
               _loc9_._we13394 = parseInt(_loc3_[_loc5_].attribute("multiplier"));
               _loc9_.date = _loc3_[_loc5_].attribute("date").toString();
               _loc9_.request = _loc3_[_loc5_].attribute("request").toString();
               _loc9_._at985 = _loc3_[_loc5_];
               _loc4_.push(_loc9_);
               _loc5_++;
            }
            _loc6_ = _loc11_[_loc14_].child("logo");
            _loc7_ = new Array();
            _loc8_ = 0;
            while(_loc8_ < _loc6_.length())
            {
               _loc10_ = new _vf14426();
               _loc10_.country = _loc6_[_loc8_].attribute("country").toString();
               _loc10_.name = _loc6_[_loc8_].attribute("name").toString();
               _loc10_.type = _loc6_[_loc8_].attribute("type").toString();
               _loc10_._ck7386 = _loc6_[_loc8_].attribute("image").toString() == "1" ? true : false;
               _loc7_.push(_loc10_);
               _loc8_++;
            }
            _loc2_._sg7679 = _loc7_;
            _loc2_.change = _loc4_;
            _loc2_.info = _loc11_[_loc14_].child("info");
            _loc12_.push(_loc2_);
            _loc14_++;
         }
         return _loc12_;
      }
   }
}

