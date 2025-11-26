package src.modules.member
{
   import flash.events.EventDispatcher;
   import src.allData.*;
   
   public class MemberController extends EventDispatcher
   {
      
      private var _xh7232:MemberController;
      
      public function MemberController()
      {
         super();
         this._xh7232 = new MemberController();
         this._xh7232.addEventListener(MemberEvents._ik11258,this._gu4349);
         this._xh7232.addEventListener(MemberEvents._cb14451,this._gu4349);
      }
      
      public function destroy() : void
      {
         if(this._xh7232 != null)
         {
            this._xh7232.removeEventListener(MemberEvents._ik11258,this._gu4349);
            this._xh7232.removeEventListener(MemberEvents._cb14451,this._gu4349);
            this._xh7232.destroy();
            this._xh7232 = null;
         }
      }
      
      public function _hj11812() : MemberController
      {
         return this._xh7232;
      }
      
      private function _gu4349(param1:MemberEvents) : void
      {
         var _loc4_:Array = param1._lv9976;
         var _loc5_:uint = uint(String(_loc4_[0]).charCodeAt(0));
         switch(_loc5_)
         {
            case MemberController._sa1658:
               var _loc3_:Boolean = Boolean(int(_loc4_[1]));
               UserSession.getInstance().member = false;
               return;
            case MemberController._sk8258:
               dispatchEvent(new MemberEvents(MemberEvents._re11635,_loc4_));
               return;
            default:
               return;
         }
      }
   }
}

