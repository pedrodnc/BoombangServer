package src.modules.doors
{
   import flash.display.MovieClip;
   import src.utils.commonComponents.*;
   import src.utils.fichas._ox15379;
   import src.utils.fichas._wq1414;
   
   public class _oc6219 extends _wq1414
   {
      
      private static var _lh5817:String = "mcButtonOk";
      
      private static var _li2350:String = "mcButtonCancel";
      
      private var _qy7633:_qo7568;
      
      private var _wg2435:_qo7568;
      
      private var _wb14727:Function;
      
      private var _tj14290:_eu1325;
      
      public function _oc6219(param1:MovieClip, param2:_ox15379, param3:String, param4:String, param5:Function, param6:_eu1325, param7:Function = null)
      {
         super(param1,param2,param7);
         this._wb14727 = param5;
         this._tj14290 = param6;
         this._qy7633 = new _qo7568(param1[_lh5817],this._px14059,param3);
         this._wg2435 = new _qo7568(param1[_li2350],this._rp4871,param4);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._qy7633 != null)
         {
            this._qy7633.destroy();
            this._qy7633 = null;
         }
         if(this._wg2435 != null)
         {
            this._wg2435.destroy();
            this._wg2435 = null;
         }
      }
      
      private function _px14059() : void
      {
         if(this._wb14727 != null)
         {
            this._wb14727(this._tj14290);
         }
      }
      
      private function _rp4871() : void
      {
         _hu12389();
      }
   }
}

