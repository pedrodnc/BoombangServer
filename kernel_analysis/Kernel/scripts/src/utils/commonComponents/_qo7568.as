package src.utils.commonComponents
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.utils.*;
   
   public class _qo7568 extends _kg183
   {
      
      private static const _el2728:String = "tfText";
      
      protected var _xs11571:TextField;
      
      public var _vd8836:int;
      
      public var _lq8071:int;
      
      public function _qo7568(param1:MovieClip, param2:Function, param3:String, param4:Boolean = false, param5:Function = null, param6:Function = null, param7:Function = null)
      {
         super(param1,param2,param5,param6,param7);
         this._qx2504(param3);
         if(param4)
         {
            this._up4168(param4);
         }
      }
      
      override public function destroy() : void
      {
         this._xs11571 = null;
         super.destroy();
      }
      
      override protected function _nc8386(param1:MovieClip) : void
      {
         super._nc8386(param1);
         this._xs11571 = TextField(param1.getChildByName(_el2728));
      }
      
      public function _qx2504(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         if(this._xs11571 == null)
         {
            return;
         }
         _yq8362._xl9503(this._xs11571,param1);
      }
      
      public function _up4168(param1:Boolean) : void
      {
         _yq8362._kc12786(this._xs11571,param1);
      }
      
      override protected function _xx13833(param1:MouseEvent) : void
      {
         this._wi11896(param1);
         super._xx13833(param1);
      }
      
      protected function _wi11896(param1:MouseEvent) : void
      {
         if(this._vd8836 != this._lq8071)
         {
            switch(param1.type)
            {
               case MouseEvent.ROLL_OUT:
                  this._kg10391();
                  return;
               case MouseEvent.ROLL_OVER:
                  this._iv2759();
                  return;
            }
         }
      }
      
      public function _iv2759() : void
      {
         _yq8362._np7275(this._xs11571,this._vd8836);
      }
      
      public function _kg10391() : void
      {
         _yq8362._np7275(this._xs11571,this._lq8071);
      }
   }
}

