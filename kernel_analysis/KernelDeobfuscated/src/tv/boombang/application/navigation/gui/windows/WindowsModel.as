package src.tv.boombang.application.navigation.gui.windows
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows.WindowsView;
   import src.tv.boombang.application.navigation.events.*;
   import src.tv.boombang.application.navigation.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.list.*;
   
   public class WindowsModel extends WindowsView implements Interfaces
   {
      
      private var _mm16061:ComponentsModel;
      
      private var _rx14500:ComponentsModel;
      
      private var _ei14955:MovieClip;
      
      private var _qe10706:NavigationmenuModel;
      
      private var _sl12580:NavigationmenuModel;
      
      public function WindowsModel(param1:MovieClip, param2:String, param3:NavigationmenuModel)
      {
         var count1:NavigationmenuModel = null;
         var count7:int = 0;
         var count8:int = 0;
         super(param1,param2);
         this._sl12580 = param3;
         this._mm16061 = new ComponentsModel(_vr11636);
         this._mm16061.addEventListener(ListModel.textString,this.loadResource,false,0,true);
         var count2:Array = new Array();
         count2.push(this._ax7775("navigationMenu.buttons.areas",NavigationmenuModel._as7636,ComponentsController.textString1));
         count2.push(this._ax7775("navigationMenu.buttons.games",NavigationmenuModel._ja3630,ComponentsController.textString2));
         count2.push(this._ax7775("navigationMenu.buttons.islands",NavigationmenuModel._kj11377,ComponentsController.textString2));
         count2.push(this._ax7775("navigationMenu.buttons.houses",NavigationmenuModel._rv11305,ComponentsController.textString2));
         count2.push(this._ax7775("navigationMenu.buttons.search",NavigationmenuModel._iy6431,ComponentsController.textString3,true));
         var items:int = int(count2.length);
         while(count8 < items)
         {
            count1 = count2[count8];
            if(this._sl12580 == count1._ks12861)
            {
               count7 = count8;
               break;
            }
            count8++;
         }
         this._mm16061._wt2363(count2,count7);
         _xo6614.addChild(this._mm16061);
      }
      
      private function _ax7775(param1:String, param2:NavigationmenuModel, param3:String, param4:Boolean = false) : NavigationmenuModel
      {
         var count2:NavigationmenuModel = new NavigationmenuModel();
         count2.id = param1;
         count2._fr15414 = param3;
         count2._is13063 = param4;
         count2._ks12861 = param2;
         return count2;
      }
      
      private function loadResource(param1:ListModel) : void
      {
         if(this._rx14500 != null)
         {
            if(this._rx14500.isLoading)
            {
               return;
            }
            this._rx14500.destroy();
            removeChild(this._rx14500);
            this._rx14500 = null;
         }
         this._qe10706 = param1.data as NavigationmenuModel;
         dispatchEvent(new EventsModel(EventsModel.textString1,null,this._qe10706._ks12861));
         switch(this._qe10706._ks12861)
         {
            case NavigationmenuModel._as7636:
               this._rx14500 = new ComponentsModel((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","ListWindow") as MovieClip,NavigationmenuModel._as7636._tv1901);
               this._rx14500.addEventListener(EventsModel.textString7,this._vv12201,false,0,true);
               break;
            case NavigationmenuModel._ja3630:
               this._rx14500 = new ComponentsModel((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","ListWindow") as MovieClip,NavigationmenuModel._ja3630._tv1901);
               this._rx14500.addEventListener(EventsModel.textString7,this._vv12201,false,0,true);
               break;
            case NavigationmenuModel._kj11377:
               this._rx14500 = new ComponentsModel((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","IslandsWindow") as MovieClip,NavigationmenuModel._kj11377._tv1901);
               this._rx14500.addEventListener(EventsModel.textString15,this._pa3291,false,0,true);
               this._rx14500.addEventListener(EventsModel.textString10,this._hl11318,false,0,true);
               this._rx14500.addEventListener(EventsModel.textString20,this._ul15328,false,0,true);
               break;
            case NavigationmenuModel._rv11305:
               this._rx14500 = new ComponentsModel((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","HousesWindow") as MovieClip,NavigationmenuModel._rv11305._tv1901);
               this._rx14500.addEventListener(EventsModel.textString20,this._ul15328,false,0,true);
               break;
            case NavigationmenuModel._iy6431:
               this._rx14500 = new ComponentsModel((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","SearchWindow") as MovieClip,NavigationmenuModel._iy6431._tv1901);
               this._rx14500.addEventListener(EventsModel.textString20,this._ul15328,false,0,true);
               this._rx14500.addEventListener(EventsModel.textString15,this._pa3291,false,0,true);
         }
         if(this._rx14500)
         {
            this._rx14500.addEventListener(EventsModel.textString,this.loadResource1,false,0,true);
            this._rx14500.x = 7;
            this._rx14500.y = 37;
            addChild(this._rx14500);
         }
      }
      
      private function loadResource1(param1:EventsModel) : void
      {
         this._mm16061._dy867 = !this._rx14500.isLoading;
      }
      
      private function _pa3291(param1:EventsModel) : void
      {
         dispatchEvent(new EventsModel(EventsModel.textString15,param1.data));
      }
      
      private function _ul15328(param1:EventsModel) : void
      {
         dispatchEvent(new EventsModel(EventsModel.textString20,param1.data));
      }
      
      private function _vv12201(param1:EventsModel) : void
      {
         dispatchEvent(new EventsModel(EventsModel.textString7,param1.data));
      }
      
      private function _hl11318(param1:EventsModel) : void
      {
         dispatchEvent(new EventsModel(EventsModel.textString10,param1.data));
      }
      
      override public function destroy() : void
      {
         if(this._rx14500)
         {
            this._rx14500.removeEventListener(EventsModel.textString15,this._pa3291);
            this._rx14500.removeEventListener(EventsModel.textString20,this._ul15328);
            this._rx14500.removeEventListener(EventsModel.textString7,this._vv12201);
            this._rx14500.removeEventListener(EventsModel.textString10,this._hl11318);
            this._rx14500.removeEventListener(EventsModel.textString,this.loadResource1);
            this._rx14500.destroy();
            this._rx14500 = null;
         }
         if(_xo6614)
         {
            removeChild(_xo6614);
            _xo6614 = null;
         }
         super.destroy();
      }
   }
}

