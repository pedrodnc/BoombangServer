package src.tv.boombang.application.rankings.gui.components
{
   import flash.display.*;
   import src.person.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.datatypes.rankings._vt10806;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class _yb10999 extends MovieClip implements _jk15536, _pr14847
   {
      
      private var _xo6614:MovieClip;
      
      private var _nq4110:MovieClip;
      
      private var _ea7603:MovieClip;
      
      private var _pt7343:MovieClip;
      
      private var _vg12927:MovieClip;
      
      private var _cg10584:_om4028;
      
      private var _ng1021:_om4028;
      
      private var _position:_om4028;
      
      private var _vr11636:MovieClip;
      
      private var _data:_vt10806;
      
      private var _uo5576:int;
      
      public function _yb10999(param1:_vt10806, param2:int)
      {
         super();
         var _loc3_:_um8624 = new _um8624();
         this._data = param1;
         this._xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","RankingItem") as MovieClip;
         this._nq4110 = this._xo6614["marker"];
         this._nq4110.visible = false;
         if(this._data._lo1980 > 0)
         {
            this._ea7603 = this._xo6614["levelIcon"];
            (_lh7543.get(_vy3822) as _vy3822)._vv13029(["game_" + this._data._el1247 + "_" + this._data._lo1980 + ".png"],this._ff13430);
         }
         this._pt7343 = this._xo6614["character"];
         _loc3_._jn11596 = this._data._ii2352;
         _loc3_.colors = this._data._nw695;
         this._vg12927 = _xr3315._ku11706(_loc3_,"cara_mediana");
         this._pt7343.addChild(this._vg12927);
         this._cg10584 = new _om4028(this._xo6614["points"]);
         this._cg10584.txt = this._data.points.toString();
         this._ng1021 = new _om4028(this._xo6614["nick"]);
         this._ng1021.txt = param1._hq2467;
         this._position = new _om4028(this._xo6614["position"]);
         this._position.txt = param1._ik15902.toString();
         this._position._xq11642();
         this._vr11636 = this._xo6614["back"];
         this._position.color = 0;
         this._cg10584.color = 0;
         this._ng1021.color = 0;
         if(param1._ik15902 == 1)
         {
            _xv14798._ts14032(this._vr11636,16776960);
            _xv14798._ts14032(this._nq4110,0);
         }
         else if(param1._ik15902 == 2)
         {
            _xv14798._ts14032(this._vr11636,16750848);
         }
         else if(param1._ik15902 == 3)
         {
            _xv14798._ts14032(this._vr11636,16737792);
         }
         else
         {
            this._position.color = 16777215;
            this._cg10584.color = 16777215;
            this._ng1021.color = 16777215;
         }
         this._wg3624 = param2;
         this.addChild(this._xo6614);
      }
      
      public function set _ri8522(param1:Boolean) : void
      {
         this._nq4110.visible = param1;
      }
      
      public function get _ik15902() : int
      {
         return this._data._ik15902;
      }
      
      override public function get height() : Number
      {
         if(this._vr11636)
         {
            return this._vr11636.height;
         }
         return super.height;
      }
      
      private function _ff13430() : void
      {
         var _loc1_:Bitmap = null;
         if(this._ea7603)
         {
            _loc1_ = (_lh7543.get(_vy3822) as _vy3822)._pf13231("game_" + this._data._el1247 + "_" + this._data._lo1980 + ".png") as Bitmap;
            _loc1_.scaleX = 0.75;
            _loc1_.scaleY = 0.75;
            _loc1_.smoothing = true;
            this._ea7603.addChild(_loc1_);
         }
      }
      
      public function destroy() : void
      {
         this._cg10584.destroy();
         this._ng1021.destroy();
         this._position.destroy();
         this._cg10584 = null;
         this._ng1021 = null;
         this._position = null;
         this._nq4110 = null;
         this._ea7603 = null;
         this._vg12927 = null;
         this._pt7343 = null;
         this._vr11636 = null;
      }
      
      public function get _wg3624() : int
      {
         return this._uo5576;
      }
      
      public function set _wg3624(param1:int) : void
      {
         this._uo5576 = param1;
      }
   }
}

