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
      
      public static const textString:String = "LASTWEEKWINNERS";
      
      public static const textString1:String = "THISWEEKWINNERS";
      
      private var count5:int;
      
      private var count1:int;
      
      private var items:Array;
      
      public function ScreenController(param1:int)
      {
         super();
         this.count5 = param1;
         PacketBuilder.handleSocket(MessageTypeConstants.count103,this.update);
         Communications._at15478(this.count5);
      }
      
      override public function destroy() : void
      {
         PacketBuilder.handleSocket1(MessageTypeConstants.count103,this.update);
         super.destroy();
      }
      
      override protected function move1(param1:String, param2:String, param3:Object) : void
      {
         switch(param1)
         {
            case textString1:
               PacketBuilder.handleSocket(MessageTypeConstants.count103,this.update);
               Communications._at15478(this.count5);
               return;
            case textString:
               this._js13951();
               return;
            default:
               return;
         }
      }
      
      private function update(param1:NetworkEventWrapper) : void
      {
         var count:Array = null;
         var count3:ScreenModel = null;
         var count1:int = int(param1._qp16092(0));
         if(count1 == MessageTypeConstants.count103)
         {
            PacketBuilder.handleSocket1(MessageTypeConstants.count103,this.update);
            count = param1.items.concat();
            count.splice(0,1);
            this.items = [];
            while(true)
            {
               count3 = ScreenModel.parse(count);
               if(count3 == null)
               {
                  break;
               }
               this.items.push(count3);
            }
            this._ur15039();
         }
      }
      
      private function _ur15039() : void
      {
         var count2:MovieClip = null;
         switch(this.count5)
         {
            case DatagameModel._uh5110:
               count2 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("ledScreenLibrary.swf","LedScreenRing");
               break;
            case DatagameModel._ir2135:
               count2 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("ledScreenLibrary.swf","LedScreenHiddenPath");
               break;
            case DatagameModel._ot11105:
               count2 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("ledScreenLibrary.swf","LedScreenCoconuts");
               break;
            case DatagameModel._ro15425:
               count2 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("ledScreenLibrary.swf","LedScreenNinjaWay");
         }
         var count:WindowsModel = new WindowsModel(count2,textString,this.count5,this.items[ScreenModel._rl14493.id],this.items[ScreenModel._qu9559.id]);
         _wj9062._lt3848(count);
      }
      
      private function _js13951() : void
      {
         var count2:MovieClip = null;
         switch(this.count5)
         {
            case DatagameModel._uh5110:
               count2 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("ledScreenLibrary.swf","LedScreenRing");
               break;
            case DatagameModel._ir2135:
               count2 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("ledScreenLibrary.swf","LedScreenHiddenPath");
               break;
            case DatagameModel._ot11105:
               count2 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("ledScreenLibrary.swf","LedScreenCoconuts");
               break;
            case DatagameModel._ro15425:
               count2 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("ledScreenLibrary.swf","LedScreenNinjaWay");
         }
         var count:WindowsModel = new WindowsModel(count2,textString1,this.count5,this.items[ScreenModel._pb3637.id],this.items[ScreenModel._qu9559.id]);
         _wj9062._lt3848(count);
      }
      
      public function get count6() : int
      {
         return this.count1;
      }
      
      public function set count6(param1:int) : void
      {
         this.count1 = param1;
      }
   }
}

