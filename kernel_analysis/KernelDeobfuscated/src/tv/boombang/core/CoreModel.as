package src.tv.boombang.core
{
   import com.five_ants.commons.datatypes.*;
   import com.five_ants.commons.debug.*;
   import flash.events.*;
   import flash.utils.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.commons.utils.*;
   
   public class CoreModel
   {
      
      private static var _instance:CoreModel;
      
      private var _ca6891:_ix4548;
      
      private var _pw14328:_ix4548;
      
      private var _ky9088:_ix4548;
      
      private var count:Number;
      
      private var count1:int = 0;
      
      private var count2:int = 0;
      
      public function CoreModel(param1:_rm6853)
      {
         this._ca6891 = new _ix4548();
         this._pw14328 = new _ix4548();
         this._ky9088 = new _ix4548();
         super();
         if(!(param1 is _rm6853))
         {
            throw new Error("Configuration class is a singleton. Shouldn\'t be instantiated");
         }
         this._ca6891.set(0,0,0,0,getTimer());
         this._pw14328.set(0,0,0,0,0);
         this.count = getTimer();
         Communications._cq7001();
         DisplayUtils._ps6769().addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public static function getInstance() : CoreModel
      {
         if(_instance == null)
         {
            _instance = new CoreModel(new _rm6853());
         }
         return _instance;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         this.update();
      }
      
      private function update() : void
      {
         var count2:int = int(getTimer());
         ++this.count1;
         if(count2 - 1000 > this.count2)
         {
            _le3824._gm1009("real_fps",this.count1);
            this.count2 = count2;
            this.count1 = 0;
         }
         this._ky9088.set(0,0,0,0,count2 - this._ca6891._ix14004);
         this._pw14328.set(0,0,0,0,count2 - this.count);
         this._ca6891.set(0,0,0,0,count2);
      }
      
      public function get _gq3860() : _ix4548
      {
         return this._ca6891;
      }
      
      public function get _up11765() : _ix4548
      {
         return this._ky9088;
      }
      
      public function get _nl8066() : _ix4548
      {
         return this._pw14328;
      }
      
      public function get delta() : Number
      {
         return this._ky9088._ix14004;
      }
      
      public function get _ue1678() : uint
      {
         var count2:int = 1000 / DisplayUtils._ps6769().frameRate - (getTimer() - this._ca6891._ix14004);
         return Math.max(count2,0);
      }
   }
}

class _rm6853
{
   
   public function _rm6853()
   {
      super();
   }
}
