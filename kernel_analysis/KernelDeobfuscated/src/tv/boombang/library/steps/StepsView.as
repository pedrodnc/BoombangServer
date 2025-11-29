package src.tv.boombang.library.steps
{
   import flash.events.*;
   
   public class StepsView extends Event
   {
      
      public static const textString:String = "event_generic_complete";
      
      public static const textString1:String = "window_event_next_clicked";
      
      public static const textString2:String = "window_event_back_clicked";
      
      public static const textString3:String = "window_event_close_clicked";
      
      protected var textString4:String;
      
      protected var _eb6654:Object;
      
      public function StepsView(param1:String = null, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(Event.COMPLETE,param3,param4);
         if(param1 == null)
         {
            this.textString4 = "window_event_generic_complete";
         }
         this.textString4 = param1;
         this._eb6654 = param2;
      }
      
      override public function clone() : Event
      {
         return new StepsView(this.textString4,this._eb6654,bubbles,cancelable);
      }
      
      public function get _kj8592() : String
      {
         return this.textString4;
      }
      
      public function get data() : Object
      {
         return this._eb6654;
      }
   }
}

