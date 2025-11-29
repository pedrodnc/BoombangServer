package src.modules.login.choosePerson.colorear
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.utils.*;
   
   public class ColorearView extends MovieClip implements Interfaces
   {
      
      private var _om5354:ComponentsModel;
      
      private var _ky1728:ComponentsModel;
      
      private var _xo6614:MovieClip;
      
      private var _bh2278:Function;
      
      private var _jn15125:Function;
      
      public function ColorearView(param1:MovieClip, param2:Function, param3:Function)
      {
         super();
         this._xo6614 = param1;
         this._om5354 = new ComponentsModel(this._xo6614["nextBtn"]);
         this._ky1728 = new ComponentsModel(this._xo6614["backBtn"]);
         this._om5354.addEventListener(MouseEvent.CLICK,this._mk5451);
         this._ky1728.addEventListener(MouseEvent.CLICK,this._uk13365);
         UtilsUtils._xl9503(this._xo6614["nextBtn"]["elements"]["txt"],"button.next");
         UtilsUtils._xl9503(this._xo6614["backBtn"]["elements"]["txt"],"button.previous");
         this._bh2278 = param2;
         this._jn15125 = param3;
      }
      
      public function destroy() : void
      {
         this._om5354.removeEventListener(MouseEvent.CLICK,this._mk5451);
         this._ky1728.removeEventListener(MouseEvent.CLICK,this._uk13365);
         this._om5354.destroy();
         this._ky1728.destroy();
      }
      
      private function _mk5451(param1:MouseEvent) : void
      {
         this._bh2278();
      }
      
      private function _uk13365(param1:MouseEvent) : void
      {
         this._jn15125();
      }
      
      public function set _qa11462(param1:Boolean) : void
      {
         this._ky1728.enabled = param1;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         this._xo6614.visible = param1;
      }
      
      override public function get visible() : Boolean
      {
         return this._xo6614.visible;
      }
   }
}

