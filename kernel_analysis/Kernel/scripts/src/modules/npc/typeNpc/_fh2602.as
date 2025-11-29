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
   
   public class _fh2602 extends MovieClip
   {
      
      public static const _ns4729:String = "playSinglePlayerGame";
      
      private static const _tp8620:int = 120000;
      
      private var _data:_mk4174;
      
      private var _ue14215:_vo16097;
      
      private var _pi7655:_fg3665;
      
      private var _xo6614:MovieClip;
      
      private var _bd7771:MovieClip;
      
      private var _vd216:MovieClip;
      
      private var _bf9057:MovieClip;
      
      private var _ii6403:_wq11080;
      
      private var _jl6572:_fy5262;
      
      public var _jr11615:*;
      
      private var _ll15458:_uh15093;
      
      private var _yh15781:Array;
      
      private var _nm10885:Boolean = false;
      
      private var _wv3308:int;
      
      public function _fh2602(param1:_mk4174, param2:_vo16097)
      {
         super();
         this._data = param1;
         this._ue14215 = param2;
         this._ii6403 = new _wq11080(0,0,false);
         this._ii6403.y = -50;
         var _loc3_:Point = _il6324.getPlotXY(new Point(this._data.x,this._data.y));
         this.x = _loc3_.x;
         this.y = _loc3_.y;
         this.addChild(this._ii6403);
         _xw1367.getInstance()._uc3178(this,_xw1367._jf1741,true);
         (_lh7543.get(_vy3822) as _vy3822)._vv13029(["npc" + param1._mc12100 + ".swf"],this._ma5758);
      }
      
      public static function _ms8941(param1:_mk4174, param2:_vo16097) : _fh2602
      {
         return new _fh2602(param1,param2);
      }
      
      private function _ma5758() : void
      {
         if(this._ii6403)
         {
            if(this.contains(this._ii6403))
            {
               removeChild(this._ii6403);
            }
            this._ii6403 = null;
         }
         this._xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("npc" + this._data._mc12100 + ".swf","mcAvatarNpc");
         this._op11695();
         this._bd7771 = this._xo6614["mcAtencion"];
         this._vd216 = this._xo6614["mcHitArea"];
         this._bf9057 = this._xo6614["mcNPC"];
         this._xo6614.scaleX = this._xo6614.scaleY = _il6324._as10446();
         addChild(this._xo6614);
         if(this._ue14215._yt6918 != null)
         {
            this._ue14215._yt6918(this._data._iq7144,this._data._iq7144 == _hc8062._fi15052 ? this._data._jg8660 : this._data._ud6796,this._data._ud6796);
         }
         if(this._data._iq7144 != _hc8062._nd14059)
         {
            this.addListeners();
         }
         else if(this._bf9057.mcO)
         {
            var _loc1_:_ww13428 = new _ww13428();
            null._pv818 = true;
            null.time = 0;
            this.move(null);
         }
      }
      
      private function _op11695() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:int = 0;
         this._yh15781 = new Array();
         while(_loc3_ < 11)
         {
            _loc1_ = "npc." + this._data._ud6796 + ".chat." + _loc3_;
            _loc2_ = (_lh7543.get(_dw1395) as _dw1395)._ad13455(_loc1_);
            if(_loc2_ != _loc1_)
            {
               this._yh15781.push(_loc2_);
            }
            _loc3_++;
         }
         if(this._yh15781.length > 0)
         {
            this._wv3308 = getTimer();
            this._nm10885 = true;
         }
      }
      
      private function _gm2975() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         var _loc3_:int = int(getTimer());
         if(_loc3_ > this._wv3308 + _tp8620)
         {
            this._wv3308 = getTimer();
            _loc1_ = Math.floor(Math.random() * this._yh15781.length);
            _loc2_ = this._yh15781[_loc1_];
            if(this._ue14215._un14201 != null)
            {
               this._ue14215._un14201(this.x,this.y,_loc2_,this._data.name,29);
            }
         }
      }
      
      public function loop() : void
      {
         if(this._pi7655)
         {
            this._pi7655.loop();
         }
         if(this._nm10885)
         {
            this._gm2975();
         }
      }
      
      public function move(param1:_ww13428) : void
      {
         if(this._xo6614)
         {
            this._pi7655 = null;
            this._pi7655 = new _fg3665(this,param1);
         }
      }
      
      public function _wr14763(param1:int, param2:int, param3:int) : void
      {
         if(this._pi7655)
         {
            var _loc4_:Point = _il6324.getPlotXY(new Point(param1,param2));
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
            this._vd216.addEventListener(MouseEvent.CLICK,this._st14759,false,0,true);
            this._vd216.addEventListener(MouseEvent.ROLL_OVER,this._rt5195,false,0,true);
            this._vd216.addEventListener(MouseEvent.ROLL_OUT,this._qu5290,false,0,true);
         }
         if(this._bf9057)
         {
            this._bf9057.mouseEnabled = false;
            this._bf9057.buttonMode = false;
         }
      }
      
      private function _st14759(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         param1.stopPropagation();
         param1.preventDefault();
         if(this._data._iq7144 == _hc8062._ej5839)
         {
            if(!this._jl6572)
            {
               this._jl6572 = new _fy5262(this._data._bv13835);
               this._jl6572.addEventListener("onCloseWindow",this._jp1982,false,0,true);
               _pr2018.getInstance().add(this._jl6572,this.x - this.width / 3,this.y - this.height / 2);
            }
         }
         else if(this._data._iq7144 == _hc8062._gc10840)
         {
            this._li16010();
         }
         else if(this._data._iq7144 == _hc8062._oh4747)
         {
            this._lh4999();
         }
         else if(this._ue14215._bf3838 != null)
         {
            this._ue14215._bf3838();
         }
      }
      
      private function _rt5195(param1:MouseEvent) : void
      {
         if(this._bd7771)
         {
            this._bd7771["mcAtencion"].gotoAndPlay(7);
            this._bd7771.filters = [new GlowFilter(16777215,1,10,10,2,1,false,false)];
         }
      }
      
      private function _qu5290(param1:MouseEvent) : void
      {
         if(this._bd7771)
         {
            this._bd7771.filters = null;
         }
      }
      
      private function _lh4999() : void
      {
         if(this._ll15458)
         {
            this._ll15458.destroy();
            this._ll15458 = null;
         }
         this._ll15458 = new _uh15093(1);
         this._ll15458.addEventListener(_uh15093._yo14798,this._eh7177);
         _pr2018.getInstance().add(this._ll15458,260,this.y - 260);
      }
      
      private function _eh7177(param1:Event) : void
      {
         this._ll15458.removeEventListener(_uh15093._yo14798,this._eh7177);
         dispatchEvent(new Event(_ns4729));
      }
      
      private function _li16010() : void
      {
         _pr2018.getInstance()._pk9279(new _bw347(this._data._ud6796),550,20);
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
            this._vd216.removeEventListener(MouseEvent.CLICK,this._st14759);
            this._vd216.removeEventListener(MouseEvent.ROLL_OVER,this._rt5195);
            this._vd216.removeEventListener(MouseEvent.ROLL_OUT,this._qu5290);
         }
         if(this._jl6572)
         {
            _pr2018.getInstance().remove(this._jl6572);
            this._jl6572 = null;
         }
         if(this._ll15458)
         {
            this._ll15458.removeEventListener(_uh15093._yo14798,this._eh7177);
            _pr2018.getInstance().remove(this._ll15458);
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
         _xw1367.getInstance()._na10792(this,_xw1367._jf1741);
      }
   }
}

