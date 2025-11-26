package src.modules.interfaz.baseChat
{
   import flash.display.MovieClip;
   import flash.events.*;
   
   public class BasechatEvents extends MovieClip
   {
      
      private static const count:int = 3;
      
      private static const count1:int = 3;
      
      private var count2:int;
      
      private var count3:int;
      
      private var frame:int;
      
      public function BasechatEvents(param1:int, param2:int, param3:int)
      {
         super();
         this.count2 = param2;
         this.count3 = param3;
         this.x = param1;
         this.y = param2;
         this.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.graphics.beginFill(16777215);
         this.graphics.drawCircle(0,0,count1);
         this.graphics.endFill();
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         ++this.frame;
         if(this.frame > count)
         {
            this.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            parent.removeChild(this);
         }
         else
         {
            this.y = this.count2 + (this.count3 - this.count2) * this.frame / count;
         }
      }
   }
}

