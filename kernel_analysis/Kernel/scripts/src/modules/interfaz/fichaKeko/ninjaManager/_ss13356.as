package src.modules.interfaz.fichaKeko.ninjaManager
{
   import flash.display.MovieClip;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _ss13356 extends _kg183
   {
      
      private static var _hb1519:String = "mcCoolDown";
      
      private static var _ws8237:String = "mcCoolDownAnim";
      
      private var _selected:Boolean;
      
      private var _nt36:MovieClip;
      
      private var _state:Boolean;
      
      public function _ss13356(param1:MovieClip, param2:Function, param3:Boolean, param4:Boolean, param5:Function = null, param6:Function = null)
      {
         this._state = param3;
         this._selected = param4;
         super(param1,param2,param5,param6);
         this._iv1460();
         this._nt36 = param1[_hb1519][_ws8237];
         this._nt36.stop();
      }
      
      public function get selected() : Boolean
      {
         return this._selected;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this._wl4599();
         this._selected = param1;
         this._iv1460();
      }
      
      private function _wl4599() : void
      {
         this._nt36.gotoAndPlay(2);
      }
      
      public function _av12265() : Boolean
      {
         if(this._nt36.currentFrame != 1 && this._nt36.currentFrame != this._nt36.totalFrames)
         {
            return true;
         }
         return false;
      }
      
      override public function _ch1514() : void
      {
         if(this._av12265())
         {
            return;
         }
         if(this._selected)
         {
            _pe16126.selection.visible = true;
            if(this._state)
            {
               _xv14798._nw2053(_pe16126,_ax13262._jo8252 + "2");
            }
         }
         else
         {
            _pe16126.selection.visible = false;
            if(this._state)
            {
               _xv14798._nw2053(_pe16126,_ax13262._jo8252);
            }
         }
      }
      
      override public function _iv1460() : void
      {
         if(this._selected)
         {
            _pe16126.selection.visible = true;
            if(this._state)
            {
               _xv14798._nw2053(_pe16126,_ax13262._jo8252 + "2");
            }
            else
            {
               _pe16126.alpha = 0.2;
            }
         }
         else
         {
            _pe16126.selection.visible = false;
            if(this._state)
            {
               _xv14798._nw2053(_pe16126,_ax13262._vk6252);
            }
            else
            {
               _pe16126.alpha = 0.2;
            }
         }
      }
   }
}

