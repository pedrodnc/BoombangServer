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
   import src.tv.boombang.library.popup.PopupView;
   
   public class PopupModel extends PopupView
   {
      
      public static const _if5805:String = "missionPopup.swf";
      
      private var _ig5144:ComponentsModel;
      
      private var _data:NotificationsModel;
      
      private var _lf15550:ComponentsView;
      
      private var _do8658:ComponentsView;
      
      private var _ut8264:ComponentsView;
      
      private var _re4978:ComponentsView;
      
      private var _ug7443:ComponentsController;
      
      public function PopupModel(param1:NotificationsModel)
      {
         this._data = param1;
         this._ia16156(this._data);
         super();
         (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029([_if5805],this._xn8898);
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
         _xo6614 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(_if5805,"Popup");
         if(_xo6614.getChildByName("closeBtn"))
         {
            this._ig5144 = new ComponentsModel(_xo6614.getChildByName("closeBtn") as MovieClip);
            this._ig5144.addEventListener(MouseEvent.CLICK,this._qn6887,false,0,true);
         }
         this._lf15550 = new ComponentsView(_xo6614["titleField"],true);
         this._lf15550.txt = "notification.popup.missions.title";
         this._do8658 = new ComponentsView(_xo6614["subtitleField"]);
         this._do8658.txt = "notification.popup.missions.subtitle";
         if(_xo6614["descriptionField"])
         {
            this._ut8264 = new ComponentsView(_xo6614["descriptionField"]);
            this._ut8264.txt = "notification.popup.missions.description";
         }
         this._re4978 = new ComponentsView(_xo6614["iconWin"]);
         this._re4978.txt = (this._data._rl4311[0] as NotificationsModel).txt;
         _xo6614["sharersContainer"].addChild(this._ug7443);
         _er5800();
      }
      
      protected function _qn6887(param1:MouseEvent) : void
      {
         _ks10725();
      }
      
      private function _ia16156(param1:NotificationsModel) : void
      {
         var _loc2_:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455("notification.social.missions.title",UserSession.getInstance().name);
         var _loc3_:DatatypesModel = new DatatypesModel();
         _loc3_.title = _loc2_;
         _loc3_._ac11275 = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455("notification.social.missions.description",UserSession.getInstance().name);
         _loc3_._mi1279 = CoreModel._dy2407._rv7011 + Configuration._yg212 + "/" + param1._wi2744._dm14965(param1.level);
         _loc3_._cx7785 = param1._kv12836;
         var _loc4_:DatatypesModel = new DatatypesModel();
         _loc4_.message = _loc2_;
         _loc4_._cx7785 = param1._qa11276;
         var _loc5_:DatatypesModel = new DatatypesModel();
         _loc5_._cx7785 = param1._gs12774;
         var _loc6_:DatatypesModel = new DatatypesModel();
         _loc6_._nv759 = param1.id;
         this._ug7443 = new ComponentsController(_loc3_,_loc4_,_loc5_,_loc6_,true);
      }
   }
}

