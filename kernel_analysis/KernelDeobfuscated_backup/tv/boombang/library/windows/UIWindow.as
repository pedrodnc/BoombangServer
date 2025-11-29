package src.tv.boombang.library.windows
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.components._rn8936;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.steps.*;
   
   public class _lx1779 extends _rn8936 implements _jk15536
   {
      
      protected var _ln12607:_pd14567;
      
      protected var _wj9062:_wo727;
      
      public function _lx1779()
      {
         super();
         this._wj9062 = new _wo727(this._jp7690);
         this.init();
         addChild(this._wj9062);
      }
      
      protected function _cw8295(param1:String) : MovieClip
      {
         return (_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf",param1) as MovieClip;
      }
      
      protected function init() : void
      {
      }
      
      protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
      }
      
      override public function destroy() : void
      {
         this._wj9062.destroy();
      }
   }
}

