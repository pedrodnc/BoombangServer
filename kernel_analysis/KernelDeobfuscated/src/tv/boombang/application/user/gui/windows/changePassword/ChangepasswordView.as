package src.tv.boombang.application.user.gui.windows.changePassword
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows.WindowsView;
   import src.tv.boombang.core.communications.*;
   import src.utils.*;
   
   public class ChangepasswordView extends WindowsView
   {
      
      protected var _nb5284:ComponentsModel;
      
      private var isEnabled:Boolean = false;
      
      protected var textString:String;
      
      public function ChangepasswordView(param1:MovieClip, param2:String)
      {
         super(param1,param2,ComponentsModel.textString);
         this._nb5284 = new ComponentsModel(_xo6614["oldPassword"],ComponentsModel.textString);
         _qi5262.push(this._nb5284);
         this._nb5284._tc5184 = false;
         this._nb5284.addEventListener(FocusEvent.FOCUS_OUT,this._uu5327,false,0,true);
         PacketBuilder.handleSocket(MessageTypeConstants.count28,this.update);
      }
      
      public function set _ta7578(param1:String) : void
      {
         UtilsUtils._xl9503(_xo6614["oldPasswordTitle"]["txt"],param1);
      }
      
      public function set _to10627(param1:String) : void
      {
         this.textString = param1;
      }
      
      override protected function validate() : Boolean
      {
         var count2:Boolean = this.textString == super._pp1786.txt && super._pp1786.txt != "";
         var count:Boolean = this._nb5284.txt == super._pp1786.txt && super._pp1786.txt != "";
         if(!this.isEnabled)
         {
            this._nb5284.destroy(ComponentsModel.textString5,"windows.changePassword.incorrectOldPassword");
         }
         if(count2)
         {
            _pp1786.destroy(ComponentsModel.textString5,"windows.changePassword.passwordAndSecurityPasswordEqual");
         }
         if(count)
         {
            _pp1786.destroy(ComponentsModel.textString5,"windows.changePassword.newPasswordIsOldPassword");
         }
         return !count && !count2 && Boolean(this.isEnabled) && Boolean(this._nb5284.validate()) && super.validate();
      }
      
      override protected function _ly12555() : Object
      {
         var count2:String = (_xo6614["oldPassword"]["textContainer"]["txt"] as TextField).text;
         var count:String = (_xo6614["key"]["textContainer"]["txt"] as TextField).text;
         return {
            "oldPassword":count2,
            "newPassword":count
         };
      }
      
      private function _uu5327(param1:FocusEvent) : void
      {
         this.isEnabled = false;
         if(this._nb5284.txt != "")
         {
            this._nb5284.destroy(ComponentsModel.textString6);
            CommunicationsModel._sf101(this._nb5284.txt);
         }
      }
      
      private function update(param1:NetworkEventWrapper) : void
      {
         var count:int = int(param1._qp16092(1));
         if(count != MessageTypeConstants.count40)
         {
            return;
         }
         var count3:int = int(param1.items[0]);
         if(count3 == PacketBuilder.count2)
         {
            this._nb5284.destroy(ComponentsModel.textString5,"Unexpected server error");
         }
         else if(count3 == PacketBuilder.count)
         {
            this._nb5284.destroy(ComponentsModel.STATUS_OK);
            this.isEnabled = true;
         }
         else if(count3 == PacketBuilder.count1)
         {
            this._nb5284.destroy(ComponentsModel.textString5,"windows.changePassword.incorrectOldPassword");
            this.isEnabled = false;
         }
      }
   }
}

