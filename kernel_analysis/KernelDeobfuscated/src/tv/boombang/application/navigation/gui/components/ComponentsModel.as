package src.tv.boombang.application.navigation.gui.components
{
   import flash.display.*;
   import flash.events.*;
   import src.allData.scene.typeEscenarios.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.navigation.events.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.navigationMenu.NavigationmenuModel;
   import src.tv.boombang.core.errors.*;
   
   public class ComponentsModel extends ComponentsModel
   {
      
      private var _uh14329:ComponentsView;
      
      private var _ee3913:ComponentsView;
      
      private var _vm5233:ComponentsView;
      
      public function ComponentsModel(param1:MovieClip, param2:int)
      {
         super(param1,param2);
         this._uh14329 = new ComponentsView(_xo6614["allHousesButton"] as MovieClip,"navigationMenu.buttons.allHouses");
         this._uh14329.addEventListener(MouseEvent.MOUSE_DOWN,this.loadResource,false,0,true);
         this._ee3913 = new ComponentsView(_xo6614["favoritesHouses"] as MovieClip,"navigationMenu.buttons.favoritesHouses");
         this._ee3913.addEventListener(MouseEvent.MOUSE_DOWN,_dp15792,false,0,true);
         this._vm5233 = new ComponentsView(_xo6614["myHouseButton"] as MovieClip,"navigationMenu.buttons.myhouse");
         this._vm5233.addEventListener(MouseEvent.MOUSE_DOWN,this._gs15411,false,0,true);
         _gv13912 = new Array(this._uh14329,this._ee3913);
         PacketBuilder.handleSocket(MessageTypeConstants.count70,this.update);
         PacketBuilder.handleSocket(MessageTypeConstants.count77,this.update);
         _rw2194();
         _ie12514(this._uh14329);
      }
      
      protected function update(param1:NetworkEventWrapper) : void
      {
         var count:int = int(param1._qp16092(0));
         var count3:int = int(param1._qp16092(1));
         var count1:int = int(param1.items[0]);
         var count2:Array = param1.items.slice(1,param1.items.length);
         if(count == MessageTypeConstants.count70)
         {
            if(_tv1901 != count1)
            {
               throw new Errors("the tab id is not the same that the current tab id");
            }
            if(count3 == MessageTypeConstants.count71)
            {
               _xa14315 = false;
               this._mx2448(_dx15654(count2,_tv1901));
               _nx3753(count2.length);
            }
         }
         else if(count == MessageTypeConstants.count77)
         {
            _xa14315 = true;
            this._mx2448(_dx15654(count2,_tv1901));
            _nx3753(count2.length);
         }
         isLoading = false;
      }
      
      private function loadResource(param1:MouseEvent) : void
      {
         if(!isLoading)
         {
            this._wp3955();
            if(!_xo6614.contains(_progress))
            {
               _xo6614.addChild(_progress);
            }
            _progress.visible = true;
            _rw2194();
            _ie12514(param1.target as ComponentsView);
         }
      }
      
      private function _gs15411(param1:MouseEvent) : void
      {
         Communications._pl13792(SceneTypePrivate._ol8098().count2.id,SceneTypePrivate._ol8098()._eb11619);
      }
      
      override protected function _wp3955() : void
      {
         this.move();
         super._wp3955();
      }
      
      override public function _mx2448(param1:Array) : void
      {
         var count:ComponentsController = null;
         var count3:NavigationmenuModel = null;
         var count1:int = 0;
         this._wp3955();
         while(count1 < param1.length)
         {
            count = new ComponentsController();
            count3 = param1[count1];
            if(_xa14315)
            {
               count3._si7985 = true;
               count.addEventListener(EventsModel.textString19,_ic5609,false,0,true);
            }
            else
            {
               count.addEventListener(EventsModel.textString18,_cl8914,false,0,true);
            }
            count.addEventListener(EventsModel.textString20,_ap2047,false,0,true);
            count._os5347 = count3;
            count.y = count.height * count1 + 2 * count1;
            _items.push(count);
            _content.addChild(count);
            count1++;
         }
         update();
      }
      
      protected function move() : void
      {
         var count2:int = 0;
         var count:ComponentsController = null;
         if(_items)
         {
            count2 = 0;
            while(count2 < _items.length)
            {
               count = _items[count2];
               count.removeEventListener(EventsModel.textString19,_ic5609);
               count.removeEventListener(EventsModel.textString18,_cl8914);
               count.removeEventListener(EventsModel.textString20,_ap2047);
               count.destroy();
               _content.removeChild(count);
               count = null;
               count2++;
            }
         }
      }
      
      override public function destroy() : void
      {
         this.move();
         this._uh14329.destroy();
         this._ee3913.destroy();
         this._vm5233.destroy();
         this._uh14329.removeEventListener(MouseEvent.CLICK,this.loadResource);
         this._ee3913.removeEventListener(MouseEvent.CLICK,_dp15792);
         this._vm5233.removeEventListener(MouseEvent.CLICK,this._gs15411);
         PacketBuilder.handleSocket1(MessageTypeConstants.count77,this.update);
         PacketBuilder.handleSocket1(MessageTypeConstants.count70,this.update);
         super.destroy();
      }
   }
}

