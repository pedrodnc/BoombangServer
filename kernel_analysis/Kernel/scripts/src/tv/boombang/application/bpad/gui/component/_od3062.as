package src.tv.boombang.application.bpad.gui.component
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.core.datatypes.levelup._tq8281;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _od3062 extends MovieClip
   {
      
      private var _xo6614:MovieClip;
      
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
      
      protected var _vi7241:_wq11080;
      
      protected var _ru15011:String;
      
      public function _od3062(param1:_tq8281)
      {
         super();
         this._data = param1;
         this._ru15011 = "levelup.swf";
         this._vi7241 = new _wq11080();
         addChild(this._vi7241);
         (_lh7543.get(_vy3822) as _vy3822)._vv13029([this._ru15011],this._lu7260);
      }
      
      protected function _lu7260() : void
      {
         this._xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619(this._ru15011,"NotificationMessage");
         this._am212 = this._xo6614.getChildByName("backContent") as MovieClip;
         this._am212.addChild((_lh7543.get(_vy3822) as _vy3822)._bn15619(this._ru15011,this._data._pq14577));
         this._wo12632 = this._xo6614.getChildByName("characterContent") as MovieClip;
         this._wo12632.addChild((_lh7543.get(_vy3822) as _vy3822)._bn15619(this._ru15011,this._data._ad12008));
         this._kc4744 = new _om4028(this._xo6614.getChildByName("title") as MovieClip);
         this._kc4744.txt = (_lh7543.get(_dw1395) as _dw1395)._ad13455("notification.message.levelUp.reachLevel",this._data.level.toString());
         this._ye750 = new _om4028(this._xo6614.getChildByName("description") as MovieClip);
         this._ye750.txt = "notification.message.levelUp.won" + this._data._wi2744._me8885(this._data.level);
         this._mu4299 = this._xo6614.getChildByName("yellowWindow") as MovieClip;
         this._li7391(2);
         this._mu4299.visible = false;
         this._db16094.scaleX = 0.44;
         this._db16094.scaleY = 0.44;
         this._db16094.x = this._mu4299.x;
         this._db16094.y = this._mu4299.y;
         this._xo6614.addChild(this._db16094);
         this._vi7241.destroy();
         removeChild(this._vi7241);
         addChild(this._xo6614);
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
      
      public function destroy() : void
      {
      }
   }
}

