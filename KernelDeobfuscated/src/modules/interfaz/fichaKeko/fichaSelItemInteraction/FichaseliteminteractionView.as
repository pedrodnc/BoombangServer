package src.modules.interfaz.fichaKeko.fichaSelItemInteraction
{
   import flash.display.MovieClip;
   import src.utils.commonComponents.*;
   import src.utils.fichas.FichasUtils;
   import src.utils.fichas.FichasController;
   
   public class FichaseliteminteractionView extends FichasController
   {
      
      protected static const textString:String = "mcItem";
      
      private var items:Array;
      
      private var _en5847:Function;
      
      public function FichaseliteminteractionView(param1:int, param2:int, param3:Function, param4:MovieClip, param5:FichasUtils, param6:Function = null)
      {
         var items:Object = null;
         var count8:CommoncomponentsView = null;
         var count6:int = 0;
         super(param4,param5,param6);
         this._en5847 = param3;
         this.items = new Array();
         while(count6 < param1)
         {
            items = new Object();
            items.id = count6;
            count8 = new CommoncomponentsView(param4[textString + count6],this._nx964,null,null,items);
            this.items.push(count8);
            if(count6 >= param2)
            {
               count8._dy867 = false;
            }
            count6++;
         }
      }
      
      private function _nx964(param1:CommoncomponentsController, param2:Object) : void
      {
         this._en5847(param1,param2);
      }
      
      override public function destroy() : void
      {
         var count2:CommoncomponentsController = null;
         super.destroy();
         for each(count2 in this.items)
         {
            count2.destroy();
            count2 = null;
         }
      }
   }
}

