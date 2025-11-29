package src.utils.controlIngTextos
{
   import flash.events.*;
   import flash.text.*;
   
   public class ControlingtextosUtils
   {
      
      private var _wc2771:TextField;
      
      public var _hp2629:int;
      
      public function ControlingtextosUtils(param1:TextField, param2:int = 0)
      {
         super();
         this._wc2771 = param1;
         this._hp2629 = param2;
         param1.addEventListener(TextEvent.TEXT_INPUT,this._pl15237);
      }
      
      public function destroy() : void
      {
         if(this._wc2771 != null)
         {
            this._wc2771.removeEventListener(TextEvent.TEXT_INPUT,this._pl15237);
         }
      }
      
      private function _pl15237(param1:TextEvent) : void
      {
         var _loc2_:TextField = TextField(param1.target);
         var _loc3_:int = _loc2_.selectionBeginIndex;
         var _loc4_:int = _loc2_.selectionEndIndex;
         var _loc5_:String = String(_loc2_.text).slice(0,_loc3_);
         var _loc6_:String = String(_loc2_.text).slice(_loc4_,_loc2_.length);
         var _loc7_:String = _loc2_.selectedText;
         _loc2_.text = _loc5_ + param1.text + _loc6_;
         var _loc8_:int = _loc2_.textHeight;
         _loc2_.text = _loc5_ + _loc7_ + _loc6_;
         _loc2_.setSelection(_loc3_,_loc4_);
         if(_loc8_ > this._hp2629)
         {
            param1.preventDefault();
         }
      }
   }
}

