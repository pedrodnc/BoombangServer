package src.tv.boombang.application.missions.gui.components
{
   import flash.display.*;
   import flash.events.MouseEvent;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.core.datatypes.missions.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.list.*;
   
   public class ComponentsController extends ComponentsView implements ListEvents
   {
      
      public static const _ps111:String = "_selected";
      
      private var _ct9129:MissionsModel;
      
      private var _wb13424:MovieClip;
      
      private var _fs2129:MovieClip;
      
      private var _dk272:ComponentsView;
      
      public function ComponentsController()
      {
         _xo6614 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("missionsAssets.swf","MissionListItem") as MovieClip;
         this._fs2129 = _xo6614["coin"];
         this._fs2129.visible = false;
         this._wb13424 = _xo6614["doneIcon"];
         this._wb13424.visible = false;
         this._dk272 = new ComponentsView(_xo6614["earn"]);
         this._dk272.visible = false;
         super(_xo6614);
         addChild(_xo6614);
         this._ou4931 = false;
      }
      
      public function set _os5347(param1:*) : void
      {
         this._ct9129 = param1;
         this.text = "missions.list.title_" + this._ct9129.id;
         if(this._ct9129.status == MissionsModel._ok5260)
         {
            this._wb13424.visible = true;
            this._dk272.visible = false;
         }
         else
         {
            this._fs2129.visible = true;
            this._dk272.txt = "+" + this._ct9129._ec8491.toString();
            this._dk272.visible = true;
         }
      }
      
      public function get _os5347() : *
      {
         return this._ct9129;
      }
      
      override protected function _rt5195(param1:MouseEvent) : void
      {
         super._rt5195(param1);
      }
      
      override protected function _qu5290(param1:MouseEvent) : void
      {
         super._qu5290(param1);
      }
      
      public function selectedItem() : void
      {
         this.enabled = false;
         this._xo6614.gotoAndStop(_ps111);
         this._xo6614.alpha = 1;
      }
      
      public function _hs7892() : void
      {
         this.enabled = true;
      }
      
      override public function destroy() : void
      {
         super.destroy();
      }
   }
}

