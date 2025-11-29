package src.com.greensock.core
{
   public class _rr3428 extends _fr11461
   {
      
      protected var _ab10128:_fr11461;
      
      protected var _ry3642:_fr11461;
      
      public var _uk7671:Boolean;
      
      public function _rr3428(param1:Object = null)
      {
         super(0,param1);
      }
      
      public function insert(param1:_fr11461, param2:* = 0) : _fr11461
      {
         if(!param1._uu4242 && Boolean(param1._ed12516))
         {
            param1._ed12516.remove(param1,true);
         }
         param1._ed12516 = this;
         param1._dl8390 = Number(param2) + param1.delay;
         if(param1.gc)
         {
            param1.setEnabled(true,true);
         }
         if(param1._ah13203)
         {
            param1._oe10218 = param1._dl8390 + (this._ck902 - param1._dl8390) / param1._yn10085;
         }
         if(this._ry3642)
         {
            this._ry3642._cj3209 = param1;
         }
         else
         {
            this._ab10128 = param1;
         }
         param1._el4863 = this._ry3642;
         this._ry3642 = param1;
         param1._cj3209 = null;
         param1._uu4242 = false;
         return param1;
      }
      
      public function remove(param1:_fr11461, param2:Boolean = false) : void
      {
         if(param1._uu4242)
         {
            return;
         }
         if(!param2)
         {
            param1.setEnabled(false,true);
         }
         if(param1._cj3209)
         {
            param1._cj3209._el4863 = param1._el4863;
         }
         else if(this._ry3642 == param1)
         {
            this._ry3642 = param1._el4863;
         }
         if(param1._el4863)
         {
            param1._el4863._cj3209 = param1._cj3209;
         }
         else if(this._ab10128 == param1)
         {
            this._ab10128 = param1._cj3209;
         }
         param1._uu4242 = true;
      }
      
      override public function _ix7668(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:_fr11461 = null;
         var _loc6_:_fr11461 = this._ab10128;
         this._ip8792 = param1;
         this._qt8970 = param1;
         while(_loc6_)
         {
            _loc5_ = _loc6_._cj3209;
            if(_loc6_.active || param1 >= _loc6_._dl8390 && !_loc6_._ah13203 && !_loc6_.gc)
            {
               if(!_loc6_._ol13903)
               {
                  _loc6_._ix7668((param1 - _loc6_._dl8390) * _loc6_._yn10085,param2,false);
               }
               else
               {
                  _loc4_ = _loc6_._jn8763 ? _loc6_.totalDuration : _loc6_._pw3413;
                  _loc6_._ix7668(_loc4_ - (param1 - _loc6_._dl8390) * _loc6_._yn10085,param2,false);
               }
            }
            _loc6_ = _loc5_;
         }
      }
      
      public function get _ck902() : Number
      {
         return this._ip8792;
      }
   }
}

