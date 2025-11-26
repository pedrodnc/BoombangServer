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
      
      public static const _qm3080:String = "missionsButton";
      
      public static const _wr10050:String = "missionsList";
      
      public static const _wc11086:String = "missionOpenMenu";
      
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
         this._kr9723();
      }
      
      private function open(param1:Event) : void
      {
         ExternalInterface.call("openBattlePassWindow");
      }
      
      private function _kr9723() : void
      {
         ExternalInterface.call("showZombieWolfContest");
         ExternalInterface.call("OutArea");
         ExternalInterface.call("hideBadges");
         var _loc1_:MovieClip = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("missionsAssets.swf","MissionsWindowButton") as MovieClip;
         _loc1_.addEventListener(MouseEvent.CLICK,this.open);
         this._qf955 = new WindowsView(_loc1_,WindowsController._qm3080);
         _wj9062._lt3848(this._qf955);
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:WindowsModel = null;
         if(param2 == StepsView._by10560)
         {
            if(param1 == WindowsController._wr10050)
            {
               this._kr9723();
            }
         }
         if(param2 == StepsView._dh1979)
         {
            if(param1 == WindowsController._qm3080)
            {
               _loc4_ = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("missionsAssets.swf","MissionsWindowContainer") as MovieClip;
               _loc5_ = new WindowsModel(_loc4_,WindowsController._wr10050);
               _wj9062._lt3848(_loc5_);
               dispatchEvent(new Event(WindowsController._wc11086));
            }
         }
      }
   }
}

