package src.tv.boombang.commons
{
   import flash.events.Event;
   
   public class CommonsEvents extends Event
   {
      
      public static const urlString2:String = "asset_complete";
      
      public static const urlString3:String = "asset_error";
      
      public static const textString2:String = "load_progress";
      
      public var _rc15890:CommonsManager;
      
      public var progress:Number;
      
      public function CommonsEvents(param1:String, param2:Boolean = false, param3:Boolean = false, param4:CommonsManager = null, param5:Number = NaN)
      {
         super(param1,param2,param3);
         this._rc15890 = param4;
         this.progress = param5;
      }
   }
}

