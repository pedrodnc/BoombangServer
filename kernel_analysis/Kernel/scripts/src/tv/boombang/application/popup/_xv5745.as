package src.tv.boombang.application.popup
{
   import flash.display.*;
   import flash.events.*;
   import src.allData.*;
   import src.config.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.social.datatypes.*;
   import src.tv.boombang.commons.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.datatypes.notifications._xs13329;
   import src.tv.boombang.core.errors.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.popup._aq4817;
   
   public class _xv5745 extends _aq4817
   {
      
      private static const _if5805:String = "delayed_gifts_popup.swf";
      
      private var _ig5144:_qy9375;
      
      private var _data:_xs13329;
      
      private var _lf15550:_om4028;
      
      private var _do8658:_om4028;
      
      private var _pd9899:_om4028;
      
      private var _ug7443:_wb14440;
      
      public function _xv5745(param1:_xs13329)
      {
         super();
         this._data = param1;
         this._ia16156(this._data);
         (_lh7543.get(_vy3822) as _vy3822)._vv13029([_if5805],this._lu7260);
      }
      
      override public function destroy() : void
      {
         if(this._ig5144 != null)
         {
            this._ig5144.removeEventListener(MouseEvent.CLICK,this._qn6887);
            this._ig5144 = null;
         }
         super.destroy();
      }
      
      private function _lu7260() : void
      {
         _xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619(_if5805,"Popup");
         if(_xo6614.getChildByName("closeBtn"))
         {
            this._ig5144 = new _qy9375(_xo6614.getChildByName("closeBtn") as MovieClip);
            this._ig5144.addEventListener(MouseEvent.CLICK,this._qn6887,false,0,true);
         }
         this._lf15550 = new _om4028(_xo6614["titleField"],true);
         this._lf15550.txt = "notification.popup.delayedGifts.title";
         this._do8658 = new _om4028(_xo6614["subtitleField"]);
         this._do8658.txt = "notification.popup.delayedGifts.subtitle";
         this._pd9899 = new _om4028(_xo6614["explanationField"]);
         this._pd9899.txt = "notification.popup.delayedGifts.help";
         this._dn3095();
         _xo6614["sharersContainer"].addChild(this._ug7443);
         _er5800();
      }
      
      protected function _dn3095() : void
      {
         var _loc1_:_sg3635 = null;
         if(this._data._rl4311.length == 1)
         {
            _loc1_ = new Image(new _vh5894(_cc7688._su9470 + this._data._rl4311[0]._kp2503));
            _loc1_.x -= 0.5 * 463;
            _loc1_.y -= 0.5 * 180;
            _xo6614["iconContainer"].addChild(_loc1_);
            return;
         }
         throw new _bc6516("DelayedGiftPopUp supports only one icon. " + this._data._rl4311.length + " icons passed.");
      }
      
      protected function _qn6887(param1:MouseEvent) : void
      {
         _ks10725();
      }
      
      private function _ia16156(param1:_xs13329) : void
      {
         var _loc2_:String = null;
         if(this._data.level == 1)
         {
            _loc2_ = (_lh7543.get(_dw1395) as _dw1395)._ad13455("notification.social.delayedGift.title.1",_hv12530.getInstance().name);
         }
         else
         {
            _loc2_ = (_lh7543.get(_dw1395) as _dw1395)._ad13455("notification.social.delayedGift.title.n",_hv12530.getInstance().name,param1.level);
         }
         var _loc3_:_vw5755 = new _vw5755();
         _loc3_.title = _loc2_;
         _loc3_._ac11275 = (_lh7543.get(_dw1395) as _dw1395)._ad13455("notification.social.delayedGift.description." + this._data.level,_hv12530.getInstance().name);
         _loc3_._mi1279 = "http://static.boombang.tv/flash_esp/" + _fg1060._dy2407._qb15298(param1.level.toString());
         _loc3_._cx7785 = param1._kv12836;
         var _loc4_:_vw5755 = new _vw5755();
         _loc4_.message = _loc2_;
         _loc4_._cx7785 = param1._qa11276;
         var _loc5_:_vw5755 = new _vw5755();
         var _loc6_:_vw5755 = new _vw5755();
         _loc6_._nv759 = param1.id;
         this._ug7443 = new _wb14440(_loc3_,_loc4_,_loc5_,_loc6_,true);
      }
   }
}

