package src.modules.iluminarGrillas
{
   import flash.events.EventDispatcher;
   import src.modules._hq14072;
   import src.multiuser.*;
   
   public class _wb8875 extends EventDispatcher
   {
      
      private var multiuser:_jl5367;
      
      public function _wb8875()
      {
         super();
         this.multiuser = _jl5367.getInstance();
         this.multiuser.addEventListener(_fx8626._fb4031,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Array = param1._lv9976;
         _loc2_ = uint(String(_loc3_[0]).charCodeAt(0));
         switch(_loc2_)
         {
            case _jl5367._tt3648:
               dispatchEvent(new _fx8626(_fx8626._fb4031,_loc3_));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(_fx8626._fb4031,this._bw11981);
         this.multiuser = null;
      }
   }
}

