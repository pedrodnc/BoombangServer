package src.modules.scene
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class _ba15204 extends EventDispatcher implements _bi12161
   {
      
      public static const _tx13421:int = 120;
      
      private var _gh9645:_jl5367;
      
      public function _ba15204()
      {
         super();
         this._gh9645 = _jl5367.getInstance();
         this._gh9645.addEventListener(_jr13123._fy10303,this._bw11981);
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
         this._gh9645.removeEventListener(_jr13123._fy10303,this._bw11981);
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:Array = param1._lv9976;
         var _loc3_:int = int(String(_loc2_[0]).charCodeAt(0));
         var _loc4_:int = int(String(_loc2_[1]).charCodeAt(0));
         _loc2_.shift();
         switch(_loc4_)
         {
            case _tx13421:
               dispatchEvent(new _jr13123(_jr13123._ul15638,_loc2_));
               return;
            default:
               return;
         }
      }
   }
}

