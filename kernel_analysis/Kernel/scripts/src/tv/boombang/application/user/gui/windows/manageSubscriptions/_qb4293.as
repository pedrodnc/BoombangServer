package src.tv.boombang.application.user.gui.windows.manageSubscriptions
{
   import flash.display.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class _qb4293 extends _lx1779 implements _jk15536
   {
      
      private static const _oe7807:String = "first_window_step";
      
      private static const _bg5979:String = "sending_data_step";
      
      private static const _vt13807:String = "ok_step";
      
      private static const _tw7209:String = "error_step";
      
      protected var _kn1341:String;
      
      public function _qb4293()
      {
         super();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         _kr10933._mw12849(_te13472._js2213,this._sk542);
      }
      
      override protected function init() : void
      {
         var _loc1_:_ne9550 = new _ne9550(_cw8295("ManageSubscriptionsWindow") as MovieClip,_oe7807,_fg1060.data._ma12295);
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         _wj9062._lt3848(_loc1_);
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         var _loc4_:_rj10079 = null;
         if(param2 == _pm4313._by10560)
         {
            _pr2018.getInstance().remove(this);
         }
         switch(param1)
         {
            case _oe7807:
               if(param2 == _pm4313._dh1979)
               {
                  _loc4_ = new _rj10079(_cw8295("SendingDataCard") as MovieClip,_bg5979);
                  _loc4_.title = "windows.manageSubscriptions.title";
                  _loc4_.text = "windows.manageSubscriptions.sending";
                  _loc4_._xe10297 = _ja3764.TOP_RIGHT;
                  _wj9062._lt3848(_loc4_);
                  _kr10933._xo2736(_te13472._js2213,this._sk542);
                  _vv145._vp9262(param3["newsletterEnabled"]);
               }
               return;
            default:
               return;
         }
      }
      
      protected function _sk542(param1:_bc9270) : void
      {
         var _loc2_:int = 0;
         var _loc3_:_rj10079 = null;
         var _loc4_:_rj10079 = null;
         var _loc5_:int = int(param1._qp16092(1));
         if(_loc5_ == _te13472._ya14848)
         {
            _loc2_ = int(param1.items[0]);
            if(_loc2_ == _kr10933._ad11893)
            {
               _loc3_ = new _rj10079(_cw8295("AcceptedDataCard") as MovieClip,_vt13807);
               _loc3_.title = "windows.manageSubscriptions.title";
               _loc3_.text = "windows.manageSubscriptions.sentSuccessfully";
               _loc3_._xe10297 = _ja3764.TOP_RIGHT;
               _fg1060.data._ma12295 = param1.items[1] == "1" ? true : false;
               _wj9062._lt3848(_loc3_);
            }
            else
            {
               _loc4_ = new _rj10079(_cw8295("ErrorDataCard") as MovieClip,_tw7209);
               _loc4_.title = "windows.manageSubscriptions.title";
               _loc4_.text = "serverRespondedWithError";
               _loc4_._xe10297 = _ja3764.TOP_RIGHT;
               _wj9062._lt3848(_loc4_);
            }
         }
      }
   }
}

