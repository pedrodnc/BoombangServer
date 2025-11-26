package src.tv.boombang.application.missions.gui.components
{
   import flash.display.*;
   import flash.events.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.core.datatypes.missions.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.list.*;
   
   public class _vk10710 extends Sprite
   {
      
      private var _no3509:Array;
      
      private var _gs6179:int;
      
      private var _items:Array;
      
      private var _dx10834:int = 5;
      
      private var _qo13557:List;
      
      private var _xo6614:MovieClip;
      
      private var _bl14396:MovieClip;
      
      private var _br8675:MovieClip;
      
      private var _xd754:_om4028;
      
      private var _kc4744:_om4028;
      
      private var _ii14435:_om4028;
      
      private var _jl2176:_mj15721;
      
      private var _dk14093:Sprite;
      
      public function _vk10710()
      {
         super();
         this._xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("missionsAssets.swf","List");
         this._xo6614.x = 45;
         this._xo6614.y = 85;
         this._xd754 = new _om4028(this._xo6614["pager"] as MovieClip);
         this._xd754.txt = "";
         this._kc4744 = new _om4028(this._xo6614["title"] as MovieClip);
         this._kc4744.txt = "missions.list.title";
         this._ii14435 = new _om4028(this._xo6614["subtitle"] as MovieClip);
         this._ii14435.txt = "missions.list.subTitle";
         this._dk14093 = this._xo6614["container"] as Sprite;
         this._dd12381();
         this._ar10345();
         this._dd12381();
         addChild(this._xo6614);
      }
      
      private function _dd12381() : void
      {
         this._qo13557 = new List(230,200,5,20,List.VERTICAL);
         this._qo13557.addEventListener(_ye11838.ITEM_CLICK,this._we9528,false,0,true);
         this._qo13557.itemRenderer = _vo1562;
         this._dk14093.addChild(this._qo13557);
      }
      
      public function _wt2363(param1:Array) : void
      {
         this._items = param1;
         this._vi10893();
         this._hb9757(0);
      }
      
      private function _ar10345() : void
      {
         this._bl14396 = new _qy9375(this._xo6614["prevButton"]);
         this._bl14396.visible = false;
         this._bl14396.addEventListener(MouseEvent.CLICK,this._wn356,false,0,true);
         this._br8675 = new _qy9375(this._xo6614["nextButton"]);
         this._br8675.visible = false;
         this._br8675.addEventListener(MouseEvent.CLICK,this._vl2081,false,0,true);
      }
      
      private function _vi10893() : void
      {
         var _loc3_:uint = 0;
         var _loc1_:Array = this._items;
         var _loc2_:uint = _loc1_.length;
         this._no3509 = new Array();
         while(_loc3_ < _loc2_)
         {
            this._no3509.push(_loc1_.slice(_loc3_,_loc3_ + this._dx10834));
            _loc3_ += this._dx10834;
         }
      }
      
      private function _wn356(param1:MouseEvent) : void
      {
         this._hb9757(this._gs6179 - 1);
      }
      
      private function _vl2081(param1:MouseEvent) : void
      {
         this._hb9757(this._gs6179 + 1);
      }
      
      private function _hb9757(param1:int) : void
      {
         if(param1 < 0 || param1 >= this._no3509.length)
         {
            return;
         }
         this._gs6179 = param1;
         this._ny10482(this._no3509[param1]);
         this._ox4037();
         this._xd754.txt = this._gs6179 + 1 + "/" + this._no3509.length;
      }
      
      private function _ox4037() : void
      {
         this._bl14396.visible = this._gs6179 > 0;
         this._br8675.visible = this._gs6179 < this._no3509.length - 1;
      }
      
      private function _ny10482(param1:Array) : void
      {
         this._qo13557.data = param1;
      }
      
      private function _we9528(param1:_ye11838) : void
      {
         this._jl2176 = param1.data as _mj15721;
         dispatchEvent(new _ye11838(_ye11838._yh7280,false,false,this._jl2176));
      }
      
      public function _cm1855() : _mj15721
      {
         return this._jl2176;
      }
      
      public function destroy() : void
      {
         this._bl14396.removeEventListener(MouseEvent.CLICK,this._wn356);
         this._br8675.removeEventListener(MouseEvent.CLICK,this._vl2081);
         this._qo13557.removeEventListener(_ye11838.ITEM_CLICK,this._we9528);
         this._qo13557.destroy();
      }
   }
}

