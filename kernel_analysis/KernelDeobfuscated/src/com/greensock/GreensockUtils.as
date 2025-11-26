package src.com.greensock
{
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   import src.com.greensock.core.*;
   
   public class GreensockUtils extends Core
   {
      
      public static var _tx4332:Function;
      
      public static var _kk7207:Object;
      
      public static var count:Number;
      
      public static var _am6338:Core;
      
      public static var _tq10673:Core;
      
      public static const version:Number = 11.62;
      
      public static var plugins:Object = {};
      
      public static var _wj12830:Dictionary = new Dictionary(false);
      
      public static var _sv13689:Function = GreensockUtils._ba7031;
      
      public static var _cv9201:Function = GreensockUtils.easeOut;
      
      public static var _om8460:Dictionary = new Dictionary(false);
      
      private static var _shape:Shape = new Shape();
      
      protected static var _yj3575:Object = {
         "ease":1,
         "delay":1,
         "_rx10669":1,
         "decrypt":1,
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
      
      public var _kg1972:Core;
      
      protected var _ease:Function;
      
      protected var count1:int;
      
      protected var _xs1617:Object;
      
      protected var isEnabled:Boolean;
      
      protected var isEnabled1:Boolean;
      
      public function GreensockUtils(param1:Object, param2:Number, param3:Object)
      {
         var count1:GreensockUtils = null;
         super(param2,param3);
         if(param1 == null)
         {
            throw new Error("Cannot tween a null object.");
         }
         this.target = param1;
         if(this.target is Core && Boolean(this._jd1214._wk8686))
         {
            this.count7 = 1;
         }
         this._qo5237 = {};
         this._ease = _cv9201;
         this.count1 = Number(param3._rx10669) <= -1 || !_kk7207.enabled && param3._rx10669 > 1 ? int(_kk7207.mode) : int(param3._rx10669);
         var count2:Array = _om8460[param1];
         if(!count2)
         {
            _om8460[param1] = [this];
         }
         else if(this.count1 == 1)
         {
            for each(count1 in count2)
            {
               if(!count1.gc)
               {
                  count1.setEnabled(false,false);
               }
            }
            _om8460[param1] = [this];
         }
         else
         {
            count2[count2.length] = this;
         }
         if(this.active || Boolean(this._jd1214._ov7511))
         {
            this._ix7668(0,false,true);
         }
      }
      
      public static function _oh14316() : void
      {
         count = 0;
         _am6338 = new Core(null);
         _tq10673 = new Core(null);
         _am6338.count2 = getTimer() * 0.001;
         _tq10673.count2 = count;
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
      
      public static function _lk9069(param1:Object, param2:Number, param3:Object) : GreensockUtils
      {
         return new GreensockUtils(param1,param2,param3);
      }
      
      public static function render(param1:Object, param2:Number, param3:Object) : GreensockUtils
      {
         param3._cs9098 = true;
         if(!("immediateRender" in param3))
         {
            param3._ov7511 = true;
         }
         return new GreensockUtils(param1,param2,param3);
      }
      
      public static function _ms796(param1:Number, param2:Function, param3:Array = null, param4:Boolean = false) : GreensockUtils
      {
         return new GreensockUtils(param2,0,{
            "delay":param1,
            "decrypt":param2,
            "onCompleteParams":param3,
            "_ov7511":false,
            "_gn2884":param4,
            "_rx10669":0
         });
      }
      
      protected static function _mq2748(param1:Event = null) : void
      {
         var count:Dictionary = null;
         var count3:Object = null;
         var count1:Array = null;
         var count2:int = 0;
         _am6338._ix7668((getTimer() * 0.001 - _am6338.count2) * _am6338.count7,false,false);
         count += 1;
         _tq10673._ix7668((count - _tq10673.count2) * _tq10673.count7,false,false);
         if(!(count % 60))
         {
            count = _om8460;
            for(count3 in count)
            {
               count1 = count[count3];
               count2 = int(count1.length);
               while(--count2 > -1)
               {
                  if(GreensockUtils(count1[count2]).gc)
                  {
                     count1.splice(count2,1);
                  }
               }
               if(count1.length == 0)
               {
                  delete count[count3];
               }
            }
         }
      }
      
      public static function _ba7031(param1:Object, param2:Boolean = false, param3:Object = null) : void
      {
         if(param1 in _om8460)
         {
            var count1:Array = _om8460[param1];
            var count2:int = int(count1.length);
            while(true)
            {
               count2 = 0 - 1;
               if(count2 <= -1)
               {
                  break;
               }
               var count7:GreensockUtils = null[0];
               if(!count7.gc)
               {
                  if(param2)
                  {
                     null.complete(false,false);
                  }
                  if(param3 != null)
                  {
                     null._vt12015(param3);
                  }
                  if(param3 == null || null._kg1972 == null && Boolean(null.isEnabled2))
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
         var count2:String = null;
         var count:int = 0;
         var count3:* = undefined;
         var count1:Boolean = false;
         var count2:Array = null;
         var count7:Core = null;
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
         for(count2 in this._jd1214)
         {
            if(!(count2 in _yj3575 && !(count2 == "timeScale" && this.target is Core)))
            {
               if(count2 in plugins && Boolean((count3 = new (plugins[count2] as Class)())._lj3000(this.target,this._jd1214[count2],this)))
               {
                  this._kg1972 = new Core(count3,"changeFactor",0,1,count3._qu12831.length == 1 ? count3._qu12831[0] : "_MULTIPLE_",true,this._kg1972);
                  if(this._kg1972.name == "_MULTIPLE_")
                  {
                     count = int(count3._qu12831.length);
                     while(--count > -1)
                     {
                        this._qo5237[count3._qu12831[count]] = this._kg1972;
                     }
                  }
                  else
                  {
                     this._qo5237[this._kg1972.name] = this._kg1972;
                  }
                  if(count3.priority)
                  {
                     this._kg1972.priority = count3.priority;
                     count1 = true;
                  }
                  if(Boolean(count3._ge12341) || Boolean(count3._xl10699))
                  {
                     this.isEnabled1 = true;
                  }
                  this.isEnabled = true;
               }
               else
               {
                  this._kg1972 = new Core(this.target,count2,Number(this.target[count2]),typeof this._jd1214[count2] == "number" ? Number(this._jd1214[count2]) - this.target[count2] : Number(this._jd1214[count2]),count2,false,this._kg1972);
                  this._qo5237[count2] = this._kg1972;
               }
            }
         }
         if(count1)
         {
            _tx4332("onInitAllProps",this);
         }
         if(this._jd1214._cs9098)
         {
            count7 = this._kg1972;
            while(count7)
            {
               count7.start += count7.change;
               count7.change = -count7.change;
               count7 = count7._cj3209;
            }
         }
         isEnabled1 = Boolean(this._jd1214.onUpdate != null);
         if(this._xs1617)
         {
            this._vt12015(this._xs1617);
            if(this._kg1972 == null)
            {
               this.setEnabled(false,false);
            }
         }
         if(this.count1 > 1 && this._kg1972 && (count2 = _om8460[this.target]) && count2.length > 1)
         {
            if(_kk7207._mg15802(this,this._qo5237,count2,this.count1))
            {
               this.init();
            }
         }
         this.isEnabled2 = true;
      }
      
      override public function _ix7668(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var count2:Number = this.count3;
         if(param1 >= this.count5)
         {
            this.count4 = this.count3 = this.count5;
            this.ratio = 1;
            var count1:Boolean = true;
            if(this.count5 == 0)
            {
               if((param1 == 0 || count1 < 0) && count1 != param1)
               {
                  param3 = true;
               }
               count1 = param1;
            }
         }
         else if(param1 <= 0)
         {
            this.count4 = this.count3 = this.ratio = 0;
            if(param1 < 0)
            {
               this.active = false;
               if(this.count5 == 0)
               {
                  if(count1 >= 0)
                  {
                     param3 = true;
                     count1 = true;
                  }
                  count1 = param1;
               }
            }
            if(this.isEnabled3 && count2 != 0)
            {
               count1 = true;
            }
         }
         else
         {
            this.count4 = this.count3 = param1;
            this.ratio = this._ease(param1,0,1,this.count5);
         }
         if(this.count3 == count2 && !param3)
         {
            return;
         }
         if(!this.isEnabled2)
         {
            this.init();
            if(Boolean(this.count3))
            {
               this.ratio = this._ease(this.count3,0,1,this.count5);
            }
         }
         if(!this.active && !this.isEnabled6)
         {
            this.active = true;
         }
         if(count2 == 0 && this._jd1214._yw11906 && (this.count3 != 0 || this.count5 == 0) && !param2)
         {
            this._jd1214._yw11906.apply(null,this._jd1214.onStartParams);
         }
         var count7:Core = this._kg1972;
         while(count7)
         {
            count7.target[count7.property] = count7.start + this.ratio * count7.change;
            count7 = count7._cj3209;
         }
         if(isEnabled1 && !param2)
         {
            this._jd1214.onUpdate.apply(null,this._jd1214.onUpdateParams);
         }
      }
      
      public function _vt12015(param1:Object, param2:Boolean = true) : Boolean
      {
         var count3:String = null;
         if(this._xs1617 == null)
         {
            this._xs1617 = {};
         }
         for(count3 in param1)
         {
            if(count3 in this._qo5237)
            {
               var count1:Core = this._qo5237[count3];
               if(count1._po6828 && null.name == "_MULTIPLE_")
               {
                  null.target._ox1367(param1);
                  if(null.target._qu12831.length == 0)
                  {
                     null.name = "";
                  }
                  if(count3 != null.target._tb1351 || null.name == "")
                  {
                     delete this._qo5237[count3];
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
                        var count2:Boolean = true;
                     }
                  }
                  delete this._qo5237[count3];
               }
            }
            if(param2 && param1 != this._xs1617)
            {
               this._xs1617[count3] = 1;
            }
         }
         return false;
      }
      
      override public function invalidate() : void
      {
         if(Boolean(this.isEnabled1) && Boolean(this._kg1972))
         {
            _tx4332("onDisable",this);
         }
         this._kg1972 = null;
         this._xs1617 = null;
         isEnabled1 = this.isEnabled2 = this.active = this.isEnabled1 = false;
         this._qo5237 = {};
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : Boolean
      {
         var count3:Array = null;
         if(param1)
         {
            count3 = GreensockUtils._om8460[this.target];
            if(!count3)
            {
               GreensockUtils._om8460[this.target] = [this];
            }
            else
            {
               count3[count3.length] = this;
            }
         }
         super.setEnabled(param1,param2);
         if(Boolean(this.isEnabled1) && Boolean(this._kg1972))
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

