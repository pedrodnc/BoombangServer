package src.person
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.filters.*;
   
   public class PersonEvents extends MovieClip
   {
      
      private static const _sb5099:String = "rollover";
      
      private static const _ia2795:String = "rollout";
      
      private static const _qy12821:String = "tilt";
      
      private var _mq4770:MovieClip;
      
      private var _jf6199:uint;
      
      public function PersonEvents(param1:uint)
      {
         super();
         this._jf6199 = param1;
         this._mq4770 = PersonController._ju6982("Sombra");
         mouseEnabled = true;
         mouseChildren = true;
         buttonMode = true;
         this.addListeners();
         addChild(this._mq4770);
         this._mq4770.x = 0;
         this._mq4770.y = 0;
      }
      
      public function set selected(param1:Boolean) : void
      {
         if(param1)
         {
            this.filters = [new GlowFilter(this._jf6199,0.8,6,6,10)];
         }
         else
         {
            this.filters = [];
         }
      }
      
      public function destroy() : void
      {
         this.removeListeners();
      }
      
      private function _ux15853(param1:MouseEvent) : void
      {
         this._tg4140();
      }
      
      private function _jk3495(param1:MouseEvent) : void
      {
         this._dj6068();
      }
      
      public function _tg4140() : void
      {
         this._mq4770.gotoAndStop(_sb5099);
         dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OVER));
      }
      
      public function _dj6068() : void
      {
         this._mq4770.gotoAndStop(_ia2795);
         dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OUT));
      }
      
      public function _ai3755() : void
      {
         this._mq4770.gotoAndStop(_qy12821);
      }
      
      private function addListeners() : void
      {
         this._mq4770.addEventListener(MouseEvent.MOUSE_OVER,this._ux15853);
         this._mq4770.addEventListener(MouseEvent.MOUSE_OUT,this._jk3495);
      }
      
      private function removeListeners() : void
      {
         if(this._mq4770 != null)
         {
            this._mq4770.removeEventListener(MouseEvent.MOUSE_OVER,this._ux15853);
            this._mq4770.removeEventListener(MouseEvent.MOUSE_OUT,this._jk3495);
         }
      }
   }
}

