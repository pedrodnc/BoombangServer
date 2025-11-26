package src.modules.member
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class _ld11044 extends EventDispatcher implements _bi12161
   {
      
      public static const _sa1658:int = 120;
      
      public static const _sk8258:int = 121;
      
      public static const _mx15219:int = 122;
      
      public static const _im2881:int = 123;
      
      private var _gh9645:_jl5367;
      
      public function _ld11044()
      {
         super();
         this._gh9645 = _jl5367.getInstance();
         this._gh9645.addEventListener(_lq6194._re11635,this._bw11981);
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
      
      public function destroy() : void
      {
         this._gh9645.removeEventListener(_lq6194._re11635,this._bw11981);
      }
      
      public function _aa3338(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._jk8596));
         _loc2_.push(String.fromCharCode(_mx15219));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _kx8423() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(_jl5367._jk8596));
         _loc1_.push(String.fromCharCode(_im2881));
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:Array = param1._lv9976;
         var _loc3_:int = int(String(_loc2_[0]).charCodeAt(0));
         var _loc4_:int = int(String(_loc2_[1]).charCodeAt(0));
         _loc2_.shift();
         switch(_loc4_)
         {
            case _mx15219:
            case _sa1658:
            case _im2881:
               dispatchEvent(new _lq6194(_lq6194._ll6671,_loc2_));
               return;
            case _sk8258:
               dispatchEvent(new _lq6194(_lq6194._ik11258,_loc2_));
               return;
            default:
               return;
         }
      }
   }
}

