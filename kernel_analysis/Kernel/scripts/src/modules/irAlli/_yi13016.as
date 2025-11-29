package src.modules.irAlli
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class _yi13016 extends EventDispatcher implements _bi12161
   {
      
      private var _gh9645:_jl5367;
      
      public function _yi13016()
      {
         super();
         this.multiuser = _jl5367.getInstance();
         this.multiuser.addEventListener(_fx10821._ph1174,this._bw11981);
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
            case _jl5367._ct9708:
               dispatchEvent(new _fx10821(_fx10821._ph1174,_loc3_));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(_fx10821._ph1174,this._bw11981);
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

