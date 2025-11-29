package src.modules.chooseScene.panelSuperiorDerecho
{
   import flash.display.MovieClip;
   import flash.external.*;
   import src.utils.commonComponents.*;
   import src.utils.fichas._ox15379;
   import src.utils.fichas._wq1414;
   
   public class _tq7443 extends _wq1414
   {
      
      protected static const _ma7824:String = "mcButton";
      
      protected var _ay13694:_kg183;
      
      public function _tq7443(param1:MovieClip, param2:_ox15379, param3:Function = null)
      {
         super(param1,param2,param3);
         this._ay13694 = new _kg183(param1[_ma7824],this._ew10042);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._ay13694 != null)
         {
            this._ay13694.destroy();
            this._ay13694 = null;
         }
      }
      
      public function _ew10042() : void
      {
         ExternalInterface.call("compras");
      }
   }
}

