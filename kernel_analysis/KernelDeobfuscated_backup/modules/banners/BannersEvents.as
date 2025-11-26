package src.modules.banners
{
   import flash.events.Event;
   
   public class _ck7312 extends Event
   {
      
      public static const _jf1542:String = "vastBannerEvent";
      
      private var _ng3996:String;
      
      public function _ck7312(param1:String)
      {
         super(_jf1542,bubbles,cancelable);
         this._ng3996 = param1;
      }
      
      public function get _tc14632() : String
      {
         return this._ng3996;
      }
   }
}

