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
      
      public static const textString2:String = "missionPopup.swf";
      
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
         (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029([textString2],this.hide);
      }
      
      override public function destroy() : void
      {
         if(this._ig5144 != null)
         {
            this._ig5144.removeEventListener(MouseEvent.CLICK,this.move1);
            this._ig5144 = null;
         }
         super.destroy();
      }
      
      protected function hide() : void
      {
         _xo6614 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(textString2,"Popup");
         if(_xo6614.getChildByName("closeBtn"))
         {
            this._ig5144 = new ComponentsModel(_xo6614.getChildByName("closeBtn") as MovieClip);
            this._ig5144.addEventListener(MouseEvent.CLICK,this.move1,false,0,true);
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
         move();
      }
      
      protected function move1(param1:MouseEvent) : void
      {
         move1();
      }
      
      private function _ia16156(param1:NotificationsModel) : void
      {
         var count:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1("notification.social.missions.title",UserSession.getInstance().name);
         var count3:DatatypesModel = new DatatypesModel();
         count3.title = count;
         count3._ac11275 = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1("notification.social.missions.description",UserSession.getInstance().name);
         count3._mi1279 = CoreModel._dy2407._rv7011 + Configuration.textString + "/" + param1._wi2744._dm14965(param1.level);
         count3._cx7785 = param1._kv12836;
         var count1:DatatypesModel = new DatatypesModel();
         count1.message = count;
         count1._cx7785 = param1._qa11276;
         var count2:DatatypesModel = new DatatypesModel();
         count2._cx7785 = param1._gs12774;
         var count7:DatatypesModel = new DatatypesModel();
         count7._nv759 = param1.id;
         this._ug7443 = new ComponentsController(count3,count1,count2,count7,true);
      }
   }
}

