package src.tv.boombang.application.user.gui.windows.editConnections
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows.WindowsView;
   import src.tv.boombang.application.user.gui.windows.changeNickName.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.library.steps.*;
   import src.utils.*;
   
   public class EditconnectionsView extends WindowsView
   {
      
      protected var _ta1482:ChangenicknameModel;
      
      private var isEnabled:Boolean;
      
      protected var textString:String;
      
      public function EditconnectionsView(param1:MovieClip, param2:String)
      {
         super(param1,param2,ComponentsModel.textString);
         this._ta1482 = new ChangenicknameModel(_xo6614["oldPassword"],ComponentsModel.textString4);
         this._ta1482._tc5184 = false;
         this._ta1482.textField.text = CoreModel.data.name;
         if(CoreModel.data._je8982 == 0)
         {
            this._ta1482.textField.type = TextFieldType.DYNAMIC;
            this._ta1482.enabled = false;
         }
         else
         {
            this._ta1482.addEventListener(FocusEvent.FOCUS_OUT,this._ys2478,false,0,true);
            _qi5262.push(this._ta1482);
            this.isEnabled = this._ta1482.txt == CoreModel.data.name;
         }
         PacketBuilder.handleSocket(MessageTypeConstants.count1,this._ke9091);
      }
      
      public function set _ml14435(param1:String) : void
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
         if(!this._ta1482.enabled)
         {
            this.isEnabled = true;
         }
         if(!this.isEnabled)
         {
            this._ta1482.destroy(ComponentsModel.textString5,"windows.editConnections.nicknameUsed");
         }
         if(count2)
         {
            _pp1786.destroy(ComponentsModel.textString5,"windows.changePassword.passwordAndSecurityPasswordEqual");
         }
         return !count2 && Boolean(this.isEnabled) && Boolean(this._ta1482.validate()) && super.validate();
      }
      
      override protected function _ly12555() : Object
      {
         var count2:String = (_xo6614["oldPassword"]["textContainer"]["txt"] as TextField).text;
         var count:String = (_xo6614["key"]["textContainer"]["txt"] as TextField).text;
         var count3:Object = new Object();
         count3["username"] = count2;
         count3["newPassword"] = count;
         return count3;
      }
      
      override protected function _jw7416(param1:MouseEvent) : void
      {
         _nk11935(StepsView.textString2);
      }
      
      private function _ys2478(param1:FocusEvent) : void
      {
         this.isEnabled = false;
         if(this._ta1482.txt == CoreModel.data.name)
         {
            this.isEnabled = true;
         }
         else if(this._ta1482.txt != "" && this._ta1482.txt != CoreModel.data.name)
         {
            this._ta1482.destroy(ComponentsModel.textString6);
            Communications._dm10335(this._ta1482.txt);
         }
      }
      
      private function _ke9091(param1:NetworkEventWrapper) : void
      {
         var count:int = 0;
         var count3:Array = null;
         var count1:int = int(param1._qp16092(1));
         if(count1 == MessageTypeConstants.count7)
         {
            count = int(param1.items[0]);
            if(count == PacketBuilder.count2)
            {
               this._ta1482.destroy(ComponentsModel.textString5,"Unexpected server error");
            }
            else if(count == Communications._dm4177)
            {
               this._ta1482.destroy(ComponentsModel.STATUS_OK);
               this.isEnabled = true;
            }
            else if(count == Communications._ra10685)
            {
               count3 = param1.items.slice(1);
               this._ta1482.destroy(ComponentsModel.textString5,"windows.editConnections.nicknameUsed",count3);
               this.isEnabled = false;
            }
         }
      }
   }
}

