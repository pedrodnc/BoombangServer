package src.tv.boombang.application.user.gui.windows.changeNickName
{
   import flash.events.Event;
   
   public class _nk9893 extends Event
   {
      
      public static const _fc11100:String = "nickNameValidation";
      
      public static const _yg5388:String = "nickNameServerOffer";
      
      private var _name:String;
      
      public function _nk9893(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this._name = param2;
      }
      
      override public function clone() : Event
      {
         return new _nk9893(type,this._name,bubbles,cancelable);
      }
      
      public function get name() : String
      {
         return this._name;
      }
   }
}

