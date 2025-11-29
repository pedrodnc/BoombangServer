package src.modules.interfaz.fichaKeko.fichaSelItemInteraction
{
   import flash.display.MovieClip;
   import src.utils.commonComponents.*;
   import src.utils.fichas.FichasUtils;
   import src.utils.fichas.FichasController;
   
   public class FichaseliteminteractionView extends FichasController
   {
      
      protected static const _ym2930:String = "mcItem";
      
      private var _wq14052:Array;
      
      private var _en5847:Function;
      
      public function FichaseliteminteractionView(param1:int, param2:int, param3:Function, param4:MovieClip, param5:FichasUtils, param6:Function = null)
      {
         var _loc7_:Object = null;
         var _loc8_:CommoncomponentsView = null;
         var _loc9_:int = 0;
         super(param4,param5,param6);
         this._en5847 = param3;
         this._wq14052 = new Array();
         while(_loc9_ < param1)
         {
            _loc7_ = new Object();
            _loc7_.id = _loc9_;
            _loc8_ = new CommoncomponentsView(param4[_ym2930 + _loc9_],this._nx964,null,null,_loc7_);
            this._wq14052.push(_loc8_);
            if(_loc9_ >= param2)
            {
               _loc8_._dy867 = false;
            }
            _loc9_++;
         }
      }
      
      private function _nx964(param1:CommoncomponentsController, param2:Object) : void
      {
         this._en5847(param1,param2);
      }
      
      override public function destroy() : void
      {
         var _loc1_:CommoncomponentsController = null;
         super.destroy();
         for each(_loc1_ in this._wq14052)
         {
            _loc1_.destroy();
            _loc1_ = null;
         }
      }
   }
}

