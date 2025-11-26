package src.modules.singleplayerGames
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class _ee10670 extends EventDispatcher implements _bi12161
   {
      
      public static const _mq279:int = 120;
      
      public static const _ap16024:int = 121;
      
      public static const _jj15881:int = 122;
      
      public static const _pj15113:int = 123;
      
      public static const _md6991:int = 124;
      
      public static const _uw13696:int = 125;
      
      private var _gh9645:_jl5367;
      
      public function _ee10670()
      {
         super();
         this._gh9645 = _jl5367.getInstance();
         this._gh9645.addEventListener(_nl11849._vx15305,this._bw11981);
      }
      
      public function get multiuser() : _jl5367
      {
         return this._gh9645;
      }
      
      public function set multiuser(param1:_jl5367) : void
      {
         this._gh9645 = param1;
      }
      
      public function init() : void
      {
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Array = param1._lv9976;
         _loc3_.shift();
         _loc2_ = uint(String(_loc3_[0]).charCodeAt(0));
         switch(_loc2_)
         {
            case _mq279:
            case _ap16024:
            case _jj15881:
            case _pj15113:
            case _md6991:
            case _uw13696:
               dispatchEvent(new _nl11849(_nl11849._vx15305,_loc3_));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this._gh9645.removeEventListener(_nl11849._vx15305,this._bw11981);
      }
      
      public function _yb11684(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._vv15350));
         _loc2_.push(String.fromCharCode(_mq279));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _kq11179(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._vv15350));
         _loc4_.push(String.fromCharCode(_jj15881));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _yo10111(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:Array = new Array();
         _loc5_.push(String.fromCharCode(_jl5367._vv15350));
         _loc5_.push(String.fromCharCode(_pj15113));
         _loc5_.push(param1);
         _loc5_.push(param2);
         _loc5_.push(param3);
         _loc5_.push(param4);
         this.multiuser._er9795(_loc5_,2);
      }
      
      public function _fk15633(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._vv15350));
         _loc3_.push(String.fromCharCode(_ap16024));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function _sr3491(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._vv15350));
         _loc4_.push(String.fromCharCode(_md6991));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _dh11429(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._vv15350));
         _loc4_.push(String.fromCharCode(_uw13696));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,2);
      }
   }
}

