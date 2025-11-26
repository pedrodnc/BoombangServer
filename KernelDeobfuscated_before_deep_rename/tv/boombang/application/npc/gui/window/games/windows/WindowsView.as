package src.tv.boombang.application.npc.gui.window.games.windows
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   
   public class WindowsView extends WindowsModel implements Interfaces
   {
      
      private var _kp11743:ComponentsView;
      
      public function WindowsView(param1:MovieClip, param2:String, param3:int)
      {
         super(param1,param2,param3);
         this._kp11743 = new ComponentsView(_xo6614["btn1"],"button.ok");
         this._kp11743._im767(20,10);
         this._kp11743.addEventListener(MouseEvent.CLICK,this._fm15469,false,0,true);
         _qi5262.push(this._kp11743);
         _xo6614["btn2"].visible = false;
         _eh15270();
      }
      
      public function set _hm9300(param1:String) : void
      {
         this._kp11743.text = param1;
         _eh15270();
      }
      
      override public function destroy() : void
      {
         this._kp11743.removeEventListener(MouseEvent.CLICK,this._fm15469);
         this._kp11743.destroy();
         super.destroy();
      }
      
      private function _fm15469(param1:MouseEvent) : void
      {
         _nk11935();
      }
   }
}

