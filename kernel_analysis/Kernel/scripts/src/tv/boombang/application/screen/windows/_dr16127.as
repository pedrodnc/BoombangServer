package src.tv.boombang.application.screen.windows
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import flash.utils.*;
   import src.modules.multiplayerGames.dataGame.*;
   import src.tv.boombang.application.screen.*;
   import src.tv.boombang.application.screen.components.*;
   import src.tv.boombang.core.datatypes.screen._tr3910;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.steps.*;
   import src.utils.*;
   
   public class _dr16127 extends _ul3169
   {
      
      private var _ve7204:Sprite;
      
      private var _hl8168:Timer;
      
      private var _hu12055:Timer;
      
      private var _ux2732:Array;
      
      private var _ww6392:_py9597;
      
      private var _ao13057:_eb10022;
      
      private var _fo14453:_eb10022;
      
      private var _kd4053:_eb10022;
      
      private var _ck5194:int;
      
      private var _if13793:Array;
      
      private var _um4178:int;
      
      private var _wa2541:_tr3910;
      
      private var _hy1531:TextField;
      
      private var _iq15900:int;
      
      public function _dr16127(param1:MovieClip, param2:String, param3:int, param4:_tr3910, param5:_tr3910)
      {
         var _loc6_:MovieClip = null;
         this._if13793 = [];
         super(param1,param2,param4);
         this._wa2541 = param5;
         this._ck5194 = param3;
         switch(this._ck5194)
         {
            case _oc1650._uh5110:
               _loc6_ = (_lh7543.get(_vy3822) as _vy3822)._bn15619("ledScreenLibrary.swf","GlobeGold");
               break;
            case _oc1650._ir2135:
               _loc6_ = (_lh7543.get(_vy3822) as _vy3822)._bn15619("ledScreenLibrary.swf","HiddenGold");
               break;
            case _oc1650._ot11105:
               _loc6_ = (_lh7543.get(_vy3822) as _vy3822)._bn15619("ledScreenLibrary.swf","CoconutGold");
               break;
            case _oc1650._ro15425:
               _loc6_ = (_lh7543.get(_vy3822) as _vy3822)._bn15619("ledScreenLibrary.swf","NinjaGold");
         }
         this._ve7204 = new _mr7010(_loc6_,1,_rr13492,false,true);
         this._ux2732 = [];
         this._ts6003();
         this._ww6392 = new _py9597(_xo6614["ledText"],this._ux2732,275,_vq16076 / 2 * (_rr13492 + _ke8748),_li10244 / 2 * (_rr13492 + _ke8748));
         this._hl8168 = new Timer(500);
         this._hl8168.addEventListener(TimerEvent.TIMER,this._tf934,false,0,true);
         this._hl8168.start();
      }
      
      override public function destroy() : void
      {
         if(this._hl8168)
         {
            this._hl8168.stop();
            this._hl8168.removeEventListener(TimerEvent.TIMER,this._tf934);
            this._hl8168.removeEventListener(TimerEvent.TIMER,this._bx12955);
            this._hl8168.removeEventListener(TimerEvent.TIMER,this._vj4785);
            this._hl8168.removeEventListener(TimerEvent.TIMER,this._ry15654);
            this._hl8168.removeEventListener(TimerEvent.TIMER,this._vj4785);
            this._hl8168.removeEventListener(TimerEvent.TIMER,this._oc3712);
            this._hl8168 = null;
         }
         if(this._ao13057)
         {
            this._ao13057.removeEventListener(_eb10022._gv14471,this._ax13511);
         }
         if(this._fo14453)
         {
            this._fo14453.removeEventListener(_eb10022._gv14471,this._mb3809);
         }
         if(this._hu12055)
         {
            this._hu12055.stop();
            this._hu12055.removeEventListener(TimerEvent.TIMER,this._xn14578);
            this._hu12055 = null;
         }
         super.destroy();
      }
      
      private function _ts6003() : void
      {
         var _loc3_:MovieClip = (_lh7543.get(_vy3822) as _vy3822)._bn15619("ledScreenLibrary.swf","Circle");
         var _temp_1:* = _loc3_["circle"];
         _loc3_["circle"].scaleY = 1;
         _temp_1.scaleX = 1;
         this._ux2732.push(new _mr7010(_loc3_,2,2,false,true));
         var _temp_2:* = _loc3_["circle"];
         var _loc4_:int;
         _loc3_["circle"].scaleY = _loc4_ = 3;
         _temp_2.scaleX = 1;
         this._ux2732.push(new _mr7010(_loc3_,2,2,false,true));
         var _temp_3:* = _loc3_["circle"];
         _loc3_["circle"].scaleY = _loc4_ = 5;
         _temp_3.scaleX = 1;
         this._ux2732.push(new _mr7010(_loc3_,2,2,false,true));
         var _temp_4:* = _loc3_["circle"];
         _loc3_["circle"].scaleY = _loc4_ = 7;
         _temp_4.scaleX = 1;
         this._ux2732.push(new _mr7010(_loc3_,2,2,false,true));
      }
      
      private function _tf934(param1:Event) : void
      {
         this._hl8168.stop();
         this._hl8168.removeEventListener(TimerEvent.TIMER,this._tf934);
         this._hl8168 = null;
         _xo6614["ledText"].addChild(this._ve7204);
         this._ve7204.x = _vq16076 / 2 * (_rr13492 + _ke8748);
         this._ve7204.y = _li10244 / 2 * (_rr13492 + _ke8748);
         this._hl8168 = new Timer(3000);
         this._hl8168.addEventListener(TimerEvent.TIMER,this._bx12955,false,0,true);
         this._hl8168.start();
      }
      
      private function _bx12955(param1:TimerEvent) : void
      {
         this._hl8168.stop();
         this._hl8168.removeEventListener(TimerEvent.TIMER,this._bx12955);
         this._hl8168 = null;
         this._ao13057 = new _eb10022(_xo6614["ledText"],this._ve7204,400,6,9 * (_rr13492 + _ke8748),_eb10022.LEFT,this._ve7204.x,this._ve7204.y);
         this._ao13057.addEventListener(_eb10022._gv14471,this._ax13511,false,0,true);
      }
      
      private function _ax13511(param1:Event) : void
      {
         var _loc2_:TextField = null;
         this._ao13057.removeEventListener(_eb10022._gv14471,this._ax13511);
         this._ao13057 = null;
         if(_au841.length > 0)
         {
            if(_id == _ti12422._md15410)
            {
               _loc2_ = _ex11343("games.ledScreen.lastWeek.title",25,TextFormatAlign.CENTER);
            }
            else
            {
               _loc2_ = _ex11343("games.ledScreen.thisWeek.title",25,TextFormatAlign.CENTER);
            }
            _loc2_.multiline = true;
            _loc2_.width = 210;
            _loc2_.wordWrap = true;
            _loc2_.x = 61;
            _loc2_.y = 8;
            _xo6614["ledText"].addChild(_loc2_);
            this._um4178 = 0;
            this._xg14098();
         }
      }
      
      private function _mb3809(param1:Event) : void
      {
         this._fo14453.removeEventListener(_eb10022._gv14471,this._mb3809);
         this._hl8168 = new Timer(3000);
         this._hl8168.addEventListener(TimerEvent.TIMER,this._vj4785,false,0,true);
         this._hl8168.start();
      }
      
      private function _vj4785(param1:TimerEvent) : void
      {
         this._hl8168.stop();
         this._hl8168.removeEventListener(TimerEvent.TIMER,this._vj4785);
         this._hl8168 = null;
         if(this._um4178 < _di15287)
         {
            this._nd12581();
         }
         this._um4178 += 1;
         if(this._um4178 < _di15287)
         {
            this._xg14098();
         }
         if(this._um4178 == _di15287)
         {
            this._hl8168 = new Timer(7000);
            this._hl8168.addEventListener(TimerEvent.TIMER,this._ry15654,false,0,true);
            this._hl8168.start();
         }
      }
      
      private function _ry15654(param1:TimerEvent) : void
      {
         var _loc2_:Sprite = null;
         var _loc3_:TextField = null;
         var _loc4_:Sprite = null;
         var _loc6_:int = 0;
         this._hl8168.stop();
         this._hl8168.removeEventListener(TimerEvent.TIMER,this._ry15654);
         this._hl8168 = null;
         var _loc5_:Sprite = new Sprite();
         while(_loc6_ < 3)
         {
            _loc2_ = new _mr7010(_xm4755[_loc6_],_rr13492,_ty2156,false,true);
            _loc3_ = _ex11343(_loc6_ + 1 + "-" + _gd13300._oh12066[_loc6_].name,11);
            _loc4_ = new Sprite();
            _loc4_.addChild(_loc2_);
            _loc4_.addChild(_loc3_);
            _loc3_.y = 30;
            _loc3_.x = -_loc3_.width / 2;
            _loc4_.cacheAsBitmap = true;
            _loc5_.addChild(_loc4_);
            _loc4_.x = 100 * _loc6_;
            _loc4_.y = 100;
            _loc6_++;
         }
         _loc5_.cacheAsBitmap = true;
         _xo6614["ledText"].addChild(_loc5_);
         _loc5_.y = 10;
         _loc5_.x = 70;
         this._iq15900 = 0;
         this._oc3712(null);
      }
      
      private function _oc3712(param1:TimerEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(!this._hu12055)
         {
            this._hu12055 = new Timer(140000);
            this._hu12055.addEventListener(TimerEvent.TIMER,this._xn14578);
         }
         if(Boolean(this._wa2541) && this._iq15900 < this._wa2541._oh12066.length)
         {
            _loc2_ = Math.floor(Math.random() * 2) + 1;
            _loc3_ = (_lh7543.get(_dw1395) as _dw1395)._ad13455("games.ledScreen.winnerInformation" + _loc2_,this._wa2541._oh12066[this._iq15900].name);
            if(!this._hy1531)
            {
               this._hy1531 = _ex11343(_loc3_,20,TextFormatAlign.CENTER);
               this._hy1531.multiline = true;
               this._hy1531.width = 290;
               this._hy1531.wordWrap = true;
               this._hy1531.x = 22;
               this._hy1531.y = 169;
               _xo6614["ledText"].addChild(this._hy1531);
               this._hl8168 = new Timer(7000);
               this._hl8168.addEventListener(TimerEvent.TIMER,this._oc3712,false,0,true);
               this._iq15900 += 1;
            }
            else
            {
               _yq8362._bj8346(this._hy1531,_loc3_);
               this._iq15900 += 1;
            }
            if(this._iq15900 < this._wa2541._oh12066.length)
            {
               this._hl8168.start();
            }
            else
            {
               this._iq15900 = 0;
               this._hl8168.start();
            }
         }
      }
      
      private function _xn14578(param1:TimerEvent) : void
      {
         this._hu12055.stop();
         this._hu12055.removeEventListener(TimerEvent.TIMER,this._xn14578);
         this._hu12055 = null;
         _nk11935(_pm4313._yo4206);
      }
      
      private function _xg14098() : void
      {
         var _loc1_:Sprite = new _mr7010(_au841[this._um4178],_rr13492,_ty2156,false,true);
         var _loc2_:TextField = _ex11343(_gd13300._oh12066[this._um4178].name,25);
         var _loc3_:TextField = _ex11343(this._um4178 + 1 + "",20);
         var _loc4_:Sprite = new Sprite();
         _loc4_.addChild(_loc1_);
         _loc4_.addChild(_loc2_);
         _loc4_.addChild(_loc3_);
         _loc2_.y = 79;
         _loc2_.x = -_loc2_.width / 2;
         _loc3_.x = -_loc3_.width / 2;
         _loc3_.y = 60;
         _loc4_.cacheAsBitmap = true;
         this._if13793.push(_loc4_);
         this._fo14453 = new _eb10022(_xo6614["ledText"],this._if13793[this._um4178],400,13,7 * (_rr13492 + _ke8748),_eb10022.LEFT,(_vq16076 / 2 + 90) * (_rr13492 + _ke8748),(_li10244 / 2 - 1) * (_rr13492 + _ke8748),false);
         this._fo14453.addEventListener(_eb10022._gv14471,this._mb3809,false,0);
      }
      
      private function _nd12581() : void
      {
         this._kd4053 = new _eb10022(_xo6614["ledText"],this._if13793[this._um4178],400,12,7 * (_rr13492 + _ke8748),_eb10022.LEFT,this._if13793[this._um4178].x,this._if13793[this._um4178].y,true);
      }
   }
}

