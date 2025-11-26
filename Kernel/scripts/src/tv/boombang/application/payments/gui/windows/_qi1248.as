package src.tv.boombang.application.payments.gui.windows
{
   import flash.display.*;
   import flash.events.Event;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows._va2030;
   import src.tv.boombang.application.payments.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.datatypes.payments._eb3747;
   import src.tv.boombang.core.datatypes.payments._nv12424;
   import src.tv.boombang.core.datatypes.payments._ql2956;
   
   public class _qi1248 extends _va2030 implements _jk15536
   {
      
      protected var _rf7887:_xg1747;
      
      protected var _jf7011:_om4028;
      
      protected var _ka13499:_om4028;
      
      protected var _xf11202:_bi14833;
      
      protected var _lj470:_om4028;
      
      protected var _mm11058:MovieClip;
      
      protected var _al12756:MovieClip;
      
      protected var _af14672:_yb1551;
      
      protected var _data:_nv12424;
      
      protected var _up11307:String;
      
      protected var _ox1681:_ql2956;
      
      protected var _hh4636:Array;
      
      public function _qi1248(param1:MovieClip, param2:String, param3:_nv12424, param4:_ql2956)
      {
         super(param1,param2);
         this._data = param3;
         this._ox1681 = param4;
         if(_xo6614["details"])
         {
            this._rf7887 = new _xg1747(_xo6614["details"] as MovieClip);
         }
         if(_xo6614["subtitle"])
         {
            this._jf7011 = new _om4028(_xo6614["subtitle"] as MovieClip);
         }
         if(_xo6614["chooseAmount"])
         {
            this._ka13499 = new _om4028(_xo6614["chooseAmount"] as MovieClip);
            this._ka13499.txt = "window.payments." + param3.type + "chooseAmount";
         }
         if(_xo6614["errorText"])
         {
            this._lj470 = new _om4028(_xo6614["errorText"] as MovieClip);
         }
         if(_xo6614["infoText"])
         {
            this._xf11202 = new _bi14833(_xo6614["infoText"] as MovieClip);
            this._xf11202.txt = "";
         }
         if(_xo6614["promo"])
         {
            this._af14672 = new _yb1551(_xo6614["promo"] as MovieClip);
            this._af14672.visible = false;
         }
         this._sa10596._vr14785 = 17774;
         this._sa10596.text = "window.payments.btnContinue";
         this._sa10596.visible = false;
         this._je10796();
      }
      
      private function _je10796() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Number = NaN;
         var _loc3_:_wf3942 = null;
         if(this._ox1681._fd10383 == 0 || this._ox1681._xf6706 == 0)
         {
            this._lj470.txt = "window.payments.externalErrorTextLimitAmount";
            this._lj470.visible = true;
         }
         else
         {
            this._lj470.visible = false;
            if(this._data.change.length > 0)
            {
               this._mm11058 = _xo6614["changeContainer"] as MovieClip;
               this._hh4636 = new Array();
               _loc1_ = 0;
               while(_loc1_ < this._data.change.length)
               {
                  _loc2_ = Number(this._data.change[_loc1_]._sb10522);
                  if(!(this._ox1681._xf6706 >= _loc2_ && this._ox1681._sa10429 >= _loc2_))
                  {
                     break;
                  }
                  _loc3_ = new _wf3942("",this._data.change[_loc1_].request);
                  _loc3_._ml15036 = this._data.change[_loc1_]._gd9340;
                  _loc3_._vn12780 = "$ " + this._data.change[_loc1_]._sb10522 + " " + this._data.change[_loc1_]._cr1013;
                  _loc3_.addEventListener("onSelected",this._vm10004,false,0,true);
                  _loc3_.y = 25 * _loc1_;
                  _loc3_.index = _loc1_;
                  this._hh4636.push(_loc3_);
                  this._mm11058.addChild(_loc3_);
                  _loc1_++;
               }
               this._tk11907();
               this._lt1732();
            }
         }
      }
      
      private function _lt1732() : void
      {
         var _loc1_:_wf3942 = this._hh4636[this._hh4636.length - 1];
         if(_loc1_)
         {
            _loc1_._bq7340 = true;
            this._rx4566(_loc1_);
         }
      }
      
      private function _tk11907() : void
      {
         var _loc1_:_wf3942 = null;
         var _loc3_:int = 0;
         var _loc2_:Number = Number(this._tk10712());
         while(_loc3_ < this._hh4636.length)
         {
            _loc1_ = this._hh4636[_loc3_];
            _loc1_._il5120 = _loc2_;
            _loc3_++;
         }
      }
      
      private function _tk10712() : Number
      {
         var _loc1_:_wf3942 = null;
         var _loc3_:int = 0;
         var _loc2_:Number = 0;
         while(_loc3_ < this._hh4636.length)
         {
            _loc1_ = this._hh4636[_loc3_];
            if(_loc2_ < _loc1_._ks13626)
            {
               _loc2_ = _loc1_._ks13626;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function _vm10004(param1:Event) : void
      {
         if(param1.target is _wf3942)
         {
            this._rx4566(param1.target as _wf3942);
         }
      }
      
      private function _rx4566(param1:_wf3942) : void
      {
         this._up11307 = param1._ga12867;
         _sa10596.visible = true;
         var _loc2_:_eb3747 = this._data.change[param1.index];
         if(Boolean(_loc2_._at985) && Boolean(this._xf11202))
         {
            this._xf11202.txt = _loc2_._at985;
         }
         if(!isNaN(_loc2_._ds9766) || _loc2_._we13394 > 1)
         {
            this._af14672.setData(_loc2_);
            this._af14672.visible = true;
         }
         else
         {
            this._af14672.visible = false;
         }
      }
      
      override protected function validate() : Boolean
      {
         if(this._up11307)
         {
            return true;
         }
         return false;
      }
      
      override protected function _ly12555() : Object
      {
         return this._up11307;
      }
      
      public function set details(param1:String) : void
      {
         this._rf7887.txt = param1;
         this._rf7887._bu2312();
      }
      
      public function set _lq3416(param1:String) : void
      {
         this._jf7011.txt = param1;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         removeChild(_xo6614);
         _xo6614 = null;
      }
   }
}

