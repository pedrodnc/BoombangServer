package src.modules.notificaciones.fichas
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import flash.utils.*;
   import src.*;
   import src.modules.notificaciones.*;
   
   public class FichasUtils extends FichasController
   {
      
      private var _xq16124:TextField;
      
      private var _timer:Timer;
      
      public function FichasUtils(param1:FichasModel, param2:MovieClip, param3:NotificacionesController)
      {
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         var count2:String = null;
         _ef4896 = _pu6969._if2642(textString1) as MovieClip;
         this._xq16124 = _ef4896.getChildByName("txtMessage") as TextField;
         var count:int = int(_data.data[0]);
         switch(_data.type)
         {
            case NotificacionesController.count6:
               count2 = _ab7564._yu9298.split("[coins]").join(count);
               break;
            case NotificacionesController.count7:
               count2 = _ab7564._sw3647.split("[coins]").join(count);
               break;
            default:
               count2 = "";
         }
         this._xq16124.text = count2;
         this._timer = new Timer(10000,1);
         this._timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.hide);
         this._timer.start();
         _ef4896.x = 65;
         _ef4896.y = 495;
         this.show();
      }
      
      private function hide(param1:TimerEvent) : void
      {
         close();
      }
      
      override public function destroy() : void
      {
         this._timer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.hide);
      }
      
      override protected function show() : void
      {
         var count2:int = 0;
         var count:int = 0;
         switch(_tb13716._dn11747)
         {
            case ApplicationMain.count7:
               count2 = 74;
               count = 484;
               break;
            case ApplicationMain.count5:
               count2 = 55;
               count = 484;
               break;
            case ApplicationMain.count37:
               count2 = 90;
               count = 484;
         }
         _ef4896.x = count2;
         _ef4896.y = count;
         super.show();
      }
   }
}

