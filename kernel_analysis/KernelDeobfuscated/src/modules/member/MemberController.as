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
         this._xh7232.addEventListener(MemberEvents.textString1,this._gu4349);
         this._xh7232.addEventListener(MemberEvents.textString2,this._gu4349);
      }
      
      public function destroy() : void
      {
         if(this._xh7232 != null)
         {
            this._xh7232.removeEventListener(MemberEvents.textString1,this._gu4349);
            this._xh7232.removeEventListener(MemberEvents.textString2,this._gu4349);
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
         var count1:Array = param1.items;
         var count2:uint = uint(String(count1[0]).charCodeAt(0));
         switch(count2)
         {
            case MemberController._sa1658:
               var count3:Boolean = Boolean(int(count1[1]));
               UserSession.getInstance().member = false;
               return;
            case MemberController._sk8258:
               dispatchEvent(new MemberEvents(MemberEvents.textString,count1));
               return;
            default:
               return;
         }
      }
   }
}

