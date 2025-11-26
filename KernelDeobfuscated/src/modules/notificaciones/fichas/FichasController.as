package src.modules.notificaciones.fichas
{
   import flash.display.*;
   import flash.events.*;
   import src.*;
   import src.modules.notificaciones.*;
   import src.org.osflash.thunderbolt.*;
   
   public class FichasController extends EventDispatcher
   {
      
      public static const textString:String = "close_event";
      
      public static const textString1:String = "PanelSilverBoomsMC";
      
      public static const textString2:String = "PanelDailyBonusMC";
      
      protected var _pu6969:MovieClip;
      
      protected var _data:FichasModel;
      
      protected var _ef4896:MovieClip;
      
      protected var _rq4679:_xw1367;
      
      protected var _ab7564:FichasModel;
      
      protected var _tb13716:NotificacionesController;
      
      public function FichasController(param1:FichasModel, param2:MovieClip, param3:NotificacionesController)
      {
         super();
         this._data = param1;
         this._pu6969 = param2;
         this._tb13716 = param3;
         this._rq4679 = _xw1367.getInstance();
         this._ab7564 = new FichasModel();
         this.init();
      }
      
      public static function _wp11031(param1:FichasModel, param2:MovieClip, param3:NotificacionesController) : FichasController
      {
         var count1:MovieClip = new MovieClip();
         switch(param1.type)
         {
            case NotificacionesController.count4:
               return new FichasView(param1,param2,param3);
            case NotificacionesController.count2:
               return new Fichas(param1,param2,param3);
            case NotificacionesController.count3:
               return new Fichas(param1,param2,param3);
            case NotificacionesController.count1:
               return new Fichas(param1,param2,param3);
            case NotificacionesController.count6:
            case NotificacionesController.count7:
               return new FichasUtils(param1,param2,param3);
            case NotificacionesController.count5:
               return new Fichas(param1,param2,param3);
            default:
               return null;
         }
      }
      
      public function get _cx7747() : int
      {
         return this._data.type;
      }
      
      public function get data() : FichasModel
      {
         return this._data;
      }
      
      public function destroy() : void
      {
         ThunderboltModel.info("ERROR! El metodo AbstractFichaPaneles::destroy debe ser sobrescrito en la clase concreta.");
      }
      
      protected function init() : void
      {
         ThunderboltModel.info("ERROR! El metodo AbstractFichaPaneles::init debe ser sobrescrito en la clase concreta.");
      }
      
      protected function show() : void
      {
         this._rq4679._uc3178(this._ef4896,_xw1367.count9,true);
      }
      
      public function close() : void
      {
         if(this._ef4896)
         {
            this._rq4679.move2(this._ef4896,_xw1367.count9);
         }
         this.destroy();
         var count2:Event = new Event(textString);
         dispatchEvent(count2);
      }
      
      protected function move() : void
      {
         this._ef4896.removeEventListener(Event.ENTER_FRAME,this._ce5288);
      }
      
      protected function _op8849() : void
      {
         this._ef4896.addEventListener(Event.ENTER_FRAME,this._ce5288);
      }
      
      protected function _ce5288(param1:Event) : void
      {
         this.loop();
      }
      
      protected function loop() : void
      {
      }
   }
}

