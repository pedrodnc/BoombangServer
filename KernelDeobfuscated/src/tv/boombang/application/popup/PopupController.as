package src.tv.boombang.application.popup
{
   import flash.display.*;
   import flash.events.*;
   import src.loaders.*;
   import src.modules.multiplayerGames.dataGame.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.popup.components.tutorials.*;
   import src.tv.boombang.commons.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.popup.*;
   import src.utils.*;
   
   public class PopupController extends PopupView
   {
      
      private var _ig5144:ComponentsModel;
      
      private var _er5836:ComponentsController;
      
      private var count5:int;
      
      private var _lf15550:ComponentsView;
      
      private var _pd9899:ComponentsView;
      
      private var _bl14396:ComponentsView;
      
      private var _br8675:ComponentsView;
      
      private var _vt5934:ComponentsView;
      
      private var _fo15207:MovieClip;
      
      private var _pt13369:MovieClip;
      
      private var _ea5298:TutorialsView;
      
      private var _xy15758:MovieClip;
      
      private var count1:int;
      
      private var count2:int;
      
      public function PopupController(param1:int)
      {
         super();
         this.count5 = param1;
         this._er5836 = new ComponentsController();
         addChild(this._er5836);
         (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029(["gameTutorial.swf"],this.show);
      }
      
      override public function destroy() : void
      {
         this._ea5298.destroy();
         if(this._bl14396)
         {
            this._bl14396.removeEventListener(MouseEvent.CLICK,this._ls3532);
            this._bl14396.destroy();
            this._bl14396 = null;
         }
         if(this._br8675)
         {
            this._br8675.removeEventListener(MouseEvent.CLICK,this._sq11472);
            this._br8675.destroy();
            this._br8675 = null;
         }
         if(this._ig5144)
         {
            this._ig5144.removeEventListener(MouseEvent.CLICK,this.move1);
            this._ig5144.destroy();
            this._ig5144 = null;
         }
         if(this._vt5934)
         {
            this._vt5934.removeEventListener(MouseEvent.CLICK,this.move1);
            this._vt5934.destroy();
            this._vt5934 = null;
         }
      }
      
      private function show() : void
      {
         _xo6614 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("gameTutorial.swf","Popup");
         if(_xo6614.getChildByName("closeBtn"))
         {
            this._ig5144 = new ComponentsModel(_xo6614.getChildByName("closeBtn") as MovieClip);
            this._ig5144.addEventListener(MouseEvent.CLICK,this.move1,false,0,true);
         }
         this._xy15758 = _xo6614["tutorialContent"] as MovieClip;
         this._fo15207 = _xo6614["back"]["content"] as MovieClip;
         this._pt13369 = _xo6614["back"]["line"] as MovieClip;
         this._lf15550 = new ComponentsView(_xo6614["titleField"]);
         this._lf15550.txt = "";
         this._pd9899 = new ComponentsView(_xo6614["explanationField"]);
         this._pd9899.txt = "";
         this._bl14396 = new ComponentsView(_xo6614["prevButton"] as MovieClip,"button.previous");
         this._br8675 = new ComponentsView(_xo6614["nextButton"] as MovieClip,"button.next");
         this._vt5934 = new ComponentsView(_xo6614["finishButton"] as MovieClip,"button.finish");
         this._vt5934.addEventListener(MouseEvent.CLICK,this.move1,false,0,true);
         this._bl14396.addEventListener(MouseEvent.CLICK,this._ls3532,false,0,true);
         this._br8675.addEventListener(MouseEvent.CLICK,this._sq11472,false,0,true);
         this._br8675.visible = false;
         this._bl14396.visible = false;
         this._vt5934.visible = false;
         switch(this.count5)
         {
            case DatagameModel._hx13454:
               this._ea5298 = new TutorialsView(AssetLoader.textString154);
               this.count1 = 4;
               this._ls9146(12931922);
               StringUtils._ts14032(this._fo15207,8269615);
               StringUtils._ts14032(this._pt13369,3937814);
               break;
            case DatagameModel._qf5633:
               this._ea5298 = new TutorialsView(AssetLoader.textString155);
               this.count1 = 4;
               this._ls9146(104756);
               StringUtils._ts14032(this._fo15207,26112);
               StringUtils._ts14032(this._pt13369,19712);
               break;
            case DatagameModel._ik10140:
               this._ea5298 = new TutorialsView(AssetLoader.textString156);
               this.count1 = 4;
               this._ls9146(10040319);
               StringUtils._ts14032(this._fo15207,7149927);
               StringUtils._ts14032(this._pt13369,4721988);
               break;
            case DatagameModel._de12066:
               this._ea5298 = new TutorialsView(AssetLoader.textString157);
               this.count1 = 5;
               this._ls9146(4811644);
               StringUtils._ts14032(this._fo15207,2372925);
               StringUtils._ts14032(this._pt13369,1252384);
         }
         this._ea5298.addEventListener(CommonsEvents.urlString2,this.move,false,0,true);
         this._ea5298._pj15434();
         move();
      }
      
      private function _ls9146(param1:uint) : void
      {
         this._br8675._vr14785 = param1;
         this._bl14396._vr14785 = param1;
         this._ig5144._vr14785 = param1;
         this._vt5934._vr14785 = param1;
      }
      
      private function move(param1:CommonsEvents) : void
      {
         this._ea5298.removeEventListener(CommonsEvents.urlString2,this.move);
         this.move(0);
         this._xy15758.addChild(this._ea5298);
         this._er5836.destroy();
         removeChild(this._er5836);
      }
      
      private function _ls3532(param1:MouseEvent) : void
      {
         if(this.count2 > 0)
         {
            this.move(this.count2 - 1);
         }
      }
      
      private function _sq11472(param1:MouseEvent) : void
      {
         if(this.count2 < this.count1)
         {
            this.move(this.count2 + 1);
         }
      }
      
      private function move(param1:int) : void
      {
         this.count2 = param1;
         if(this.count2 <= 0)
         {
            this._bl14396.visible = false;
         }
         else
         {
            this._bl14396.visible = true;
         }
         if(this.count2 >= this.count1)
         {
            this._br8675.visible = false;
            this._vt5934.visible = true;
         }
         else
         {
            this._br8675.visible = true;
            this._vt5934.visible = false;
         }
         this._lf15550.txt = "games.tutorials.title.game_" + this.count5 + "_step_" + this.count2;
         this._pd9899.txt = "games.tutorials.description.game_" + this.count5 + "_step_" + this.count2;
         this._ea5298.move(this.count2);
      }
      
      protected function move1(param1:MouseEvent) : void
      {
         this.destroy();
         PopUpManager.removePopUp(this);
      }
   }
}

