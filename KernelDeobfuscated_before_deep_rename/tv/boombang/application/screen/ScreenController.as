package src.tv.boombang.application.screen
{
   import flash.display.MovieClip;
   import src.modules.multiplayerGames.dataGame.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.screen.windows.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.screen.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.windows.UIWindow;
   
   public class ScreenController extends UIWindow
   {
      
      public static const _md15410:String = "LASTWEEKWINNERS";
      
      public static const _bt10795:String = "THISWEEKWINNERS";
      
      private var _ck5194:int;
      
      private var _co15344:int;
      
      private var _vh14282:Array;
      
      public function ScreenController(param1:int)
      {
         super();
         this._ck5194 = param1;
         PacketBuilder._xo2736(MessageTypeConstants._oj1220,this._sk542);
         Communications._at15478(this._ck5194);
      }
      
      override public function destroy() : void
      {
         PacketBuilder._mw12849(MessageTypeConstants._oj1220,this._sk542);
         super.destroy();
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         switch(param1)
         {
            case _bt10795:
               PacketBuilder._xo2736(MessageTypeConstants._oj1220,this._sk542);
               Communications._at15478(this._ck5194);
               return;
            case _md15410:
               this._js13951();
               return;
            default:
               return;
         }
      }
      
      private function _sk542(param1:NetworkEventWrapper) : void
      {
         var _loc2_:Array = null;
         var _loc3_:ScreenModel = null;
         var _loc4_:int = int(param1._qp16092(0));
         if(_loc4_ == MessageTypeConstants._oj1220)
         {
            PacketBuilder._mw12849(MessageTypeConstants._oj1220,this._sk542);
            _loc2_ = param1.items.concat();
            _loc2_.splice(0,1);
            this._vh14282 = [];
            while(true)
            {
               _loc3_ = ScreenModel.parse(_loc2_);
               if(_loc3_ == null)
               {
                  break;
               }
               this._vh14282.push(_loc3_);
            }
            this._ur15039();
         }
      }
      
      private function _ur15039() : void
      {
         var _loc1_:MovieClip = null;
         switch(this._ck5194)
         {
            case DatagameModel._uh5110:
               _loc1_ = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("ledScreenLibrary.swf","LedScreenRing");
               break;
            case DatagameModel._ir2135:
               _loc1_ = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("ledScreenLibrary.swf","LedScreenHiddenPath");
               break;
            case DatagameModel._ot11105:
               _loc1_ = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("ledScreenLibrary.swf","LedScreenCoconuts");
               break;
            case DatagameModel._ro15425:
               _loc1_ = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("ledScreenLibrary.swf","LedScreenNinjaWay");
         }
         var _loc2_:WindowsModel = new WindowsModel(_loc1_,_md15410,this._ck5194,this._vh14282[ScreenModel._rl14493.id],this._vh14282[ScreenModel._qu9559.id]);
         _wj9062._lt3848(_loc2_);
      }
      
      private function _js13951() : void
      {
         var _loc1_:MovieClip = null;
         switch(this._ck5194)
         {
            case DatagameModel._uh5110:
               _loc1_ = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("ledScreenLibrary.swf","LedScreenRing");
               break;
            case DatagameModel._ir2135:
               _loc1_ = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("ledScreenLibrary.swf","LedScreenHiddenPath");
               break;
            case DatagameModel._ot11105:
               _loc1_ = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("ledScreenLibrary.swf","LedScreenCoconuts");
               break;
            case DatagameModel._ro15425:
               _loc1_ = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("ledScreenLibrary.swf","LedScreenNinjaWay");
         }
         var _loc2_:WindowsModel = new WindowsModel(_loc1_,_bt10795,this._ck5194,this._vh14282[ScreenModel._pb3637.id],this._vh14282[ScreenModel._qu9559.id]);
         _wj9062._lt3848(_loc2_);
      }
      
      public function get _jr11615() : int
      {
         return this._co15344;
      }
      
      public function set _jr11615(param1:int) : void
      {
         this._co15344 = param1;
      }
   }
}

