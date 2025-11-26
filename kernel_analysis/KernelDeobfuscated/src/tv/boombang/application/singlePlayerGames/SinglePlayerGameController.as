package src.tv.boombang.application.singlePlayerGames
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import src.*;
   import src.allData.*;
   import src.config.*;
   import src.modules.bpad.*;
   import src.modules.interfaz.baseChat.*;
   import src.person.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.social.datatypes.*;
   import src.tv.boombang.commons.utils.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.core.service_container.services.resource_management.Resources.*;
   
   public class SinglePlayerGameController extends MovieClip
   {
      
      public static const textString:String = "CloseTheGame";
      
      private var _tn2912:MovieClip;
      
      private var _cd3913:ChatDataModel;
      
      private var _pn8869:UIButton;
      
      private var _bq13675:UIButton;
      
      private var _sh2946:ResourcesController;
      
      private var _qv844:BPadController;
      
      private var _vk974:MovieClip;
      
      private var _ug7443:ComponentsController;
      
      private var count5:int;
      
      private var _er5513:MovieClip;
      
      public function SinglePlayerGameController(param1:int = 1)
      {
         super();
         (ServiceLocator.get(ServiceManager) as ServiceManager).loadResource("/play/singlePlayer_" + param1);
         this.count5 = param1;
         (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029(["brujula.swf","background_" + this.count5 + ".jpg"],this.initialize);
         var count:String = (ServiceLocator.get(ResourceManager) as ResourceManager).getString1("singleGame_" + this.count5 + ".swf");
         this._sh2946 = new ResourcesController(count,"singleGame" + this.count5 + ".swf");
         this._sh2946._mv15948(this.start);
         this._sh2946.load();
         this._qv844 = BPadController._np546;
         this._qv844._fo382(BPadController._yk9555);
         this._bq13675 = new UIButton();
         this._bq13675._np5723 = new Point(0,1);
         this._bq13675._wg2951 = new Point(-210,-45);
         this._qv844._so6911(this._bq13675);
         this._qv844.show();
         _xw1367.getInstance()._uc3178(this._bq13675,_xw1367.count5);
         this._vk974 = PersonController._ku11706(UserSession.getInstance(),"down_idle");
      }
      
      public function destroy() : void
      {
         _xw1367.getInstance().move2(this._tn2912,_xw1367.count4);
         _xw1367.getInstance().move2(this._pn8869,_xw1367.count5);
         _xw1367.getInstance().move2(this._bq13675,_xw1367.count5);
         _xw1367.getInstance().move2(this._er5513,_xw1367.count2);
         this._cd3913.destroy();
         var count2:* = this._tn2912;
         count2["destroy"]();
         this._qv844.authenticateUser2();
         if(this._ug7443)
         {
            _xw1367.getInstance().move2(this._ug7443,_xw1367.count4);
         }
      }
      
      private function start(param1:Event) : void
      {
         this._tn2912 = this._sh2946._dr16162() as MovieClip;
         _xw1367.getInstance()._uc3178(this._tn2912,_xw1367.count4,true);
         this._tn2912.y = 10;
         this._tn2912.start(this._vk974,Configuration.textString);
         this._tn2912.addEventListener("onGameOver",this.loadData);
         this._tn2912.addEventListener("onGameStart",this._hp13680);
      }
      
      private function _hp13680(param1:Event) : void
      {
         if(this._ug7443)
         {
            _xw1367.getInstance().move2(this._ug7443,_xw1367.count4);
         }
      }
      
      private function loadData(param1:Event) : void
      {
         var count:Object = this._tn2912.getData();
         var count3:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1("games.singlePlayer.share.game_" + this.count5 + ".twitter",count);
         var count1:DatatypesModel = new DatatypesModel();
         count1.message = count3;
         var count2:DatatypesModel = new DatatypesModel();
         count2.message = count3;
         var count7:DatatypesModel = new DatatypesModel();
         count7.message = count3;
         this._ug7443 = new ComponentsController(count1,count2,null,count7,true);
         _xw1367.getInstance()._uc3178(this._ug7443,_xw1367.count4,true);
         this._ug7443.x = DisplayUtils._ps6769().width / 2 - this._ug7443.width / 2;
         this._ug7443.y = 420;
      }
      
      private function initialize() : void
      {
         var count2:MovieClip = (ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("brujula.swf");
         var count:Bitmap = (ServiceLocator.get(ResourceManager) as ResourceManager)._pf13231("background_" + this.count5 + ".jpg");
         this._er5513 = new MovieClip();
         this._er5513.addChild(count);
         this._cd3913 = new ChatDataModel(count2,this._oy9976);
         this._pn8869 = new UIButton();
         this._pn8869._np5723 = new Point(0,1);
         this._pn8869._wg2951 = new Point(0,-100);
         _xw1367.getInstance()._uc3178(this._pn8869,_xw1367.count5);
         _xw1367.getInstance()._uc3178(this._er5513,_xw1367.count2);
         this._pn8869.addChild(this._cd3913.movieClip);
      }
      
      public function _oy9976() : void
      {
         dispatchEvent(new Event(SinglePlayerGameController.textString));
      }
   }
}

