package src.modules.interfaz.mochila
{
   import flash.events.*;
   import flash.utils.*;
   import src.allData.sceneObjects.dataObjects.SceneObjectProperties;
   import src.tv.boombang.commons.interfaces.*;
   
   public class MochilaController extends EventDispatcher implements Interfaces
   {
      
      public static const textString:String = "TheBagButtonActionFirstLevel";
      
      private var isEnabled:Boolean = false;
      
      private var _qs7572:Object;
      
      private var _rd13956:Timer;
      
      public function MochilaController()
      {
         super();
      }
      
      public function destroy() : void
      {
         if(this._rd13956)
         {
            this._rd13956.removeEventListener(TimerEvent.TIMER,this.move1);
         }
      }
      
      public function move(param1:SceneObjectProperties) : void
      {
         if(!(Boolean(this._qs7572) && param1.count == this._qs7572.objInstantied.count && getTimer() - 245 < this._qs7572.time))
         {
            this._qs7572 = new Object();
            this._qs7572.objInstantied = param1;
            this._qs7572.time = getTimer();
            this._qs7572.dragFirstLevel = true;
            if(this._rd13956)
            {
               this._rd13956.stop();
               this._rd13956.removeEventListener(TimerEvent.TIMER,this.move1);
               this._rd13956 = null;
            }
            this._rd13956 = new Timer(190,0);
            this._rd13956.addEventListener(TimerEvent.TIMER,this.move1);
            this._rd13956.start();
         }
      }
      
      public function _mw11730(param1:SceneObjectProperties) : void
      {
         if(this._qs7572)
         {
            if(param1.count == this._qs7572.objInstantied.count && getTimer() - 190 < this._qs7572.time)
            {
               this.isEnabled = false;
               dispatchEvent(new Event(MochilaController.textString));
            }
            this._rd13956.stop();
            this._rd13956.removeEventListener(TimerEvent.TIMER,this.move1);
         }
      }
      
      private function move1(param1:TimerEvent) : void
      {
         this._rd13956.removeEventListener(TimerEvent.TIMER,this.move1);
         if(this._qs7572.dragFirstLevel)
         {
            this.isEnabled = true;
            dispatchEvent(new Event(MochilaController.textString));
         }
      }
      
      public function get _dc14957() : Object
      {
         return this._qs7572;
      }
      
      public function set _dc14957(param1:Object) : void
      {
         this._qs7572 = param1;
      }
      
      public function get _na1482() : Boolean
      {
         return this.isEnabled;
      }
      
      public function set _na1482(param1:Boolean) : void
      {
         this.isEnabled = param1;
      }
   }
}

