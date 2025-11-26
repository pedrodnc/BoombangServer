package src.tv.boombang.application.bpad.gui.component
{
   import flash.display.*;
   import src.multiuser.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.datatypes.notifications.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _wa6793 extends MovieClip implements _jk15536
   {
      
      private var _data:Array;
      
      private var _kc4744:_xg1747;
      
      private var _db16094:MovieClip;
      
      private var _mu4299:MovieClip;
      
      private var _xo6614:MovieClip;
      
      public function _wa6793(param1:Array)
      {
         super();
         this._data = param1;
         (_lh7543.get(_vy3822) as _vy3822)._vv13029(["messages.swf"],this._lu7260);
      }
      
      private function _lu7260() : void
      {
         this._xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("messages.swf","DelayedGiftMessage");
         this._mu4299 = this._xo6614["yellowWindow"];
         this._kc4744 = new _xg1747(this._xo6614["title"]);
         this._kc4744.txt = "notification.message.giftOpened";
         this._li7391(0.35);
         addChild(this._xo6614);
      }
      
      protected function _li7391(param1:Number = 1) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:_no13431 = null;
         var _loc5_:MovieClip = null;
         var _loc6_:_eo12332 = null;
         this._db16094 = new MovieClip();
         var _loc7_:int = int(this._data[7]);
         if(_loc7_ > 0)
         {
            _loc2_ = 0;
            while(_loc2_ < _loc7_)
            {
               _loc3_ = _jl5367._go4983(this._data[8 + _loc2_]);
               _loc4_ = new _no13431();
               _loc4_.id = _loc3_[0];
               if(_loc3_[1])
               {
                  _loc4_.txt = _loc3_[1];
               }
               _loc4_._kp2503 = _fg1060._dy2407._qb15298(_loc4_.id.toString());
               _loc5_ = (_lh7543.get(_vy3822) as _vy3822)._bn15619("messages.swf","IconHolder");
               _loc6_ = new _eo12332(_loc5_,_loc4_,param1);
               _loc6_.x = _loc6_.width * _loc2_ + 10 * _loc2_;
               this._db16094.addChild(_loc6_);
               _loc2_++;
            }
            this._xo6614.addChild(this._db16094);
            this._db16094.x = this._mu4299.x + (this._mu4299.width / 2 - this._db16094.width / 2);
            this._db16094.y = this._mu4299.y + (this._mu4299.height / 2 - this._db16094.height / 2) - 5;
         }
         else
         {
            this._mu4299.visible = false;
         }
      }
      
      public function destroy() : void
      {
         if(this._kc4744)
         {
            this._kc4744.destroy();
         }
      }
   }
}

