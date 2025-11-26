package src.tv.boombang.application.popup
{
   import flash.display.*;
   import flash.events.*;
   import src.allData.*;
   import src.config.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.social.datatypes.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.datatypes.notifications.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.popup._aq4817;
   
   public class _no7530 extends _aq4817
   {
      
      public static const _if5805:String = "missionPopup.swf";
      
      private var _ig5144:_qy9375;
      
      private var _data:_xs13329;
      
      private var _lf15550:_om4028;
      
      private var _do8658:_om4028;
      
      private var _ut8264:_om4028;
      
      private var _re4978:_om4028;
      
      private var _ug7443:_wb14440;
      
      public function _no7530(param1:_xs13329)
      {
         this._data = param1;
         this._ia16156(this._data);
         super();
         (_lh7543.get(_vy3822) as _vy3822)._vv13029([_if5805],this._xn8898);
      }
      
      override public function destroy() : void
      {
         if(this._ig5144 != null)
         {
            this._ig5144.removeEventListener(MouseEvent.CLICK,this._qn6887);
            this._ig5144 = null;
         }
         super.destroy();
      }
      
      protected function _xn8898() : void
      {
         _xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619(_if5805,"Popup");
         if(_xo6614.getChildByName("closeBtn"))
         {
            this._ig5144 = new _qy9375(_xo6614.getChildByName("closeBtn") as MovieClip);
            this._ig5144.addEventListener(MouseEvent.CLICK,this._qn6887,false,0,true);
         }
         this._lf15550 = new _om4028(_xo6614["titleField"],true);
         this._lf15550.txt = "notification.popup.missions.title";
         this._do8658 = new _om4028(_xo6614["subtitleField"]);
         this._do8658.txt = "notification.popup.missions.subtitle";
         if(_xo6614["descriptionField"])
         {
            this._ut8264 = new _om4028(_xo6614["descriptionField"]);
            this._ut8264.txt = "notification.popup.missions.description";
         }
         this._re4978 = new _om4028(_xo6614["iconWin"]);
         this._re4978.txt = (this._data._rl4311[0] as _no13431).txt;
         _xo6614["sharersContainer"].addChild(this._ug7443);
         _er5800();
      }
      
      protected function _qn6887(param1:MouseEvent) : void
      {
         _ks10725();
      }
      
      private function _ia16156(param1:_xs13329) : void
      {
         var _loc2_:String = (_lh7543.get(_dw1395) as _dw1395)._ad13455("notification.social.missions.title",_hv12530.getInstance().name);
         var _loc3_:_vw5755 = new _vw5755();
         _loc3_.title = _loc2_;
         _loc3_._ac11275 = (_lh7543.get(_dw1395) as _dw1395)._ad13455("notification.social.missions.description",_hv12530.getInstance().name);
         _loc3_._mi1279 = _fg1060._dy2407._rv7011 + _cc7688._yg212 + "/" + param1._wi2744._dm14965(param1.level);
         _loc3_._cx7785 = param1._kv12836;
         var _loc4_:_vw5755 = new _vw5755();
         _loc4_.message = _loc2_;
         _loc4_._cx7785 = param1._qa11276;
         var _loc5_:_vw5755 = new _vw5755();
         _loc5_._cx7785 = param1._gs12774;
         var _loc6_:_vw5755 = new _vw5755();
         _loc6_._nv759 = param1.id;
         this._ug7443 = new _wb14440(_loc3_,_loc4_,_loc5_,_loc6_,true);
      }
   }
}

