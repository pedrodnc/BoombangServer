package src.modules.npc.typeNpc
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.utils.*;
   import src.*;
   import src.allData.scene.typeEscenarios.*;
   import src.modules.npc.animation.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.npc.gui.window.*;
   import src.tv.boombang.application.npc.gui.window.gameSinglePlayer.*;
   import src.tv.boombang.application.npc.gui.window.games.*;
   import src.tv.boombang.core.datatypes.movement.*;
   import src.tv.boombang.core.datatypes.npc.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.windows.*;
   
   public class TypenpcModel extends MovieClip
   {
      
      public static const textString:String = "playSinglePlayerGame";
      
      private static const count:int = 120000;
      
      private var _data:NpcModel;
      
      private var _ue14215:NPCTypeDefinitions;
      
      private var _pi7655:AnimationModel;
      
      private var _xo6614:MovieClip;
      
      private var _bd7771:MovieClip;
      
      private var _vd216:MovieClip;
      
      private var _bf9057:MovieClip;
      
      private var _ii6403:ComponentsController;
      
      private var _jl6572:WindowModel;
      
      public var count6:*;
      
      private var _ll15458:GamesingleplayerView;
      
      private var items:Array;
      
      private var isEnabled:Boolean = false;
      
      private var count1:int;
      
      public function TypenpcModel(param1:NpcModel, param2:NPCTypeDefinitions)
      {
         super();
         this._data = param1;
         this._ue14215 = param2;
         this._ii6403 = new ComponentsController(0,0,false);
         this._ii6403.y = -50;
         var count3:Point = SceneType.getPlotXY(new Point(this._data.x,this._data.y));
         this.x = count3.x;
         this.y = count3.y;
         this.addChild(this._ii6403);
         _xw1367.getInstance()._uc3178(this,_xw1367.count3,true);
         (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029(["npc" + param1._mc12100 + ".swf"],this.onClick);
      }
      
      public static function _ms8941(param1:NpcModel, param2:NPCTypeDefinitions) : TypenpcModel
      {
         return new TypenpcModel(param1,param2);
      }
      
      private function onClick() : void
      {
         if(this._ii6403)
         {
            if(this.contains(this._ii6403))
            {
               removeChild(this._ii6403);
            }
            this._ii6403 = null;
         }
         this._xo6614 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("npc" + this._data._mc12100 + ".swf","mcAvatarNpc");
         this._op11695();
         this._bd7771 = this._xo6614["mcAtencion"];
         this._vd216 = this._xo6614["mcHitArea"];
         this._bf9057 = this._xo6614["mcNPC"];
         this._xo6614.scaleX = this._xo6614.scaleY = SceneType._as10446();
         addChild(this._xo6614);
         if(this._ue14215._yt6918 != null)
         {
            this._ue14215._yt6918(this._data._iq7144,this._data._iq7144 == NpcModel._fi15052 ? this._data._jg8660 : this._data._ud6796,this._data._ud6796);
         }
         if(this._data._iq7144 != NpcModel._nd14059)
         {
            this.addListeners();
         }
         else if(this._bf9057.mcO)
         {
            var count2:MovementModel = new MovementModel();
            null._pv818 = true;
            null.time = 0;
            this.move(null);
         }
      }
      
      private function _op11695() : void
      {
         var count2:String = null;
         var count:String = null;
         var count3:int = 0;
         this.items = new Array();
         while(count3 < 11)
         {
            count2 = "npc." + this._data._ud6796 + ".chat." + count3;
            count = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1(count2);
            if(count != count2)
            {
               this.items.push(count);
            }
            count3++;
         }
         if(this.items.length > 0)
         {
            this.count1 = getTimer();
            this.isEnabled = true;
         }
      }
      
      private function _gm2975() : void
      {
         var count2:int = 0;
         var count:String = null;
         var count3:int = int(getTimer());
         if(count3 > this.count1 + count)
         {
            this.count1 = getTimer();
            count2 = Math.floor(Math.random() * this.items.length);
            count = this.items[count2];
            if(this._ue14215._un14201 != null)
            {
               this._ue14215._un14201(this.x,this.y,count,this._data.name,29);
            }
         }
      }
      
      public function loop() : void
      {
         if(this._pi7655)
         {
            this._pi7655.loop();
         }
         if(this.isEnabled)
         {
            this._gm2975();
         }
      }
      
      public function move(param1:MovementModel) : void
      {
         if(this._xo6614)
         {
            this._pi7655 = null;
            this._pi7655 = new AnimationModel(this,param1);
         }
      }
      
      public function _wr14763(param1:int, param2:int, param3:int) : void
      {
         if(this._pi7655)
         {
            var count1:Point = SceneType.getPlotXY(new Point(param1,param2));
            this.x = null.x;
            this.y = null.y;
            this._pi7655._wr14763(param1,param2,param3);
         }
      }
      
      public function _mi8865(param1:String, param2:int) : void
      {
         if(this._ue14215._un14201 != null)
         {
            this._ue14215._un14201(this.x,this.y,param1,this._data.name,param2);
         }
      }
      
      private function addListeners() : void
      {
         this._xo6614.mouseChildren = true;
         if(this._vd216 != null)
         {
            this._vd216.mouseEnabled = true;
            this._vd216.buttonMode = true;
            this._bf9057.hitArea = this._vd216;
            this._vd216.addEventListener(MouseEvent.CLICK,this.hide,false,0,true);
            this._vd216.addEventListener(MouseEvent.ROLL_OVER,this.onClick2,false,0,true);
            this._vd216.addEventListener(MouseEvent.ROLL_OUT,this.onClick3,false,0,true);
         }
         if(this._bf9057)
         {
            this._bf9057.mouseEnabled = false;
            this._bf9057.buttonMode = false;
         }
      }
      
      private function hide(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         param1.stopPropagation();
         param1.preventDefault();
         if(this._data._iq7144 == NpcModel._ej5839)
         {
            if(!this._jl6572)
            {
               this._jl6572 = new WindowModel(this._data._bv13835);
               this._jl6572.addEventListener("onCloseWindow",this._jp1982,false,0,true);
               UIDialog.getInstance().add(this._jl6572,this.x - this.width / 3,this.y - this.height / 2);
            }
         }
         else if(this._data._iq7144 == NpcModel._gc10840)
         {
            this.loadData();
         }
         else if(this._data._iq7144 == NpcModel._oh4747)
         {
            this.destroy();
         }
         else if(this._ue14215._bf3838 != null)
         {
            this._ue14215._bf3838();
         }
      }
      
      private function onClick2(param1:MouseEvent) : void
      {
         if(this._bd7771)
         {
            this._bd7771["mcAtencion"].gotoAndPlay(7);
            this._bd7771.filters = [new GlowFilter(16777215,1,10,10,2,1,false,false)];
         }
      }
      
      private function onClick3(param1:MouseEvent) : void
      {
         if(this._bd7771)
         {
            this._bd7771.filters = null;
         }
      }
      
      private function destroy() : void
      {
         if(this._ll15458)
         {
            this._ll15458.destroy();
            this._ll15458 = null;
         }
         this._ll15458 = new GamesingleplayerView(1);
         this._ll15458.addEventListener(GamesingleplayerView.textString1,this.move1);
         UIDialog.getInstance().add(this._ll15458,260,this.y - 260);
      }
      
      private function move1(param1:Event) : void
      {
         this._ll15458.removeEventListener(GamesingleplayerView.textString1,this.move1);
         dispatchEvent(new Event(textString));
      }
      
      private function loadData() : void
      {
         UIDialog.getInstance().destroy(new GamesModel(this._data._ud6796),550,20);
      }
      
      public function get view() : MovieClip
      {
         return this._xo6614;
      }
      
      public function _of6691() : int
      {
         return this._data._oq4159;
      }
      
      private function _jp1982(param1:Event) : void
      {
         this._jl6572 = null;
      }
      
      public function destroy() : void
      {
         if(this._vd216 != null)
         {
            this._vd216.removeEventListener(MouseEvent.CLICK,this.hide);
            this._vd216.removeEventListener(MouseEvent.ROLL_OVER,this.onClick2);
            this._vd216.removeEventListener(MouseEvent.ROLL_OUT,this.onClick3);
         }
         if(this._jl6572)
         {
            UIDialog.getInstance().remove(this._jl6572);
            this._jl6572 = null;
         }
         if(this._ll15458)
         {
            this._ll15458.removeEventListener(GamesingleplayerView.textString1,this.move1);
            UIDialog.getInstance().remove(this._ll15458);
            this._ll15458 = null;
         }
         if(this._ii6403)
         {
            if(this.contains(this._ii6403))
            {
               removeChild(this._ii6403);
            }
            this._ii6403 = null;
         }
         if(this._xo6614)
         {
            if(this.contains(this._xo6614))
            {
               removeChild(this._xo6614);
            }
            this._xo6614 = null;
         }
         _xw1367.getInstance().move2(this,_xw1367.count3);
      }
   }
}

