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
         this._uh14329.addEventListener(MouseEvent.MOUSE_DOWN,this._js2639,false,0,true);
         this._ee3913 = new ComponentsView(_xo6614["favoritesHouses"] as MovieClip,"navigationMenu.buttons.favoritesHouses");
         this._ee3913.addEventListener(MouseEvent.MOUSE_DOWN,_dp15792,false,0,true);
         this._vm5233 = new ComponentsView(_xo6614["myHouseButton"] as MovieClip,"navigationMenu.buttons.myhouse");
         this._vm5233.addEventListener(MouseEvent.MOUSE_DOWN,this._gs15411,false,0,true);
         _gv13912 = new Array(this._uh14329,this._ee3913);
         PacketBuilder._xo2736(MessageTypeConstants._fm3463,this._sk542);
         PacketBuilder._xo2736(MessageTypeConstants._ol3812,this._sk542);
         _rw2194();
         _ie12514(this._uh14329);
      }
      
      protected function _sk542(param1:NetworkEventWrapper) : void
      {
         var _loc2_:int = int(param1._qp16092(0));
         var _loc3_:int = int(param1._qp16092(1));
         var _loc4_:int = int(param1.items[0]);
         var _loc5_:Array = param1.items.slice(1,param1.items.length);
         if(_loc2_ == MessageTypeConstants._fm3463)
         {
            if(_tv1901 != _loc4_)
            {
               throw new Errors("the tab id is not the same that the current tab id");
            }
            if(_loc3_ == MessageTypeConstants._tf7197)
            {
               _xa14315 = false;
               this._mx2448(_dx15654(_loc5_,_tv1901));
               _nx3753(_loc5_.length);
            }
         }
         else if(_loc2_ == MessageTypeConstants._ol3812)
         {
            _xa14315 = true;
            this._mx2448(_dx15654(_loc5_,_tv1901));
            _nx3753(_loc5_.length);
         }
         isLoading = false;
      }
      
      private function _js2639(param1:MouseEvent) : void
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
         Communications._pl13792(SceneTypePrivate._ol8098()._kb5211.id,SceneTypePrivate._ol8098()._eb11619);
      }
      
      override protected function _wp3955() : void
      {
         this._yf8727();
         super._wp3955();
      }
      
      override public function _mx2448(param1:Array) : void
      {
         var _loc2_:ComponentsController = null;
         var _loc3_:NavigationmenuModel = null;
         var _loc4_:int = 0;
         this._wp3955();
         while(_loc4_ < param1.length)
         {
            _loc2_ = new ComponentsController();
            _loc3_ = param1[_loc4_];
            if(_xa14315)
            {
               _loc3_._si7985 = true;
               _loc2_.addEventListener(EventsModel._le63,_ic5609,false,0,true);
            }
            else
            {
               _loc2_.addEventListener(EventsModel._yp5143,_cl8914,false,0,true);
            }
            _loc2_.addEventListener(EventsModel._eu6579,_ap2047,false,0,true);
            _loc2_._os5347 = _loc3_;
            _loc2_.y = _loc2_.height * _loc4_ + 2 * _loc4_;
            _items.push(_loc2_);
            _content.addChild(_loc2_);
            _loc4_++;
         }
         update();
      }
      
      protected function _yf8727() : void
      {
         var _loc1_:int = 0;
         var _loc2_:ComponentsController = null;
         if(_items)
         {
            _loc1_ = 0;
            while(_loc1_ < _items.length)
            {
               _loc2_ = _items[_loc1_];
               _loc2_.removeEventListener(EventsModel._le63,_ic5609);
               _loc2_.removeEventListener(EventsModel._yp5143,_cl8914);
               _loc2_.removeEventListener(EventsModel._eu6579,_ap2047);
               _loc2_.destroy();
               _content.removeChild(_loc2_);
               _loc2_ = null;
               _loc1_++;
            }
         }
      }
      
      override public function destroy() : void
      {
         this._yf8727();
         this._uh14329.destroy();
         this._ee3913.destroy();
         this._vm5233.destroy();
         this._uh14329.removeEventListener(MouseEvent.CLICK,this._js2639);
         this._ee3913.removeEventListener(MouseEvent.CLICK,_dp15792);
         this._vm5233.removeEventListener(MouseEvent.CLICK,this._gs15411);
         PacketBuilder._mw12849(MessageTypeConstants._ol3812,this._sk542);
         PacketBuilder._mw12849(MessageTypeConstants._fm3463,this._sk542);
         super.destroy();
      }
   }
}

