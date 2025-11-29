package src.tv.boombang.library.windows
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.components.UIButton;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.steps.*;
   
   public class UIWindow extends UIButton implements Interfaces
   {
      
      protected var _ln12607:Steps;
      
      protected var _wj9062:StepsEvents;
      
      public function UIWindow()
      {
         super();
         this._wj9062 = new StepsEvents(this.move1);
         this.init();
         addChild(this._wj9062);
      }
      
      protected function _cw8295(param1:String) : MovieClip
      {
         return (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf",param1) as MovieClip;
      }
      
      protected function init() : void
      {
      }
      
      protected function move1(param1:String, param2:String, param3:Object) : void
      {
      }
      
      override public function destroy() : void
      {
         this._wj9062.destroy();
      }
   }
}

