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
      
      private var _km13039:Boolean;
      
      protected var _pp10396:String;
      
      public function EditconnectionsView(param1:MovieClip, param2:String)
      {
         super(param1,param2,ComponentsModel._wx3290);
         this._ta1482 = new ChangenicknameModel(_xo6614["oldPassword"],ComponentsModel._cq16064);
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
            this._km13039 = this._ta1482.txt == CoreModel.data.name;
         }
         PacketBuilder._xo2736(MessageTypeConstants._js2213,this._ke9091);
      }
      
      public function set _ml14435(param1:String) : void
      {
         UtilsUtils._xl9503(_xo6614["oldPasswordTitle"]["txt"],param1);
      }
      
      public function set _to10627(param1:String) : void
      {
         this._pp10396 = param1;
      }
      
      override protected function validate() : Boolean
      {
         var _loc1_:Boolean = this._pp10396 == super._pp1786.txt && super._pp1786.txt != "";
         if(!this._ta1482.enabled)
         {
            this._km13039 = true;
         }
         if(!this._km13039)
         {
            this._ta1482._jr5664(ComponentsModel._if7748,"windows.editConnections.nicknameUsed");
         }
         if(_loc1_)
         {
            _pp1786._jr5664(ComponentsModel._if7748,"windows.changePassword.passwordAndSecurityPasswordEqual");
         }
         return !_loc1_ && Boolean(this._km13039) && Boolean(this._ta1482.validate()) && super.validate();
      }
      
      override protected function _ly12555() : Object
      {
         var _loc1_:String = (_xo6614["oldPassword"]["textContainer"]["txt"] as TextField).text;
         var _loc2_:String = (_xo6614["key"]["textContainer"]["txt"] as TextField).text;
         var _loc3_:Object = new Object();
         _loc3_["username"] = _loc1_;
         _loc3_["newPassword"] = _loc2_;
         return _loc3_;
      }
      
      override protected function _jw7416(param1:MouseEvent) : void
      {
         _nk11935(StepsView._vr15134);
      }
      
      private function _ys2478(param1:FocusEvent) : void
      {
         this._km13039 = false;
         if(this._ta1482.txt == CoreModel.data.name)
         {
            this._km13039 = true;
         }
         else if(this._ta1482.txt != "" && this._ta1482.txt != CoreModel.data.name)
         {
            this._ta1482._jr5664(ComponentsModel._xe2976);
            Communications._dm10335(this._ta1482.txt);
         }
      }
      
      private function _ke9091(param1:NetworkEventWrapper) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:int = int(param1._qp16092(1));
         if(_loc4_ == MessageTypeConstants._yq12633)
         {
            _loc2_ = int(param1.items[0]);
            if(_loc2_ == PacketBuilder._qj7323)
            {
               this._ta1482._jr5664(ComponentsModel._if7748,"Unexpected server error");
            }
            else if(_loc2_ == Communications._dm4177)
            {
               this._ta1482._jr5664(ComponentsModel.STATUS_OK);
               this._km13039 = true;
            }
            else if(_loc2_ == Communications._ra10685)
            {
               _loc3_ = param1.items.slice(1);
               this._ta1482._jr5664(ComponentsModel._if7748,"windows.editConnections.nicknameUsed",_loc3_);
               this._km13039 = false;
            }
         }
      }
   }
}

