package src.com.greensock.core
{
   import src.com.greensock.*;
   
   public class Core
   {
      
      protected static var isEnabled:Boolean;
      
      public static const version:Number = 1.64;
      
      protected var count:Number;
      
      protected var isEnabled1:Boolean;
      
      protected var count1:Number = -1;
      
      public var _jd1214:Object;
      
      public var active:Boolean;
      
      public var gc:Boolean;
      
      public var isEnabled2:Boolean;
      
      public var _ed12516:Core;
      
      public var count2:Number;
      
      public var count3:Number;
      
      public var count4:Number;
      
      public var count5:Number;
      
      public var count6:Number;
      
      public var count7:Number;
      
      public var count8:Number;
      
      public var isEnabled3:Boolean;
      
      public var _cj3209:Core;
      
      public var _el4863:Core;
      
      public var isEnabled4:Boolean;
      
      public var isEnabled5:Boolean;
      
      public var isEnabled6:Boolean;
      
      public var data:*;
      
      public function Core(param1:Number = 0, param2:Object = null)
      {
         super();
         this._jd1214 = param2 != null ? param2 : {};
         if(this._jd1214._hu980)
         {
            this._jd1214 = this._jd1214._jd1214;
         }
         this.count5 = this.count6 = param1;
         this.count = this._jd1214.delay ? Number(this._jd1214.delay) : 0;
         this.count7 = this._jd1214._wk8686 ? Number(this._jd1214._wk8686) : 1;
         this.active = Boolean(param1 == 0 && this.count == 0 && this._jd1214._ov7511 != false);
         this.count4 = this.count3 = 0;
         this.data = this._jd1214.data;
         if(!isEnabled)
         {
            if(!isNaN(GreensockUtils.count))
            {
               return;
            }
            GreensockUtils._oh14316();
            isEnabled = true;
         }
         var count3:Core = this._jd1214._ed12516 is Core ? this._jd1214._ed12516 : (this._jd1214._gn2884 ? GreensockUtils._tq10673 : GreensockUtils._am6338);
         count3.insert(this,count3.count4);
         if(this._jd1214._jr7569)
         {
            this.isEnabled3 = true;
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
         this._kk14372(param1 ? -this.count : 0,param2);
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
            if(this._jd1214.decrypt && this.count4 >= this.count6 && !this.isEnabled3)
            {
               this._jd1214.decrypt.apply(null,this._jd1214.onCompleteParams);
            }
            else if(this.isEnabled3 && this.count4 == 0 && Boolean(this._jd1214._gh14592))
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
            this.active = Boolean(!this.isEnabled6 && this.count4 > 0 && this.count4 < this.count6);
            if(!param2 && this.isEnabled4)
            {
               this._ed12516.insert(this,this.count2 - this.count);
            }
         }
         else
         {
            this.active = false;
            if(!param2 && !this.isEnabled4)
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
         var count:Core = param1 ? this : this._ed12516;
         while(count)
         {
            count.isEnabled5 = true;
            count = count._ed12516;
         }
      }
      
      protected function _kk14372(param1:Number, param2:Boolean = false) : void
      {
         var count3:Number = NaN;
         var count1:Number = NaN;
         if(this._ed12516)
         {
            count3 = this.isEnabled6 ? this.count8 : this._ed12516.count4;
            if(this.isEnabled3)
            {
               count1 = this.isEnabled5 ? this.totalDuration : this.count6;
               this.count2 = count3 - (count1 - param1) / this.count7;
            }
            else
            {
               this.count2 = count3 - param1 / this.count7;
            }
            if(!this._ed12516.isEnabled5)
            {
               this._km10061(false);
            }
            if(this.count4 != param1)
            {
               this._ix7668(param1,param2,false);
            }
         }
      }
      
      public function get delay() : Number
      {
         return this.count;
      }
      
      public function set delay(param1:Number) : void
      {
         this.startTime += param1 - this.count;
         this.count = param1;
      }
      
      public function get duration() : Number
      {
         return this.count5;
      }
      
      public function set duration(param1:Number) : void
      {
         var count:Number = param1 / this.count5;
         this.count5 = this.count6 = param1;
         if(this.active && !this.isEnabled6 && param1 != 0)
         {
            this._kk14372(this.count4 * count,true);
         }
         this._km10061(false);
      }
      
      public function get totalDuration() : Number
      {
         return this.count6;
      }
      
      public function set totalDuration(param1:Number) : void
      {
         this.duration = param1;
      }
      
      public function get _vk15187() : Number
      {
         return this.count3;
      }
      
      public function set _vk15187(param1:Number) : void
      {
         this._kk14372(param1,false);
      }
      
      public function get totalTime() : Number
      {
         return this.count4;
      }
      
      public function set totalTime(param1:Number) : void
      {
         this._kk14372(param1,false);
      }
      
      public function get startTime() : Number
      {
         return this.count2;
      }
      
      public function set startTime(param1:Number) : void
      {
         if(this._ed12516 != null && (param1 != this.count2 || this.gc))
         {
            this._ed12516.insert(this,param1 - this.count);
         }
         else
         {
            this.count2 = param1;
         }
      }
      
      public function get _jr7569() : Boolean
      {
         return this.isEnabled3;
      }
      
      public function set _jr7569(param1:Boolean) : void
      {
         if(param1 != this.isEnabled3)
         {
            this.isEnabled3 = param1;
            this._kk14372(this.count4,true);
         }
      }
      
      public function get paused() : Boolean
      {
         return this.isEnabled6;
      }
      
      public function set paused(param1:Boolean) : void
      {
         if(param1 != this.isEnabled6 && Boolean(this._ed12516))
         {
            if(param1)
            {
               this.count8 = this._ed12516._ck902;
            }
            else
            {
               this.count2 += this._ed12516._ck902 - this.count8;
               this.count8 = NaN;
               this._km10061(false);
            }
            this.isEnabled6 = param1;
            this.active = Boolean(!this.isEnabled6 && this.count4 > 0 && this.count4 < this.count6);
         }
         if(!param1 && this.gc)
         {
            this._kk14372(this.count4,false);
            this.setEnabled(true,false);
         }
      }
   }
}

