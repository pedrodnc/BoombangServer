package src.tv.boombang.application.global.gui.components
{
   import flash.display.*;
   import flash.events.MouseEvent;
   import src.tv.boombang.core.datatypes.navigationMenu.NavigationmenuModel;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.list.*;
   
   public class ComponentsController extends ComponentsModel implements ListEvents
   {
      
      public static const _ps111:String = "_selected";
      
      public static const _pj7003:String = "firstPosition";
      
      public static const _li12270:String = "middlePosition";
      
      public static const _fk2506:String = "lastPosition";
      
      private var _ga3109:NavigationmenuModel;
      
      private var _ft7041:MovieClip;
      
      private var _is15914:MovieClip;
      
      private var _kc4744:ComponentsView;
      
      public function ComponentsController()
      {
         _xo6614 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","TabButton") as MovieClip;
         this._ft7041 = _xo6614.getChildByName("iconSearch") as MovieClip;
         this._is15914 = _xo6614.getChildByName("selectedButton") as MovieClip;
         this._kc4744 = new ComponentsView(_xo6614.getChildByName("title") as MovieClip);
         this._ft7041.visible = false;
         this._is15914.visible = false;
         this._kc4744.visible = false;
         super(_xo6614);
         addChild(_xo6614);
         this._ou4931 = false;
      }
      
      public function set _os5347(param1:*) : void
      {
         this._ga3109 = param1;
         if(this._ga3109._is13063)
         {
            this._ft7041.visible = true;
         }
         else
         {
            this._kc4744.txt = this._ga3109.id;
            this._kc4744.visible = true;
         }
         switch(this._ga3109._fr15414)
         {
            case _pj7003:
               this._is15914["firstState"].visible = true;
               this._is15914["middleState"].visible = false;
               this._is15914["lastState"].visible = false;
               break;
            case _li12270:
               this._is15914["firstState"].visible = false;
               this._is15914["middleState"].visible = true;
               this._is15914["lastState"].visible = false;
               break;
            case _fk2506:
               this._is15914["firstState"].visible = false;
               this._is15914["middleState"].visible = false;
               this._is15914["lastState"].visible = true;
         }
         this._is15914.visible = true;
      }
      
      public function get _os5347() : *
      {
         return this._ga3109;
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

