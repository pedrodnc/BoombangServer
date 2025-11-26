package src.tv.boombang.application.tutorial.gui
{
   import flash.display.*;
   import flash.events.*;
   import src.allData.*;
   import src.tv.boombang.application.tutorial.gui.component.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class TutorialGUI extends MovieClip implements Interfaces
   {
      
      public static const _vu14881:String = "askToOpenMochila";
      
      public static const _wh2737:String = "askToDragObject";
      
      public static const _dl8370:String = "askToEditObject";
      
      public static const _wn10904:String = "askToSelectObject";
      
      public static const _wg10551:String = "askToChangeColor";
      
      public static const _sv13894:String = "CompletedIslandTutorial";
      
      public static const COMPLETE:String = "tutorialCompleted";
      
      private var _qg6590:ComponentView;
      
      public function TutorialGUI()
      {
         super();
         var _loc1_:MovieClip = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","TutorialIslandToolTip") as MovieClip;
         this._qg6590 = new ComponentView(_loc1_);
         this._qg6590.visible = false;
         addChild(this._qg6590);
      }
      
      public function destroy() : void
      {
      }
      
      public function setState(param1:String) : void
      {
         this._qg6590.visible = true;
         switch(param1)
         {
            case _vu14881:
               this._qg6590.title = "tutorial.openBag";
               this._qg6590._rj922(ComponentView.BOTTOM_RIGHT);
               this._qg6590.x = 830;
               this._qg6590.y = 580;
               return;
            case _wh2737:
               this._qg6590.title = "tutorial.dragObject";
               this._qg6590._rj922(ComponentView.RIGHT);
               this._qg6590.x = 763;
               this._qg6590.y = 492;
               return;
            case _dl8370:
               this._qg6590.title = "tutorial.editObject";
               this._qg6590._rj922(ComponentView.TOP_LEFT);
               this._qg6590.x = 130;
               this._qg6590.y = 240;
               return;
            case _wn10904:
               this._qg6590.title = "tutorial.selectObject";
               this._qg6590._rj922(ComponentView._at16136);
               this._qg6590.x = 330;
               this._qg6590.y = 300;
               return;
            case _wg10551:
               this._qg6590.title = "tutorial.changeColor";
               this._qg6590._rj922(ComponentView.RIGHT);
               this._qg6590.x = 782;
               this._qg6590.y = 420;
               return;
            case _sv13894:
               PacketBuilder._db6249([MessageTypeConstants._lc10313]);
               UserSession.getInstance()._oq2035 = false;
               dispatchEvent(new Event(TutorialGUI.COMPLETE));
               this._qg6590.visible = false;
               return;
            default:
               return;
         }
      }
   }
}

