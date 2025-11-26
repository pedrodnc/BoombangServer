package src.modules.antitimos.fichas
{
   import flash.display.MovieClip;
   import src.modules.chooseScene.ChoosesceneModel;
   import src.modules.chooseScene.panelMariquita.PanelmariquitaView;
   import src.utils.fichas.FichasUtils;
   import src.utils.fichas.FichasController;
   
   public class FichasView extends FichasController
   {
      
      protected var _pg10414:PanelmariquitaView;
      
      protected var _gy10361:ChoosesceneModel;
      
      public function FichasView(param1:MovieClip, param2:FichasUtils, param3:PanelmariquitaView, param4:ChoosesceneModel, param5:Function = null)
      {
         this._pg10414 = param3;
         this._gy10361 = param4;
         super(param1,param2,param5);
      }
      
      public function _wo15393() : void
      {
      }
      
      public function _qn153() : void
      {
      }
   }
}

