package src.tv.boombang.commons
{
   import flash.events.Event;
   
   public class _is380 extends Event
   {
      
      public static const _om2683:String = "asset_complete";
      
      public static const _qv3006:String = "asset_error";
      
      public static const _xs4183:String = "load_progress";
      
      public var _rc15890:_vh5894;
      
      public var progress:Number;
      
      public function _is380(param1:String, param2:Boolean = false, param3:Boolean = false, param4:_vh5894 = null, param5:Number = NaN)
      {
         super(param1,param2,param3);
         this._rc15890 = param4;
         this.progress = param5;
      }
   }
}

