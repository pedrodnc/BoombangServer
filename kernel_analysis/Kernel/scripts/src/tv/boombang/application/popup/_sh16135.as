package src.tv.boombang.application.popup
{
   import flash.display.*;
   import flash.events.*;
   import src.config.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.social.datatypes.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.datatypes.levelup._tq8281;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.popup._aq4817;
   
   public class _sh16135 extends _aq4817
   {
      
      private var _am212:MovieClip;
      
      private var _kc4744:_om4028;
      
      private var _jf7011:_om4028;
      
      private var _ye750:_om4028;
      
      private var _ix13272:_qy9375;
      
      private var _rr3545:MovieClip;
      
      private var _ft10407:_wb14440;
      
      protected var _data:Object;
      
      protected var _db16094:MovieClip;
      
      protected var _wo12632:MovieClip;
      
      protected var _mu4299:MovieClip;
      
      protected var _ru15011:String;
      
      public function _sh16135(param1:_tq8281)
      {
         super();
         this._data = param1;
         this._ru15011 = "levelup.swf";
         (_lh7543.get(_vy3822) as _vy3822)._vv13029([this._ru15011],this._lu7260);
      }
      
      protected function _lu7260() : void
      {
         _xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619(this._ru15011,"NotificationPopUp");
         if(_xo6614.getChildByName("closeBtn"))
         {
            this._ix13272 = new _qy9375(_xo6614.getChildByName("closeBtn") as MovieClip);
            this._ix13272.addEventListener(MouseEvent.CLICK,this._qn6887,false,0,true);
         }
         this._am212 = _xo6614.getChildByName("backContent") as MovieClip;
         this._am212.addChild((_lh7543.get(_vy3822) as _vy3822)._bn15619(this._ru15011,this._data._pq14577));
         this._wo12632 = _xo6614.getChildByName("characterContent") as MovieClip;
         this._wo12632.addChild((_lh7543.get(_vy3822) as _vy3822)._bn15619(this._ru15011,this._data._ad12008));
         this._kc4744 = new _om4028(_xo6614.getChildByName("title") as MovieClip,true);
         this._kc4744.txt = "notification.popup.levelUp.congratulation";
         this._jf7011 = new _om4028(_xo6614.getChildByName("subtitle") as MovieClip);
         this._jf7011.txt = (_lh7543.get(_dw1395) as _dw1395)._ad13455("notification.popup.levelUp.reachLevel",this._data.level.toString());
         this._ye750 = new _om4028(_xo6614.getChildByName("description") as MovieClip);
         this._ye750.txt = "notification.popup.levelUp.won" + this._data._wi2744._me8885(this._data.level);
         this._mu4299 = _xo6614.getChildByName("yellowWindow") as MovieClip;
         this._li7391();
         _xo6614.addChild(this._db16094);
         this._yx4510();
         _er5800();
      }
      
      private function _yx4510() : void
      {
         var _loc1_:_vw5755 = new _vw5755();
         _loc1_._cx7785 = this._data._ts4982;
         _loc1_.title = (_lh7543.get(_dw1395) as _dw1395)._ad13455("notification.social.levelUp.reachLevel." + this._data._sk8092,this._data.level.toString());
         _loc1_._ac11275 = (_lh7543.get(_dw1395) as _dw1395)._ad13455("notification.social.levelUp.description." + this._data._sk8092,this._data.level.toString());
         _loc1_._mi1279 = _fg1060._dy2407._rv7011 + _cc7688._yg212 + "/" + this._data._wi2744._dm14965(this._data.level);
         var _loc2_:_vw5755 = new _vw5755();
         _loc2_._cx7785 = this._data._ti5050;
         _loc2_.message = _fg1060._mn8930._ad13455("notification.social.levelUp.reachLevel." + this._data._sk8092,this._data.level.toString());
         var _loc3_:_vw5755 = new _vw5755();
         _loc3_._cx7785 = this._data._ri12887;
         var _loc4_:_vw5755 = new _vw5755();
         _loc4_._nv759 = this._data.id;
         this._rr3545 = _xo6614.getChildByName("socialMenuContent") as MovieClip;
         this._ft10407 = new _wb14440(_loc1_,_loc2_,_loc3_,_loc4_);
         this._rr3545.addChild(this._ft10407);
      }
      
      private function _qn6887(param1:MouseEvent) : void
      {
         _ks10725();
      }
      
      protected function _li7391(param1:Number = 1) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc4_:_eo12332 = null;
         this._db16094 = new MovieClip();
         if(this._data._rl4311.length > 0)
         {
            _loc2_ = 0;
            while(_loc2_ < this._data._rl4311.length)
            {
               _loc3_ = (_lh7543.get(_vy3822) as _vy3822)._bn15619(this._ru15011,"IconHolder");
               _loc4_ = new _eo12332(_loc3_,this._data._rl4311[_loc2_],param1);
               _loc4_.x = _loc4_.width * _loc2_ + 10 * _loc2_;
               this._db16094.addChild(_loc4_);
               _loc2_++;
            }
            this._db16094.x = this._mu4299.x + (this._mu4299.width / 2 - this._db16094.width / 2);
            this._db16094.y = this._mu4299.y + (this._mu4299.height / 2 - this._db16094.height / 2);
         }
         else
         {
            this._mu4299.visible = false;
         }
      }
   }
}

