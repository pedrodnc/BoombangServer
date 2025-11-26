package src.utils.controlIngTextos
{
   import flash.events.*;
   import flash.text.*;
   
   public class ControlingtextosUtils
   {
      
      private var _wc2771:TextField;
      
      public var count:int;
      
      public function ControlingtextosUtils(param1:TextField, param2:int = 0)
      {
         super();
         this._wc2771 = param1;
         this.count = param2;
         param1.addEventListener(TextEvent.TEXT_INPUT,this.start);
      }
      
      public function destroy() : void
      {
         if(this._wc2771 != null)
         {
            this._wc2771.removeEventListener(TextEvent.TEXT_INPUT,this.start);
         }
      }
      
      private function start(param1:TextEvent) : void
      {
         var count:TextField = TextField(param1.target);
         var count3:int = count.selectionBeginIndex;
         var count1:int = count.selectionEndIndex;
         var count2:String = String(count.text).slice(0,count3);
         var count7:String = String(count.text).slice(count1,count.length);
         var items:String = count.selectedText;
         count.text = count2 + param1.text + count7;
         var count8:int = count.textHeight;
         count.text = count2 + items + count7;
         count.setSelection(count3,count1);
         if(count8 > this.count)
         {
            param1.preventDefault();
         }
      }
   }
}

