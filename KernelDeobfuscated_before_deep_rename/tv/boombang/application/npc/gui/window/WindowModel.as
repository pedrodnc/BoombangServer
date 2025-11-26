package src.tv.boombang.application.npc.gui.window
{
   import flash.display.*;
   import flash.events.*;
   import src.allData.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.events.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class WindowModel extends UIWindow
   {
      
      public static const _al6278:String = "sendingKeyStep";
      
      public static const _of6230:String = "checkingKeyStep";
      
      public static const _wu2220:String = "errorKeyStep";
      
      public static const _jw6431:String = "okKeyStep";
      
      private var _oy752:int;
      
      public function WindowModel(param1:int)
      {
         this._oy752 = param1;
         super();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         PacketBuilder._mw12849(MessageTypeConstants._sm12637,this._sk542);
      }
      
      override protected function init() : void
      {
         var _loc1_:WindowsView = null;
         var _loc2_:EventsModel = UserSession.getInstance()._ef4675(this._oy752);
         if(_loc2_)
         {
            if(_loc2_.status == EventsModel._bh8866)
            {
               this._qa12882(0);
            }
            else
            {
               this._qa12882(1);
            }
         }
         else
         {
            _loc1_ = new WindowsView(_cw8295("SendingDataCard") as MovieClip,_of6230);
            _loc1_.title = "windows.event." + this._oy752 + ".inputCode.title";
            _loc1_.text = "";
            _loc1_._ty11227 = 16777215;
            _loc1_._xe10297 = WindowsView.TOP_RIGHT;
            _loc1_.backgroundColor = 4596480;
            _loc1_._xl9813 = 6697728;
            _loc1_._oi4498(310);
            _wj9062._lt3848(_loc1_);
            PacketBuilder._xo2736(MessageTypeConstants._sm12637,this._sk542);
            Communications._kx10385(this._oy752);
         }
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         var _loc4_:WindowsView = null;
         if(param2 == StepsView._by10560)
         {
            UIDialog.getInstance().remove(this);
            dispatchEvent(new Event("onCloseWindow"));
         }
         switch(param1)
         {
            case _al6278:
               if(param2 == StepsView._dh1979)
               {
                  _loc4_ = new WindowsView(_cw8295("SendingDataCard") as MovieClip,_of6230);
                  _loc4_.title = "windows.event." + this._oy752 + ".inputCode.title";
                  _loc4_.text = "windows.event.inputCode.sendingCode";
                  _loc4_._ty11227 = 16777215;
                  _loc4_._xe10297 = WindowsView.TOP_RIGHT;
                  _loc4_.backgroundColor = 4596480;
                  _loc4_._xl9813 = 6697728;
                  _loc4_._oi4498(310);
                  _wj9062._lt3848(_loc4_);
                  PacketBuilder._xo2736(MessageTypeConstants._sm12637,this._sk542);
                  Communications._lc3002(this._oy752,param3 as String);
               }
               return;
            default:
               return;
         }
      }
      
      protected function _sk542(param1:NetworkEventWrapper) : void
      {
         var _loc2_:EventsModel = null;
         var _loc3_:WindowsView = null;
         var _loc4_:WindowsView = null;
         var _loc5_:int = int(param1._qp16092(1));
         var _loc6_:int = int(param1.items[0]);
         if(_loc5_ == MessageTypeConstants._rx16017)
         {
            _loc2_ = new EventsModel();
            _loc2_.id = this._oy752;
            if(_loc6_ == PacketBuilder._ad11893)
            {
               _loc2_.status = EventsModel._eg13506;
            }
            else
            {
               _loc2_.status = EventsModel._bh8866;
            }
            UserSession.getInstance()._ch7698(_loc2_);
            this._qa12882(_loc6_);
         }
         if(_loc5_ == MessageTypeConstants._hl9173)
         {
            if(_loc6_ == PacketBuilder._ad11893)
            {
               _loc2_ = UserSession.getInstance()._ef4675(this._oy752);
               _loc2_.status = EventsModel._bh8866;
               _loc3_ = new WindowsView(_cw8295("AcceptedDataCard") as MovieClip,_jw6431);
               _loc3_.title = "windows.event." + this._oy752 + ".inputCode.title";
               _loc3_.text = "windows.event.inputCode.correctCode";
               _loc3_._ty11227 = 16777215;
               _loc3_._xe10297 = WindowsView.TOP_RIGHT;
               _loc3_.backgroundColor = 4596480;
               _loc3_._xl9813 = 6697728;
               _loc3_._oi4498(310);
               _wj9062._lt3848(_loc3_);
            }
            else
            {
               _loc4_ = new WindowsView(_cw8295("ErrorDataCard") as MovieClip,_wu2220) as WindowsView;
               _loc4_.title = "windows.event." + this._oy752 + ".inputCode.title";
               _loc4_._ty11227 = 16777215;
               _loc4_.backgroundColor = 4596480;
               _loc4_._xl9813 = 6697728;
               _loc4_.text = "windows.event.inputCode.codeSendError";
               _loc4_._xe10297 = WindowsView.TOP_RIGHT;
               _loc4_._oi4498(310);
               _wj9062._lt3848(_loc4_);
            }
         }
      }
      
      private function _qa12882(param1:int) : void
      {
         var _loc2_:WindowsView = null;
         var _loc3_:WindowsView = null;
         if(param1 == PacketBuilder._ad11893)
         {
            _loc2_ = new WindowsView(_cw8295("KeyInputWindow") as MovieClip,WindowModel._al6278,ComponentsModel._hm8630) as WindowsView;
            _loc2_.inputField.textColor = 4596480;
            _loc2_.inputField._nd15322(12);
            _loc2_.inputField._yi13970(-1);
            _loc2_.title = "windows.event." + this._oy752 + ".inputCode.title";
            _loc2_.backgroundColor = 4596480;
            _loc2_._ty11227 = 16777215;
            _loc2_._xl9813 = 6697728;
            _loc2_.label = "windows.event." + this._oy752 + ".inputCode.label";
            _loc2_._xe10297 = WindowsView.TOP_RIGHT;
            _loc2_.description = "windows.event." + this._oy752 + ".inputCode.description";
            _loc2_._kf3772 = 6697728;
            _loc2_._bu15190 = 16777215;
            _loc2_._oi4498(310);
            _wj9062._lt3848(_loc2_);
         }
         else
         {
            _loc3_ = new WindowsView(_cw8295("ErrorDataCard") as MovieClip,_wu2220);
            _loc3_.title = "windows.event." + this._oy752 + ".inputCode.title";
            _loc3_._ty11227 = 16777215;
            _loc3_.text = "windows.event.inputCode.codeSent";
            _loc3_._xe10297 = WindowsView.TOP_RIGHT;
            _loc3_.backgroundColor = 4596480;
            _loc3_._xl9813 = 6697728;
            _loc3_._oi4498(310);
            _wj9062._lt3848(_loc3_);
         }
      }
   }
}

