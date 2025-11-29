package src.modules.privados.editObject
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.utils.*;
   import src.utils.commonComponents._kg183;
   
   public class _jr4464 extends _kg183
   {
      
      private var _xu10599:String;
      
      private var _uw2950:String;
      
      private var _sh8013:Function;
      
      private var _vj5685:Function;
      
      private var _sm7732:Function;
      
      private var _ep12436:String;
      
      public function _jr4464(param1:MovieClip, param2:Function, param3:Function, param4:Function, param5:Function, param6:String)
      {
         this._xu10599 = "on";
         this._uw2950 = "off";
         this._sh8013 = param3;
         this._vj5685 = param4;
         this._sm7732 = param5;
         this._ep12436 = param6;
         super(param1,param2);
      }
      
      override protected function _nc2422() : void
      {
         super._nc2422();
         _pe16126.addEventListener(MouseEvent.MOUSE_MOVE,this._xx13833);
      }
      
      override protected function _al10937() : void
      {
         super._al10937();
         if(_pe16126.hasEventListener(MouseEvent.MOUSE_MOVE))
         {
            _pe16126.removeEventListener(MouseEvent.MOUSE_MOVE,this._xx13833);
         }
      }
      
      override protected function _xx13833(param1:MouseEvent) : void
      {
         switch(param1.type)
         {
            case MouseEvent.ROLL_OVER:
               this._sh8013(param1.target.x + param1.localX,param1.target.y + param1.localY,this._ep12436);
               break;
            case MouseEvent.ROLL_OUT:
               this._vj5685();
               break;
            case MouseEvent.MOUSE_MOVE:
               this._sm7732(param1.target.x + param1.localX,param1.target.y + param1.localY);
         }
         super._xx13833(param1);
      }
      
      override public function set _dy867(param1:Boolean) : void
      {
         _pe16126.mouseEnabled = param1;
         _pe16126.enabled = param1;
         if(param1)
         {
            _xv14798._nw2053(_pe16126,this._xu10599);
         }
         else
         {
            _xv14798._nw2053(_pe16126,this._uw2950);
         }
      }
   }
}

