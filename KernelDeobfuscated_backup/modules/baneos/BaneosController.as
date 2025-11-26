package src.modules.baneos
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class _cm12664 extends EventDispatcher implements _bi12161
   {
      
      public static const _va5999:int = 136;
      
      private var _gh9645:_jl5367;
      
      public function _cm12664()
      {
         super();
         this.multiuser = _jl5367.getInstance();
         this.multiuser.addEventListener(_xh2943._fd4922,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         dispatchEvent(new _xh2943(_xh2943._fd4922,param1._lv9976));
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(_xh2943._fd4922,this._bw11981);
         this.multiuser = null;
      }
      
      public function get multiuser() : _jl5367
      {
         return this._gh9645;
      }
      
      public function set multiuser(param1:_jl5367) : void
      {
         this._gh9645 = param1;
      }
   }
}

