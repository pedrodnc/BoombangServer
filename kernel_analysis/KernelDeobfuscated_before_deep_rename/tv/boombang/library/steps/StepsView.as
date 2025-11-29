package src.tv.boombang.library.steps
{
   import flash.events.*;
   
   public class StepsView extends Event
   {
      
      public static const _yo4206:String = "event_generic_complete";
      
      public static const _dh1979:String = "window_event_next_clicked";
      
      public static const _vr15134:String = "window_event_back_clicked";
      
      public static const _by10560:String = "window_event_close_clicked";
      
      protected var _jg11717:String;
      
      protected var _eb6654:Object;
      
      public function StepsView(param1:String = null, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(Event.COMPLETE,param3,param4);
         if(param1 == null)
         {
            this._jg11717 = "window_event_generic_complete";
         }
         this._jg11717 = param1;
         this._eb6654 = param2;
      }
      
      override public function clone() : Event
      {
         return new StepsView(this._jg11717,this._eb6654,bubbles,cancelable);
      }
      
      public function get _kj8592() : String
      {
         return this._jg11717;
      }
      
      public function get data() : Object
      {
         return this._eb6654;
      }
   }
}

