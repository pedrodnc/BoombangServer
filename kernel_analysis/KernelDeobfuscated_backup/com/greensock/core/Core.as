package src.com.greensock.core
{
   import src.com.greensock.*;
   
   public class _fr11461
   {
      
      protected static var _qm1377:Boolean;
      
      public static const version:Number = 1.64;
      
      protected var _lq8353:Number;
      
      protected var _gy4373:Boolean;
      
      protected var _lm7650:Number = -1;
      
      public var _jd1214:Object;
      
      public var active:Boolean;
      
      public var gc:Boolean;
      
      public var _jl14602:Boolean;
      
      public var _ed12516:_rr3428;
      
      public var _dl8390:Number;
      
      public var _qt8970:Number;
      
      public var _ip8792:Number;
      
      public var _it15277:Number;
      
      public var _pw3413:Number;
      
      public var _yn10085:Number;
      
      public var _oe10218:Number;
      
      public var _ol13903:Boolean;
      
      public var _cj3209:_fr11461;
      
      public var _el4863:_fr11461;
      
      public var _uu4242:Boolean;
      
      public var _jn8763:Boolean;
      
      public var _ah13203:Boolean;
      
      public var data:*;
      
      public function _fr11461(param1:Number = 0, param2:Object = null)
      {
         super();
         this._jd1214 = param2 != null ? param2 : {};
         if(this._jd1214._hu980)
         {
            this._jd1214 = this._jd1214._jd1214;
         }
         this._it15277 = this._pw3413 = param1;
         this._lq8353 = this._jd1214.delay ? Number(this._jd1214.delay) : 0;
         this._yn10085 = this._jd1214._wk8686 ? Number(this._jd1214._wk8686) : 1;
         this.active = Boolean(param1 == 0 && this._lq8353 == 0 && this._jd1214._ov7511 != false);
         this._ip8792 = this._qt8970 = 0;
         this.data = this._jd1214.data;
         if(!_qm1377)
         {
            if(!isNaN(_di6891._bq2594))
            {
               return;
            }
            _di6891._oh14316();
            _qm1377 = true;
         }
         var _loc3_:_rr3428 = this._jd1214._ed12516 is _rr3428 ? this._jd1214._ed12516 : (this._jd1214._gn2884 ? _di6891._tq10673 : _di6891._am6338);
         _loc3_.insert(this,_loc3_._ip8792);
         if(this._jd1214._jr7569)
         {
            this._ol13903 = true;
         }
         if(this._jd1214.paused)
         {
            this.paused = true;
         }
      }
      
      public function play() : void
      {
         this._jr7569 = false;
         this.paused = false;
      }
      
      public function pause() : void
      {
         this.paused = true;
      }
      
      public function resume() : void
      {
         this.paused = false;
      }
      
      public function _wt7234(param1:Boolean = false, param2:Boolean = true) : void
      {
         this._jr7569 = false;
         this.paused = false;
         this._kk14372(param1 ? -this._lq8353 : 0,param2);
      }
      
      public function reverse(param1:Boolean = true) : void
      {
         this._jr7569 = true;
         if(param1)
         {
            this.paused = false;
         }
         else if(this.gc)
         {
            this.setEnabled(true,false);
         }
      }
      
      public function _ix7668(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function complete(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!param1)
         {
            this._ix7668(this.totalDuration,param2,false);
            return;
         }
         if(this._ed12516._uk7671)
         {
            this.setEnabled(false,false);
         }
         else
         {
            this.active = false;
         }
         if(!param2)
         {
            if(this._jd1214._rm1014 && this._ip8792 >= this._pw3413 && !this._ol13903)
            {
               this._jd1214._rm1014.apply(null,this._jd1214.onCompleteParams);
            }
            else if(this._ol13903 && this._ip8792 == 0 && Boolean(this._jd1214._gh14592))
            {
               this._jd1214._gh14592.apply(null,this._jd1214.onReverseCompleteParams);
            }
         }
      }
      
      public function invalidate() : void
      {
      }
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : Boolean
      {
         this.gc = !param1;
         if(param1)
         {
            this.active = Boolean(!this._ah13203 && this._ip8792 > 0 && this._ip8792 < this._pw3413);
            if(!param2 && this._uu4242)
            {
               this._ed12516.insert(this,this._dl8390 - this._lq8353);
            }
         }
         else
         {
            this.active = false;
            if(!param2 && !this._uu4242)
            {
               this._ed12516.remove(this,true);
            }
         }
         return false;
      }
      
      public function _pp3321() : void
      {
         this.setEnabled(false,false);
      }
      
      protected function _km10061(param1:Boolean = true) : void
      {
         var _loc2_:_fr11461 = param1 ? this : this._ed12516;
         while(_loc2_)
         {
            _loc2_._jn8763 = true;
            _loc2_ = _loc2_._ed12516;
         }
      }
      
      protected function _kk14372(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this._ed12516)
         {
            _loc3_ = this._ah13203 ? this._oe10218 : this._ed12516._ip8792;
            if(this._ol13903)
            {
               _loc4_ = this._jn8763 ? this.totalDuration : this._pw3413;
               this._dl8390 = _loc3_ - (_loc4_ - param1) / this._yn10085;
            }
            else
            {
               this._dl8390 = _loc3_ - param1 / this._yn10085;
            }
            if(!this._ed12516._jn8763)
            {
               this._km10061(false);
            }
            if(this._ip8792 != param1)
            {
               this._ix7668(param1,param2,false);
            }
         }
      }
      
      public function get delay() : Number
      {
         return this._lq8353;
      }
      
      public function set delay(param1:Number) : void
      {
         this.startTime += param1 - this._lq8353;
         this._lq8353 = param1;
      }
      
      public function get duration() : Number
      {
         return this._it15277;
      }
      
      public function set duration(param1:Number) : void
      {
         var _loc2_:Number = param1 / this._it15277;
         this._it15277 = this._pw3413 = param1;
         if(this.active && !this._ah13203 && param1 != 0)
         {
            this._kk14372(this._ip8792 * _loc2_,true);
         }
         this._km10061(false);
      }
      
      public function get totalDuration() : Number
      {
         return this._pw3413;
      }
      
      public function set totalDuration(param1:Number) : void
      {
         this.duration = param1;
      }
      
      public function get _vk15187() : Number
      {
         return this._qt8970;
      }
      
      public function set _vk15187(param1:Number) : void
      {
         this._kk14372(param1,false);
      }
      
      public function get totalTime() : Number
      {
         return this._ip8792;
      }
      
      public function set totalTime(param1:Number) : void
      {
         this._kk14372(param1,false);
      }
      
      public function get startTime() : Number
      {
         return this._dl8390;
      }
      
      public function set startTime(param1:Number) : void
      {
         if(this._ed12516 != null && (param1 != this._dl8390 || this.gc))
         {
            this._ed12516.insert(this,param1 - this._lq8353);
         }
         else
         {
            this._dl8390 = param1;
         }
      }
      
      public function get _jr7569() : Boolean
      {
         return this._ol13903;
      }
      
      public function set _jr7569(param1:Boolean) : void
      {
         if(param1 != this._ol13903)
         {
            this._ol13903 = param1;
            this._kk14372(this._ip8792,true);
         }
      }
      
      public function get paused() : Boolean
      {
         return this._ah13203;
      }
      
      public function set paused(param1:Boolean) : void
      {
         if(param1 != this._ah13203 && Boolean(this._ed12516))
         {
            if(param1)
            {
               this._oe10218 = this._ed12516._ck902;
            }
            else
            {
               this._dl8390 += this._ed12516._ck902 - this._oe10218;
               this._oe10218 = NaN;
               this._km10061(false);
            }
            this._ah13203 = param1;
            this.active = Boolean(!this._ah13203 && this._ip8792 > 0 && this._ip8792 < this._pw3413);
         }
         if(!param1 && this.gc)
         {
            this._kk14372(this._ip8792,false);
            this.setEnabled(true,false);
         }
      }
   }
}

