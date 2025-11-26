package src.tv.boombang.application.payments.gui.windows
{
   import flash.display.*;
   import src.config.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.datatypes.payments.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class _hb5002 extends _qi1248 implements _jk15536
   {
      
      private var _yg13667:int;
      
      private var _kw5192:int = 6;
      
      private var _eh3202:Array;
      
      private var _py5898:int;
      
      private var _kg1413:int = 3;
      
      private var _cs15757:Array;
      
      private var _ut299:_xg1747;
      
      public function _hb5002(param1:MovieClip, param2:String, param3:_nv12424, param4:_ql2956)
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:_vf14426 = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc15_:int = 0;
         this._eh3202 = new Array();
         this._cs15757 = new Array();
         super(param1,param2,param3,param4);
         this._ut299 = new _xg1747(_xo6614["getInHere"] as MovieClip);
         this._ut299.visible = false;
         if(param3._vx2773 == "PaySafeCard")
         {
            _loc5_ = (_lh7543.get(_dw1395) as _dw1395)._ad13455("window.payments.foundYourShops");
            _loc6_ = (_lh7543.get(_dw1395) as _dw1395)._ad13455("window.payments.here");
            this._ut299.txt = "<font color=\'#00456E\'>" + _loc5_ + "</font><font color=\'#FFFFFF\'><a href=\'http://www.paysafecard.com\' target=\'_blank\'>" + _loc6_ + "</a></font>";
            this._ut299.visible = true;
            this._ut299._xq11642();
         }
         var _loc11_:Array = this._dc12540(param3._sg7679);
         var _loc12_:Array = this._dt2281(_loc11_);
         var _loc13_:Array = this._tp56(_loc11_);
         var _loc14_:* = "";
         if(_loc11_.length > 0)
         {
            _loc7_ = (_lh7543.get(_dw1395) as _dw1395)._ad13455("window.payments.buyItIn");
            _loc14_ = "<font color=\'#FFFFFF\'>" + _loc7_ + " </font><font color=\'#00456E\'>";
         }
         while(_loc15_ < _loc12_.length)
         {
            _loc8_ = _loc12_[_loc15_];
            _loc9_ = ", ";
            if(_loc15_ == _loc12_.length - 2)
            {
               _loc9_ = " & ";
            }
            _loc14_ += this._xn3160(_loc8_.name,"_"," ");
            if(_loc15_ != _loc12_.length - 1)
            {
               _loc14_ += _loc9_;
            }
            if(_loc8_._ck7386)
            {
               this._sm1133(_loc8_.name);
            }
            _loc15_++;
         }
         if(_loc13_.length > 0)
         {
            _loc10_ = 0;
            while(_loc10_ < _loc13_.length)
            {
               this._iy3031(_loc13_[_loc10_].name);
               _loc10_++;
            }
         }
         else
         {
            _rf7887.view.y = 7;
         }
         if(_loc14_ == "" && _data._ti8365 == "others")
         {
            _rf7887.view.y = 7;
            details = "window.payments.countryNotDetected";
         }
         else if(_loc14_ == "")
         {
            _rf7887.view.y = 7;
            details = "window.payments.countryWithOutShop";
         }
         else
         {
            _loc14_ += "</font>";
            details = _loc14_;
         }
      }
      
      private function _dt2281(param1:Array) : Array
      {
         var _loc2_:_vf14426 = null;
         var _loc4_:int = 0;
         var _loc3_:Array = new Array();
         while(_loc4_ < param1.length)
         {
            _loc2_ = param1[_loc4_];
            if(_loc2_.type == _vf14426._hg3451)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      private function _tp56(param1:Array) : Array
      {
         var _loc2_:_vf14426 = null;
         var _loc4_:int = 0;
         var _loc3_:Array = new Array();
         while(_loc4_ < param1.length)
         {
            _loc2_ = param1[_loc4_];
            if(_loc2_.type == _vf14426._ax5722)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      private function _sm1133(param1:String) : void
      {
         var _loc2_:Object = null;
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         var _loc5_:_eo12332 = null;
         if(this._yg13667 < this._kw5192)
         {
            _loc2_ = new Object();
            _loc2_._kp2503 = _cc7688._kx13603 + "shops/" + param1.toLowerCase() + ".jpg";
            _loc3_ = new MovieClip();
            _loc4_ = new MovieClip();
            _loc4_.name = "iconImage";
            _loc3_.addChild(_loc4_);
            _loc5_ = new _eo12332(_loc3_,_loc2_,1,_eo12332.TOP_LEFT);
            _loc5_.x = 52 * this._yg13667 + 15 * this._yg13667 + 7;
            _loc5_.y = 90;
            _xo6614.addChild(_loc5_);
            this._eh3202.push(_loc5_);
            ++this._yg13667;
         }
      }
      
      private function _iy3031(param1:String) : void
      {
         var _loc2_:Object = null;
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         var _loc5_:_eo12332 = null;
         if(this._py5898 < this._kg1413)
         {
            _loc2_ = new Object();
            _loc2_._kp2503 = _cc7688._kx13603 + "logos/" + param1.toLowerCase() + ".jpg";
            _loc3_ = new MovieClip();
            _loc4_ = new MovieClip();
            _loc4_.name = "iconImage";
            _loc3_.addChild(_loc4_);
            _loc3_.scaleX = 0.8;
            _loc3_.scaleY = 0.8;
            _loc5_ = new _eo12332(_loc3_,_loc2_,1,_eo12332.TOP_LEFT);
            _loc5_.x = 120 * this._py5898 + 15 * this._py5898 + 6;
            _loc5_.y = 7;
            _xo6614.addChild(_loc5_);
            this._cs15757.push(_loc5_);
            ++this._py5898;
         }
      }
      
      private function _dc12540(param1:Array) : Array
      {
         var _loc2_:_vf14426 = null;
         var _loc4_:int = 0;
         var _loc3_:Array = new Array();
         while(_loc4_ < param1.length)
         {
            _loc2_ = param1[_loc4_];
            if(_loc2_.country == this._data._ti8365)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      private function _xn3160(param1:String, param2:String, param3:String) : String
      {
         var _loc4_:Array = param1.split(param2);
         param1 = "";
         var _loc5_:Number = 0;
         while(_loc5_ < _loc4_.length)
         {
            param1 += _loc5_ < _loc4_.length - 1 ? _loc4_[_loc5_] + param3 : _loc4_[_loc5_];
            _loc5_++;
         }
         return param1;
      }
      
      override public function destroy() : void
      {
         var _loc1_:_eo12332 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._eh3202.length)
         {
            _loc1_ = this._eh3202[_loc2_];
            if(_loc1_)
            {
               _loc1_.destroy();
               _xo6614.removeChild(_loc1_);
               _loc1_ = null;
            }
            _loc2_++;
         }
         super.destroy();
      }
   }
}

