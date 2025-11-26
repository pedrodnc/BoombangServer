package src.modules.interfaz.baseChat
{
   import flash.display.MovieClip;
   import flash.events.*;
   
   public class BasechatEvents extends MovieClip
   {
      
      private static const _pq3009:int = 3;
      
      private static const _tg4679:int = 3;
      
      private var _oc13112:int;
      
      private var _ea1459:int;
      
      private var frame:int;
      
      public function BasechatEvents(param1:int, param2:int, param3:int)
      {
         super();
         this._oc13112 = param2;
         this._ea1459 = param3;
         this.x = param1;
         this.y = param2;
         this.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.graphics.beginFill(16777215);
         this.graphics.drawCircle(0,0,_tg4679);
         this.graphics.endFill();
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         ++this.frame;
         if(this.frame > _pq3009)
         {
            this.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            parent.removeChild(this);
         }
         else
         {
            this.y = this._oc13112 + (this._ea1459 - this._oc13112) * this.frame / _pq3009;
         }
      }
   }
}

