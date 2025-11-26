package src.modules.chooseScene.panelSuperiorDerecho
{
   import flash.display.MovieClip;
   import src.utils.*;
   import src.utils.commonComponents.*;
   import src.utils.fichas.FichasUtils;
   import src.utils.fichas.FichasController;
   
   public class PanelsuperiorderechoView extends FichasController
   {
      
      protected static const textString:String = "mcButton";
      
      protected var _ay13694:CommoncomponentsController;
      
      public function PanelsuperiorderechoView(param1:MovieClip, param2:FichasUtils, param3:Function = null)
      {
         super(param1,param2,param3);
         this._ay13694 = new CommoncomponentsController(param1[textString],this.show);
      }
      
      override public function destroy() : void
      {
         if(this._ay13694 != null)
         {
            this._ay13694.destroy();
            this._ay13694 = null;
         }
      }
      
      public function show() : void
      {
         UtilsUtils.openPopup("http://www.facebook.com/pages/BoomBang/106692256498");
      }
   }
}

