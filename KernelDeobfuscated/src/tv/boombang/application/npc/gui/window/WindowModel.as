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
      
      public static const textString:String = "sendingKeyStep";
      
      public static const textString1:String = "checkingKeyStep";
      
      public static const textString2:String = "errorKeyStep";
      
      public static const textString3:String = "okKeyStep";
      
      private var count:int;
      
      public function WindowModel(param1:int)
      {
         this.count = param1;
         super();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         PacketBuilder.handleSocket1(MessageTypeConstants.count91,this.update);
      }
      
      override protected function init() : void
      {
         var count2:WindowsView = null;
         var count:EventsModel = UserSession.getInstance()._ef4675(this.count);
         if(count)
         {
            if(count.status == EventsModel.textString1)
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
            count2 = new WindowsView(_cw8295("SendingDataCard") as MovieClip,textString1);
            count2.title = "windows.event." + this.count + ".inputCode.title";
            count2.text = "";
            count2._ty11227 = 16777215;
            count2._xe10297 = WindowsView.TOP_RIGHT;
            count2.backgroundColor = 4596480;
            count2._xl9813 = 6697728;
            count2._oi4498(310);
            _wj9062._lt3848(count2);
            PacketBuilder.handleSocket(MessageTypeConstants.count91,this.update);
            Communications._kx10385(this.count);
         }
      }
      
      override protected function move1(param1:String, param2:String, param3:Object) : void
      {
         var count1:WindowsView = null;
         if(param2 == StepsView.textString3)
         {
            UIDialog.getInstance().remove(this);
            dispatchEvent(new Event("onCloseWindow"));
         }
         switch(param1)
         {
            case textString:
               if(param2 == StepsView.textString1)
               {
                  count1 = new WindowsView(_cw8295("SendingDataCard") as MovieClip,textString1);
                  count1.title = "windows.event." + this.count + ".inputCode.title";
                  count1.text = "windows.event.inputCode.sendingCode";
                  count1._ty11227 = 16777215;
                  count1._xe10297 = WindowsView.TOP_RIGHT;
                  count1.backgroundColor = 4596480;
                  count1._xl9813 = 6697728;
                  count1._oi4498(310);
                  _wj9062._lt3848(count1);
                  PacketBuilder.handleSocket(MessageTypeConstants.count91,this.update);
                  Communications._lc3002(this.count,param3 as String);
               }
               return;
            default:
               return;
         }
      }
      
      protected function update(param1:NetworkEventWrapper) : void
      {
         var count:EventsModel = null;
         var count3:WindowsView = null;
         var count1:WindowsView = null;
         var count2:int = int(param1._qp16092(1));
         var count7:int = int(param1.items[0]);
         if(count2 == MessageTypeConstants.count97)
         {
            count = new EventsModel();
            count.id = this.count;
            if(count7 == PacketBuilder.count)
            {
               count.status = EventsModel.textString;
            }
            else
            {
               count.status = EventsModel.textString1;
            }
            UserSession.getInstance()._ch7698(count);
            this._qa12882(count7);
         }
         if(count2 == MessageTypeConstants.count98)
         {
            if(count7 == PacketBuilder.count)
            {
               count = UserSession.getInstance()._ef4675(this.count);
               count.status = EventsModel.textString1;
               count3 = new WindowsView(_cw8295("AcceptedDataCard") as MovieClip,textString3);
               count3.title = "windows.event." + this.count + ".inputCode.title";
               count3.text = "windows.event.inputCode.correctCode";
               count3._ty11227 = 16777215;
               count3._xe10297 = WindowsView.TOP_RIGHT;
               count3.backgroundColor = 4596480;
               count3._xl9813 = 6697728;
               count3._oi4498(310);
               _wj9062._lt3848(count3);
            }
            else
            {
               count1 = new WindowsView(_cw8295("ErrorDataCard") as MovieClip,textString2) as WindowsView;
               count1.title = "windows.event." + this.count + ".inputCode.title";
               count1._ty11227 = 16777215;
               count1.backgroundColor = 4596480;
               count1._xl9813 = 6697728;
               count1.text = "windows.event.inputCode.codeSendError";
               count1._xe10297 = WindowsView.TOP_RIGHT;
               count1._oi4498(310);
               _wj9062._lt3848(count1);
            }
         }
      }
      
      private function _qa12882(param1:int) : void
      {
         var count:WindowsView = null;
         var count3:WindowsView = null;
         if(param1 == PacketBuilder.count)
         {
            count = new WindowsView(_cw8295("KeyInputWindow") as MovieClip,WindowModel.textString,ComponentsModel._hm8630) as WindowsView;
            count.inputField.textColor = 4596480;
            count.inputField._nd15322(12);
            count.inputField._yi13970(-1);
            count.title = "windows.event." + this.count + ".inputCode.title";
            count.backgroundColor = 4596480;
            count._ty11227 = 16777215;
            count._xl9813 = 6697728;
            count.label = "windows.event." + this.count + ".inputCode.label";
            count._xe10297 = WindowsView.TOP_RIGHT;
            count.description = "windows.event." + this.count + ".inputCode.description";
            count._kf3772 = 6697728;
            count._bu15190 = 16777215;
            count._oi4498(310);
            _wj9062._lt3848(count);
         }
         else
         {
            count3 = new WindowsView(_cw8295("ErrorDataCard") as MovieClip,textString2);
            count3.title = "windows.event." + this.count + ".inputCode.title";
            count3._ty11227 = 16777215;
            count3.text = "windows.event.inputCode.codeSent";
            count3._xe10297 = WindowsView.TOP_RIGHT;
            count3.backgroundColor = 4596480;
            count3._xl9813 = 6697728;
            count3._oi4498(310);
            _wj9062._lt3848(count3);
         }
      }
   }
}

