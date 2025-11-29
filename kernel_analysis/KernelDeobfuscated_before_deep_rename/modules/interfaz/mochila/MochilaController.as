package src.modules.interfaz.mochila
{
   import flash.events.*;
   import flash.utils.*;
   import src.allData.sceneObjects.dataObjects.SceneObjectProperties;
   import src.tv.boombang.commons.interfaces.*;
   
   public class MochilaController extends EventDispatcher implements Interfaces
   {
      
      public static const _tl5266:String = "TheBagButtonActionFirstLevel";
      
      private var _vj6089:Boolean = false;
      
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
            this._rd13956.removeEventListener(TimerEvent.TIMER,this._bm7635);
         }
      }
      
      public function _kv2038(param1:SceneObjectProperties) : void
      {
         if(!(Boolean(this._qs7572) && param1._rm6352 == this._qs7572.objInstantied._rm6352 && getTimer() - 245 < this._qs7572.time))
         {
            this._qs7572 = new Object();
            this._qs7572.objInstantied = param1;
            this._qs7572.time = getTimer();
            this._qs7572.dragFirstLevel = true;
            if(this._rd13956)
            {
               this._rd13956.stop();
               this._rd13956.removeEventListener(TimerEvent.TIMER,this._bm7635);
               this._rd13956 = null;
            }
            this._rd13956 = new Timer(190,0);
            this._rd13956.addEventListener(TimerEvent.TIMER,this._bm7635);
            this._rd13956.start();
         }
      }
      
      public function _mw11730(param1:SceneObjectProperties) : void
      {
         if(this._qs7572)
         {
            if(param1._rm6352 == this._qs7572.objInstantied._rm6352 && getTimer() - 190 < this._qs7572.time)
            {
               this._vj6089 = false;
               dispatchEvent(new Event(MochilaController._tl5266));
            }
            this._rd13956.stop();
            this._rd13956.removeEventListener(TimerEvent.TIMER,this._bm7635);
         }
      }
      
      private function _bm7635(param1:TimerEvent) : void
      {
         this._rd13956.removeEventListener(TimerEvent.TIMER,this._bm7635);
         if(this._qs7572.dragFirstLevel)
         {
            this._vj6089 = true;
            dispatchEvent(new Event(MochilaController._tl5266));
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
         return this._vj6089;
      }
      
      public function set _na1482(param1:Boolean) : void
      {
         this._vj6089 = param1;
      }
   }
}

