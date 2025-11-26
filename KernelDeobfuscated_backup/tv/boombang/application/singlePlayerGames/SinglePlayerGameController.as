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
   
   public class _ij925 extends MovieClip
   {
      
      public static const _ea6534:String = "CloseTheGame";
      
      private var _tn2912:MovieClip;
      
      private var _cd3913:_db12795;
      
      private var _pn8869:_rn8936;
      
      private var _bq13675:_rn8936;
      
      private var _sh2946:_xo11546;
      
      private var _qv844:_id1792;
      
      private var _vk974:MovieClip;
      
      private var _ug7443:_wb14440;
      
      private var _ck5194:int;
      
      private var _er5513:MovieClip;
      
      public function _ij925(param1:int = 1)
      {
         super();
         (_lh7543.get(_wl11587) as _wl11587)._hv9029("/play/singlePlayer_" + param1);
         this._ck5194 = param1;
         (_lh7543.get(_vy3822) as _vy3822)._vv13029(["brujula.swf","background_" + this._ck5194 + ".jpg"],this._hj11501);
         var _loc2_:String = (_lh7543.get(_vy3822) as _vy3822)._mi12184("singleGame_" + this._ck5194 + ".swf");
         this._sh2946 = new _xo11546(_loc2_,"singleGame" + this._ck5194 + ".swf");
         this._sh2946._mv15948(this._qd15947);
         this._sh2946.load();
         this._qv844 = _id1792._np546;
         this._qv844._fo382(_id1792._yk9555);
         this._bq13675 = new _rn8936();
         this._bq13675._np5723 = new Point(0,1);
         this._bq13675._wg2951 = new Point(-210,-45);
         this._qv844._so6911(this._bq13675);
         this._qv844._db5584();
         _xw1367.getInstance()._uc3178(this._bq13675,_xw1367._wa4051);
         this._vk974 = _xr3315._ku11706(_hv12530.getInstance(),"down_idle");
      }
      
      public function destroy() : void
      {
         _xw1367.getInstance()._na10792(this._tn2912,_xw1367._co9468);
         _xw1367.getInstance()._na10792(this._pn8869,_xw1367._wa4051);
         _xw1367.getInstance()._na10792(this._bq13675,_xw1367._wa4051);
         _xw1367.getInstance()._na10792(this._er5513,_xw1367._vn1830);
         this._cd3913.destroy();
         var _loc1_:* = this._tn2912;
         _loc1_["destroy"]();
         this._qv844._hu12389();
         if(this._ug7443)
         {
            _xw1367.getInstance()._na10792(this._ug7443,_xw1367._co9468);
         }
      }
      
      private function _qd15947(param1:Event) : void
      {
         this._tn2912 = this._sh2946._dr16162() as MovieClip;
         _xw1367.getInstance()._uc3178(this._tn2912,_xw1367._co9468,true);
         this._tn2912.y = 10;
         this._tn2912.start(this._vk974,_cc7688._yg212);
         this._tn2912.addEventListener("onGameOver",this._df7995);
         this._tn2912.addEventListener("onGameStart",this._hp13680);
      }
      
      private function _hp13680(param1:Event) : void
      {
         if(this._ug7443)
         {
            _xw1367.getInstance()._na10792(this._ug7443,_xw1367._co9468);
         }
      }
      
      private function _df7995(param1:Event) : void
      {
         var _loc2_:Object = this._tn2912.getData();
         var _loc3_:String = (_lh7543.get(_dw1395) as _dw1395)._ad13455("games.singlePlayer.share.game_" + this._ck5194 + ".twitter",_loc2_);
         var _loc4_:_vw5755 = new _vw5755();
         _loc4_.message = _loc3_;
         var _loc5_:_vw5755 = new _vw5755();
         _loc5_.message = _loc3_;
         var _loc6_:_vw5755 = new _vw5755();
         _loc6_.message = _loc3_;
         this._ug7443 = new _wb14440(_loc4_,_loc5_,null,_loc6_,true);
         _xw1367.getInstance()._uc3178(this._ug7443,_xw1367._co9468,true);
         this._ug7443.x = _tq2768._ps6769().width / 2 - this._ug7443.width / 2;
         this._ug7443.y = 420;
      }
      
      private function _hj11501() : void
      {
         var _loc1_:MovieClip = (_lh7543.get(_vy3822) as _vy3822)._if2642("brujula.swf");
         var _loc2_:Bitmap = (_lh7543.get(_vy3822) as _vy3822)._pf13231("background_" + this._ck5194 + ".jpg");
         this._er5513 = new MovieClip();
         this._er5513.addChild(_loc2_);
         this._cd3913 = new _db12795(_loc1_,this._oy9976);
         this._pn8869 = new _rn8936();
         this._pn8869._np5723 = new Point(0,1);
         this._pn8869._wg2951 = new Point(0,-100);
         _xw1367.getInstance()._uc3178(this._pn8869,_xw1367._wa4051);
         _xw1367.getInstance()._uc3178(this._er5513,_xw1367._vn1830);
         this._pn8869.addChild(this._cd3913.movieClip);
      }
      
      public function _oy9976() : void
      {
         dispatchEvent(new Event(_ij925._ea6534));
      }
   }
}

