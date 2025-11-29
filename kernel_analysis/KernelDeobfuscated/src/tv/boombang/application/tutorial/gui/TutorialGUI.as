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
      
      public static const textString:String = "askToOpenMochila";
      
      public static const textString1:String = "askToDragObject";
      
      public static const textString2:String = "askToEditObject";
      
      public static const textString3:String = "askToSelectObject";
      
      public static const textString4:String = "askToChangeColor";
      
      public static const textString5:String = "CompletedIslandTutorial";
      
      public static const COMPLETE:String = "tutorialCompleted";
      
      private var _qg6590:ComponentView;
      
      public function TutorialGUI()
      {
         super();
         var count2:MovieClip = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","TutorialIslandToolTip") as MovieClip;
         this._qg6590 = new ComponentView(count2);
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
            case textString:
               this._qg6590.title = "tutorial.openBag";
               this._qg6590._rj922(ComponentView.BOTTOM_RIGHT);
               this._qg6590.x = 830;
               this._qg6590.y = 580;
               return;
            case textString1:
               this._qg6590.title = "tutorial.dragObject";
               this._qg6590._rj922(ComponentView.RIGHT);
               this._qg6590.x = 763;
               this._qg6590.y = 492;
               return;
            case textString2:
               this._qg6590.title = "tutorial.editObject";
               this._qg6590._rj922(ComponentView.TOP_LEFT);
               this._qg6590.x = 130;
               this._qg6590.y = 240;
               return;
            case textString3:
               this._qg6590.title = "tutorial.selectObject";
               this._qg6590._rj922(ComponentView.textString);
               this._qg6590.x = 330;
               this._qg6590.y = 300;
               return;
            case textString4:
               this._qg6590.title = "tutorial.changeColor";
               this._qg6590._rj922(ComponentView.RIGHT);
               this._qg6590.x = 782;
               this._qg6590.y = 420;
               return;
            case textString5:
               PacketBuilder.stop([MessageTypeConstants.count]);
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

