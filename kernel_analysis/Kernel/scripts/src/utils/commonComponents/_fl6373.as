package src.utils.commonComponents
{
   import flash.display.MovieClip;
   
   public class _fl6373 extends _kg183
   {
      
      public var _dj4861:Object;
      
      public function _fl6373(param1:MovieClip, param2:Function, param3:Function = null, param4:Function = null, param5:Object = null)
      {
         this._dj4861 = param5;
         super(param1,param2,param3,param4);
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

