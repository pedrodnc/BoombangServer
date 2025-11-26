package src.com.greensock
{
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   import src.com.greensock.core.*;
   
   public class _di6891 extends _fr11461
   {
      
      public static var _tx4332:Function;
      
      public static var _kk7207:Object;
      
      public static var _bq2594:Number;
      
      public static var _am6338:_rr3428;
      
      public static var _tq10673:_rr3428;
      
      public static const version:Number = 11.62;
      
      public static var plugins:Object = {};
      
      public static var _wj12830:Dictionary = new Dictionary(false);
      
      public static var _sv13689:Function = _di6891._ba7031;
      
      public static var _cv9201:Function = _di6891.easeOut;
      
      public static var _om8460:Dictionary = new Dictionary(false);
      
      private static var _shape:Shape = new Shape();
      
      protected static var _yj3575:Object = {
         "ease":1,
         "delay":1,
         "_rx10669":1,
         "_rm1014":1,
         "onCompleteParams":1,
         "_gn2884":1,
         "_cs9098":1,
         "_tu12208":1,
         "onUpdate":1,
         "onUpdateParams":1,
         "_yw11906":1,
         "onStartParams":1,
         "_xb83":1,
         "onInitParams":1,
         "_gh14592":1,
         "onReverseCompleteParams":1,
         "_yy16039":1,
         "onRepeatParams":1,
         "proxiedEase":1,
         "easeParams":1,
         "yoyo":1,
         "_kq3965":1,
         "_jd1431":1,
         "_iw13254":1,
         "_nj3075":1,
         "onRepeatListener":1,
         "_cb11930":1,
         "_wk8686":1,
         "_ov7511":1,
         "repeat":1,
         "repeatDelay":1,
         "_ed12516":1,
         "data":1,
         "paused":1
      };
      
      public var target:Object;
      
      public var _qo5237:Object;
      
      public var ratio:Number = 0;
      
      public var _kg1972:_hp15107;
      
      protected var _ease:Function;
      
      protected var _tc5522:int;
      
      protected var _xs1617:Object;
      
      protected var _wa3429:Boolean;
      
      protected var _in1876:Boolean;
      
      public function _di6891(param1:Object, param2:Number, param3:Object)
      {
         var _loc4_:_di6891 = null;
         super(param2,param3);
         if(param1 == null)
         {
            throw new Error("Cannot tween a null object.");
         }
         this.target = param1;
         if(this.target is _fr11461 && Boolean(this._jd1214._wk8686))
         {
            this._yn10085 = 1;
         }
         this._qo5237 = {};
         this._ease = _cv9201;
         this._tc5522 = Number(param3._rx10669) <= -1 || !_kk7207.enabled && param3._rx10669 > 1 ? int(_kk7207.mode) : int(param3._rx10669);
         var _loc5_:Array = _om8460[param1];
         if(!_loc5_)
         {
            _om8460[param1] = [this];
         }
         else if(this._tc5522 == 1)
         {
            for each(_loc4_ in _loc5_)
            {
               if(!_loc4_.gc)
               {
                  _loc4_.setEnabled(false,false);
               }
            }
            _om8460[param1] = [this];
         }
         else
         {
            _loc5_[_loc5_.length] = this;
         }
         if(this.active || Boolean(this._jd1214._ov7511))
         {
            this._ix7668(0,false,true);
         }
      }
      
      public static function _oh14316() : void
      {
         _bq2594 = 0;
         _am6338 = new _rr3428(null);
         _tq10673 = new _rr3428(null);
         _am6338._dl8390 = getTimer() * 0.001;
         _tq10673._dl8390 = _bq2594;
         _am6338._uk7671 = true;
         _tq10673._uk7671 = true;
         _shape.addEventListener(Event.ENTER_FRAME,_mq2748,false,0,true);
         if(_kk7207 == null)
         {
            _kk7207 = {
               "mode":1,
               "enabled":false
            };
         }
      }
      
      public static function _lk9069(param1:Object, param2:Number, param3:Object) : _di6891
      {
         return new _di6891(param1,param2,param3);
      }
      
      public static function _ro10838(param1:Object, param2:Number, param3:Object) : _di6891
      {
         param3._cs9098 = true;
         if(!("immediateRender" in param3))
         {
            param3._ov7511 = true;
         }
         return new _di6891(param1,param2,param3);
      }
      
      public static function _ms796(param1:Number, param2:Function, param3:Array = null, param4:Boolean = false) : _di6891
      {
         return new _di6891(param2,0,{
            "delay":param1,
            "_rm1014":param2,
            "onCompleteParams":param3,
            "_ov7511":false,
            "_gn2884":param4,
            "_rx10669":0
         });
      }
      
      protected static function _mq2748(param1:Event = null) : void
      {
         var _loc2_:Dictionary = null;
         var _loc3_:Object = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         _am6338._ix7668((getTimer() * 0.001 - _am6338._dl8390) * _am6338._yn10085,false,false);
         _bq2594 += 1;
         _tq10673._ix7668((_bq2594 - _tq10673._dl8390) * _tq10673._yn10085,false,false);
         if(!(_bq2594 % 60))
         {
            _loc2_ = _om8460;
            for(_loc3_ in _loc2_)
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = int(_loc4_.length);
               while(--_loc5_ > -1)
               {
                  if(_di6891(_loc4_[_loc5_]).gc)
                  {
                     _loc4_.splice(_loc5_,1);
                  }
               }
               if(_loc4_.length == 0)
               {
                  delete _loc2_[_loc3_];
               }
            }
         }
      }
      
      public static function _ba7031(param1:Object, param2:Boolean = false, param3:Object = null) : void
      {
         if(param1 in _om8460)
         {
            var _loc4_:Array = _om8460[param1];
            var _loc5_:int = int(_loc4_.length);
            while(true)
            {
               _loc5_ = 0 - 1;
               if(_loc5_ <= -1)
               {
                  break;
               }
               var _loc6_:_di6891 = null[0];
               if(!_loc6_.gc)
               {
                  if(param2)
                  {
                     null.complete(false,false);
                  }
                  if(param3 != null)
                  {
                     null._vt12015(param3);
                  }
                  if(param3 == null || null._kg1972 == null && Boolean(null._jl14602))
                  {
                     null.setEnabled(false,false);
                  }
               }
            }
            if(param3 == null)
            {
               delete _om8460[param1];
            }
         }
      }
      
      protected static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         param1 = 1 - param1 / param4;
         return 1 - param1 * param1;
      }
      
      protected function init() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:* = undefined;
         var _loc4_:Boolean = false;
         var _loc5_:Array = null;
         var _loc6_:_hp15107 = null;
         if(this._jd1214._xb83)
         {
            this._jd1214._xb83.apply(null,this._jd1214.onInitParams);
         }
         if(typeof this._jd1214.ease == "function")
         {
            this._ease = this._jd1214.ease;
         }
         if(this._jd1214.easeParams)
         {
            this._jd1214.proxiedEase = this._ease;
            this._ease = this._ql5171;
         }
         this._kg1972 = null;
         this._qo5237 = {};
         for(_loc1_ in this._jd1214)
         {
            if(!(_loc1_ in _yj3575 && !(_loc1_ == "timeScale" && this.target is _fr11461)))
            {
               if(_loc1_ in plugins && Boolean((_loc3_ = new (plugins[_loc1_] as Class)())._lj3000(this.target,this._jd1214[_loc1_],this)))
               {
                  this._kg1972 = new _hp15107(_loc3_,"changeFactor",0,1,_loc3_._qu12831.length == 1 ? _loc3_._qu12831[0] : "_MULTIPLE_",true,this._kg1972);
                  if(this._kg1972.name == "_MULTIPLE_")
                  {
                     _loc2_ = int(_loc3_._qu12831.length);
                     while(--_loc2_ > -1)
                     {
                        this._qo5237[_loc3_._qu12831[_loc2_]] = this._kg1972;
                     }
                  }
                  else
                  {
                     this._qo5237[this._kg1972.name] = this._kg1972;
                  }
                  if(_loc3_.priority)
                  {
                     this._kg1972.priority = _loc3_.priority;
                     _loc4_ = true;
                  }
                  if(Boolean(_loc3_._ge12341) || Boolean(_loc3_._xl10699))
                  {
                     this._in1876 = true;
                  }
                  this._wa3429 = true;
               }
               else
               {
                  this._kg1972 = new _hp15107(this.target,_loc1_,Number(this.target[_loc1_]),typeof this._jd1214[_loc1_] == "number" ? Number(this._jd1214[_loc1_]) - this.target[_loc1_] : Number(this._jd1214[_loc1_]),_loc1_,false,this._kg1972);
                  this._qo5237[_loc1_] = this._kg1972;
               }
            }
         }
         if(_loc4_)
         {
            _tx4332("onInitAllProps",this);
         }
         if(this._jd1214._cs9098)
         {
            _loc6_ = this._kg1972;
            while(_loc6_)
            {
               _loc6_.start += _loc6_.change;
               _loc6_.change = -_loc6_.change;
               _loc6_ = _loc6_._cj3209;
            }
         }
         _gy4373 = Boolean(this._jd1214.onUpdate != null);
         if(this._xs1617)
         {
            this._vt12015(this._xs1617);
            if(this._kg1972 == null)
            {
               this.setEnabled(false,false);
            }
         }
         if(this._tc5522 > 1 && this._kg1972 && (_loc5_ = _om8460[this.target]) && _loc5_.length > 1)
         {
            if(_kk7207._mg15802(this,this._qo5237,_loc5_,this._tc5522))
            {
               this.init();
            }
         }
         this._jl14602 = true;
      }
      
      override public function _ix7668(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:Number = this._qt8970;
         if(param1 >= this._it15277)
         {
            this._ip8792 = this._qt8970 = this._it15277;
            this.ratio = 1;
            var _loc4_:Boolean = true;
            if(this._it15277 == 0)
            {
               if((param1 == 0 || _lm7650 < 0) && _lm7650 != param1)
               {
                  param3 = true;
               }
               _lm7650 = param1;
            }
         }
         else if(param1 <= 0)
         {
            this._ip8792 = this._qt8970 = this.ratio = 0;
            if(param1 < 0)
            {
               this.active = false;
               if(this._it15277 == 0)
               {
                  if(_lm7650 >= 0)
                  {
                     param3 = true;
                     _loc4_ = true;
                  }
                  _lm7650 = param1;
               }
            }
            if(this._ol13903 && _loc5_ != 0)
            {
               _loc4_ = true;
            }
         }
         else
         {
            this._ip8792 = this._qt8970 = param1;
            this.ratio = this._ease(param1,0,1,this._it15277);
         }
         if(this._qt8970 == _loc5_ && !param3)
         {
            return;
         }
         if(!this._jl14602)
         {
            this.init();
            if(Boolean(this._qt8970))
            {
               this.ratio = this._ease(this._qt8970,0,1,this._it15277);
            }
         }
         if(!this.active && !this._ah13203)
         {
            this.active = true;
         }
         if(_loc5_ == 0 && this._jd1214._yw11906 && (this._qt8970 != 0 || this._it15277 == 0) && !param2)
         {
            this._jd1214._yw11906.apply(null,this._jd1214.onStartParams);
         }
         var _loc6_:_hp15107 = this._kg1972;
         while(_loc6_)
         {
            _loc6_.target[_loc6_.property] = _loc6_.start + this.ratio * _loc6_.change;
            _loc6_ = _loc6_._cj3209;
         }
         if(_gy4373 && !param2)
         {
            this._jd1214.onUpdate.apply(null,this._jd1214.onUpdateParams);
         }
      }
      
      public function _vt12015(param1:Object, param2:Boolean = true) : Boolean
      {
         var _loc3_:String = null;
         if(this._xs1617 == null)
         {
            this._xs1617 = {};
         }
         for(_loc3_ in param1)
         {
            if(_loc3_ in this._qo5237)
            {
               var _loc4_:_hp15107 = this._qo5237[_loc3_];
               if(_loc4_._po6828 && null.name == "_MULTIPLE_")
               {
                  null.target._ox1367(param1);
                  if(null.target._qu12831.length == 0)
                  {
                     null.name = "";
                  }
                  if(_loc3_ != null.target._tb1351 || null.name == "")
                  {
                     delete this._qo5237[_loc3_];
                  }
               }
               if(null.name != "_MULTIPLE_")
               {
                  if(null._cj3209)
                  {
                     null._cj3209._el4863 = null._el4863;
                  }
                  if(null._el4863)
                  {
                     null._el4863._cj3209 = null._cj3209;
                  }
                  else if(this._kg1972 == null)
                  {
                     this._kg1972 = null._cj3209;
                  }
                  if(Boolean(null._po6828) && Boolean(null.target._ge12341))
                  {
                     null.target._ge12341();
                     if(null.target._ca2052)
                     {
                        var _loc5_:Boolean = true;
                     }
                  }
                  delete this._qo5237[_loc3_];
               }
            }
            if(param2 && param1 != this._xs1617)
            {
               this._xs1617[_loc3_] = 1;
            }
         }
         return false;
      }
      
      override public function invalidate() : void
      {
         if(Boolean(this._in1876) && Boolean(this._kg1972))
         {
            _tx4332("onDisable",this);
         }
         this._kg1972 = null;
         this._xs1617 = null;
         _gy4373 = this._jl14602 = this.active = this._in1876 = false;
         this._qo5237 = {};
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : Boolean
      {
         var _loc3_:Array = null;
         if(param1)
         {
            _loc3_ = _di6891._om8460[this.target];
            if(!_loc3_)
            {
               _di6891._om8460[this.target] = [this];
            }
            else
            {
               _loc3_[_loc3_.length] = this;
            }
         }
         super.setEnabled(param1,param2);
         if(Boolean(this._in1876) && Boolean(this._kg1972))
         {
            return _tx4332(param1 ? "onEnable" : "onDisable",this);
         }
         return false;
      }
      
      protected function _ql5171(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return this._jd1214.proxiedEase.apply(null,arguments.concat(this._jd1214.easeParams));
      }
   }
}

