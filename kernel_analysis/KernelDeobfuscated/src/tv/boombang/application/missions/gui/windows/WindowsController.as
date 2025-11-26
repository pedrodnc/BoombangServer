package src.tv.boombang.application.missions.gui.windows
{
   import flash.display.*;
   import flash.events.*;
   import flash.external.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.UIWindow;
   
   public class WindowsController extends UIWindow implements Interfaces
   {
      
      public static const textString:String = "missionsButton";
      
      public static const textString1:String = "missionsList";
      
      public static const textString2:String = "missionOpenMenu";
      
      private var _qf955:WindowsView;
      
      public function WindowsController()
      {
         super();
      }
      
      override public function destroy() : void
      {
         super.destroy();
      }
      
      override protected function init() : void
      {
         ServiceLocator._un2007([ServicesController],this._uj3682);
      }
      
      private function _uj3682() : void
      {
         if(!(ServiceLocator.get(ServicesController) as ServicesController)._cj12262)
         {
            (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029(["missionsAssets.swf"],this._da4911);
         }
      }
      
      private function _da4911() : void
      {
         this.show();
      }
      
      private function open(param1:Event) : void
      {
         ExternalInterface.call("openBattlePassWindow");
      }
      
      private function show() : void
      {
         ExternalInterface.call("showZombieWolfContest");
         ExternalInterface.call("OutArea");
         ExternalInterface.call("hideBadges");
         var count2:MovieClip = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("missionsAssets.swf","MissionsWindowButton") as MovieClip;
         count2.addEventListener(MouseEvent.CLICK,this.open);
         this._qf955 = new WindowsView(count2,WindowsController.textString);
         _wj9062._lt3848(this._qf955);
      }
      
      override protected function move1(param1:String, param2:String, param3:Object) : void
      {
         var count1:MovieClip = null;
         var count2:WindowsModel = null;
         if(param2 == StepsView.textString3)
         {
            if(param1 == WindowsController.textString1)
            {
               this.show();
            }
         }
         if(param2 == StepsView.textString1)
         {
            if(param1 == WindowsController.textString)
            {
               count1 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("missionsAssets.swf","MissionsWindowContainer") as MovieClip;
               count2 = new WindowsModel(count1,WindowsController.textString1);
               _wj9062._lt3848(count2);
               dispatchEvent(new Event(WindowsController.textString2));
            }
         }
      }
   }
}

