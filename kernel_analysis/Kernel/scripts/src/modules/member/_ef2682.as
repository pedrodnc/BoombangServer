package src.modules.member
{
   import flash.events.EventDispatcher;
   import src.allData.*;
   
   public class _ef2682 extends EventDispatcher
   {
      
      private var _xh7232:_ld11044;
      
      public function _ef2682()
      {
         super();
         this._xh7232 = new _ld11044();
         this._xh7232.addEventListener(_lq6194._ik11258,this._gu4349);
         this._xh7232.addEventListener(_lq6194._cb14451,this._gu4349);
      }
      
      public function destroy() : void
      {
         if(this._xh7232 != null)
         {
            this._xh7232.removeEventListener(_lq6194._ik11258,this._gu4349);
            this._xh7232.removeEventListener(_lq6194._cb14451,this._gu4349);
            this._xh7232.destroy();
            this._xh7232 = null;
         }
      }
      
      public function _hj11812() : _ld11044
      {
         return this._xh7232;
      }
      
      private function _gu4349(param1:_lq6194) : void
      {
         var _loc4_:Array = param1._lv9976;
         var _loc5_:uint = uint(String(_loc4_[0]).charCodeAt(0));
         switch(_loc5_)
         {
            case _ld11044._sa1658:
               var _loc3_:Boolean = Boolean(int(_loc4_[1]));
               _hv12530.getInstance().member = false;
               return;
            case _ld11044._sk8258:
               dispatchEvent(new _lq6194(_lq6194._re11635,_loc4_));
               return;
            default:
               return;
         }
      }
   }
}

