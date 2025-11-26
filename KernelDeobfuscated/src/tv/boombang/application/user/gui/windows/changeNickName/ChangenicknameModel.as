package src.tv.boombang.application.user.gui.windows.changeNickName
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.*;
   import flash.text.*;
   import src.allData.texts.*;
   import src.tv.boombang.application.global.gui.components.ComponentsView;
   import src.tv.boombang.commons.utils.*;
   import src.tv.boombang.core.*;
   import src.utils.*;
   import src.utils.controlIngTextos.*;
   
   public class ChangenicknameModel extends ComponentsView
   {
      
      public static const textString:String = "normalPasswordInput";
      
      public static const textString1:String = "superPasswordInput";
      
      public static const textString2:String = "emailInput";
      
      public static const textString3:String = "regularInput";
      
      public static const textString4:String = "nickName";
      
      public static const STATUS_OK:String = "statusOk";
      
      public static const textString5:String = "statusWrong";
      
      public static const textString6:String = "statusChecking";
      
      public static const textString7:String = "statusStandBy";
      
      private var _td12627:TextField;
      
      private var _hk5176:MovieClip;
      
      private var _vr11636:Sprite;
      
      private var _nu11652:Sprite;
      
      private var _go13754:Sprite;
      
      private var _rd14697:Sprite;
      
      private var _ul12329:ChangenicknameView;
      
      private var count:String;
      
      private var isEnabled:Boolean = true;
      
      private var _hc13349:ControlingtextosUtils;
      
      public function ChangenicknameModel(param1:MovieClip, param2:String = null)
      {
         super(param1);
         if(param2 == null)
         {
            param2 = "regularInput";
         }
         this.count = param2;
         this._go13754 = _xo6614["okStatus"];
         this._rd14697 = _xo6614["checkingStatus"];
         this._nu11652 = _xo6614["wrongStatus"];
         this._vr11636 = _xo6614["back"];
         this._hk5176 = _xo6614["textContainer"];
         this._td12627 = this._hk5176["txt"];
         _xo6614["toolTip"].visible = false;
         this._ul12329 = new ChangenicknameView(_xo6614);
         this._ul12329.addEventListener(ChangenicknameView._yg5388,this.changeNickName);
         addChild(this._ul12329);
         this.init();
      }
      
      private function init() : void
      {
         _hs13172 = this.textField;
         UtilsUtils._xl9503(this._td12627,"");
         if(this.count == textString4)
         {
            this._td12627.restrict = TextLocalizer.textString2;
            this._td12627.maxChars = TextLocalizer.count2;
            this._hc13349 = new ControlingtextosUtils(this._td12627,105);
         }
         this._td12627.type = TextFieldType.INPUT;
         this._td12627.addEventListener(FocusEvent.FOCUS_IN,this._rt11412,false,0,true);
         this._td12627.addEventListener(FocusEvent.FOCUS_OUT,this.validate,false,0,true);
         this.destroy(textString7);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._td12627 != null)
         {
            this._td12627.removeEventListener(FocusEvent.FOCUS_IN,this._rt11412);
            this._td12627.removeEventListener(FocusEvent.FOCUS_OUT,this.validate);
         }
         if(this._hc13349 != null)
         {
            this._hc13349.destroy();
         }
         this._ul12329.removeEventListener(ChangenicknameView._yg5388,this.changeNickName);
         this._ul12329.destroy();
      }
      
      private function _rt11412(param1:FocusEvent) : void
      {
         this.destroy(textString7);
      }
      
      private function validate(param1:FocusEvent) : void
      {
         dispatchEvent(new FocusEvent(FocusEvent.FOCUS_OUT));
         if(this._td12627.text != "" && Boolean(this.isEnabled))
         {
            this.validate();
         }
      }
      
      public function get txt() : String
      {
         return this._td12627.text;
      }
      
      public function set txt(param1:String) : void
      {
         this._td12627.text = param1;
      }
      
      override public function set tabIndex(param1:int) : void
      {
         this._td12627.tabIndex = param1;
      }
      
      public function get textField() : TextField
      {
         return this._td12627;
      }
      
      public function destroy(param1:String, param2:String = "", param3:Array = null) : void
      {
         var count1:Array = null;
         var count2:String = null;
         var count7:Number = NaN;
         this._go13754.visible = false;
         this._rd14697.visible = false;
         this._nu11652.visible = false;
         this._ul12329.destroy();
         StringUtils._ts14032(this._vr11636,16777215);
         switch(param1)
         {
            case STATUS_OK:
               this._go13754.visible = true;
               return;
            case textString5:
               if(param3 != null)
               {
                  count1 = [];
                  count2 = this._td12627.text;
                  count7 = 0;
                  while(count7 < param3.length)
                  {
                     if(ControlingtextosUtils._nr8915(this._td12627,param3[count7],95))
                     {
                        count1.push(param3[count7]);
                     }
                     count7++;
                  }
                  this._td12627.text = count2;
               }
               this._ul12329.create(param2,count1);
               this._nu11652.visible = true;
               StringUtils._ts14032(this._vr11636,16776960);
               return;
            case textString6:
               this._rd14697.visible = true;
               return;
            case textString7:
               return;
            default:
               return;
         }
      }
      
      private function changeNickName(param1:ChangenicknameView) : void
      {
         UtilsUtils._xl9503(this._td12627,param1.name);
         this.validate(null);
      }
      
      public function set _tc5184(param1:Boolean) : void
      {
         this.isEnabled = param1;
      }
      
      public function validate() : Boolean
      {
         if(!this.isEnabled)
         {
            return true;
         }
         this.destroy(textString7);
         if(this.txt == "")
         {
            this.destroy(textString5,"validation.fieldEmpty");
            return false;
         }
         var count2:* = !UtilsUtils._uj937(this.txt);
         switch(this.count)
         {
            case textString2:
               if(!UtilsModel._pv10123(this.txt))
               {
                  this.destroy(textString5,"validation.invalidEmail");
                  return false;
               }
               break;
            case textString1:
               if(count2)
               {
                  this.destroy(textString5,"validation.superkeyTooEasy");
                  return false;
               }
               if(!UtilsModel._nj4370(this.txt))
               {
                  this.destroy(textString5,"validation.superkeyNeedsAlphaNumbers");
                  return false;
               }
               if(!UtilsModel._vm12952(this.txt))
               {
                  this.destroy(textString5,CoreModel._mn8930.getString1("validation.characterCountLimit",TextLocalizer.count,TextLocalizer.count1));
                  return false;
               }
            case textString:
               if(count2)
               {
                  this.destroy(textString5,"validation.passwordTooEasy");
                  return false;
               }
               if(!UtilsModel._vm12952(this.txt))
               {
                  this.destroy(textString5,CoreModel._mn8930.getString1("validation.characterCountLimit",TextLocalizer.count,TextLocalizer.count1));
                  return false;
               }
         }
         this.destroy(STATUS_OK);
         return true;
      }
   }
}

