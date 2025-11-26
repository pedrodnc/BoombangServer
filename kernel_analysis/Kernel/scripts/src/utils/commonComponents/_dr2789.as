package src.utils.commonComponents
{
   import flash.display.MovieClip;
   
   public class _dr2789 extends _qo7568
   {
      
      public var _dj4861:Object;
      
      public function _dr2789(param1:MovieClip, param2:Function, param3:String, param4:Boolean = false, param5:Function = null, param6:Function = null, param7:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         this._dj4861 = param7;
      }
      
      override public function destroy() : void
      {
         this._dj4861 = null;
         super.destroy();
      }
      
      override protected function _mf3038(param1:Function) : void
      {
         if(param1 != null)
         {
            param1(this,this._dj4861);
         }
      }
   }
}

