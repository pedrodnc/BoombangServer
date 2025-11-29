package src.modules.estadoPociones
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class _qu6971 extends EventDispatcher implements _bi12161
   {
      
      public static const _rx8624:int = 184;
      
      public static const _lh15101:int = 120;
      
      public static const _rl7898:int = 121;
      
      private var _gh9645:_jl5367;
      
      public function _qu6971()
      {
         super();
         this._gh9645 = _jl5367.getInstance();
         this._gh9645.addEventListener(_uw14209._pd13336,this._bw11981);
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
         this._gh9645.removeEventListener(_uw14209._pd13336,this._bw11981);
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:Array = param1._lv9976;
         dispatchEvent(new _uw14209(_uw14209._pd13336,_loc2_));
      }
   }
}

