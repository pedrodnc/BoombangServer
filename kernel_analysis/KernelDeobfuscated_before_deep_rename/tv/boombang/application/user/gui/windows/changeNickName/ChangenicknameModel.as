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
      
      public static const _wx3290:String = "normalPasswordInput";
      
      public static const _hw12952:String = "superPasswordInput";
      
      public static const _rt9913:String = "emailInput";
      
      public static const _cc9054:String = "regularInput";
      
      public static const _cq16064:String = "nickName";
      
      public static const STATUS_OK:String = "statusOk";
      
      public static const _if7748:String = "statusWrong";
      
      public static const _xe2976:String = "statusChecking";
      
      public static const _ad6139:String = "statusStandBy";
      
      private var _td12627:TextField;
      
      private var _hk5176:MovieClip;
      
      private var _vr11636:Sprite;
      
      private var _nu11652:Sprite;
      
      private var _go13754:Sprite;
      
      private var _rd14697:Sprite;
      
      private var _ul12329:ChangenicknameView;
      
      private var _gn930:String;
      
      private var _cj11129:Boolean = true;
      
      private var _hc13349:ControlingtextosUtils;
      
      public function ChangenicknameModel(param1:MovieClip, param2:String = null)
      {
         super(param1);
         if(param2 == null)
         {
            param2 = "regularInput";
         }
         this._gn930 = param2;
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
         if(this._gn930 == _cq16064)
         {
            this._td12627.restrict = TextLocalizer._qe9613;
            this._td12627.maxChars = TextLocalizer._cb8664;
            this._hc13349 = new ControlingtextosUtils(this._td12627,105);
         }
         this._td12627.type = TextFieldType.INPUT;
         this._td12627.addEventListener(FocusEvent.FOCUS_IN,this._rt11412,false,0,true);
         this._td12627.addEventListener(FocusEvent.FOCUS_OUT,this._ye14735,false,0,true);
         this._jr5664(_ad6139);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._td12627 != null)
         {
            this._td12627.removeEventListener(FocusEvent.FOCUS_IN,this._rt11412);
            this._td12627.removeEventListener(FocusEvent.FOCUS_OUT,this._ye14735);
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
         this._jr5664(_ad6139);
      }
      
      private function _ye14735(param1:FocusEvent) : void
      {
         dispatchEvent(new FocusEvent(FocusEvent.FOCUS_OUT));
         if(this._td12627.text != "" && Boolean(this._cj11129))
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
      
      public function _jr5664(param1:String, param2:String = "", param3:Array = null) : void
      {
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
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
            case _if7748:
               if(param3 != null)
               {
                  _loc4_ = [];
                  _loc5_ = this._td12627.text;
                  _loc6_ = 0;
                  while(_loc6_ < param3.length)
                  {
                     if(ControlingtextosUtils._nr8915(this._td12627,param3[_loc6_],95))
                     {
                        _loc4_.push(param3[_loc6_]);
                     }
                     _loc6_++;
                  }
                  this._td12627.text = _loc5_;
               }
               this._ul12329.create(param2,_loc4_);
               this._nu11652.visible = true;
               StringUtils._ts14032(this._vr11636,16776960);
               return;
            case _xe2976:
               this._rd14697.visible = true;
               return;
            case _ad6139:
               return;
            default:
               return;
         }
      }
      
      private function changeNickName(param1:ChangenicknameView) : void
      {
         UtilsUtils._xl9503(this._td12627,param1.name);
         this._ye14735(null);
      }
      
      public function set _tc5184(param1:Boolean) : void
      {
         this._cj11129 = param1;
      }
      
      public function validate() : Boolean
      {
         if(!this._cj11129)
         {
            return true;
         }
         this._jr5664(_ad6139);
         if(this.txt == "")
         {
            this._jr5664(_if7748,"validation.fieldEmpty");
            return false;
         }
         var _loc1_:* = !UtilsUtils._uj937(this.txt);
         switch(this._gn930)
         {
            case _rt9913:
               if(!UtilsModel._pv10123(this.txt))
               {
                  this._jr5664(_if7748,"validation.invalidEmail");
                  return false;
               }
               break;
            case _hw12952:
               if(_loc1_)
               {
                  this._jr5664(_if7748,"validation.superkeyTooEasy");
                  return false;
               }
               if(!UtilsModel._nj4370(this.txt))
               {
                  this._jr5664(_if7748,"validation.superkeyNeedsAlphaNumbers");
                  return false;
               }
               if(!UtilsModel._vm12952(this.txt))
               {
                  this._jr5664(_if7748,CoreModel._mn8930._ad13455("validation.characterCountLimit",TextLocalizer._ut5697,TextLocalizer._ik13685));
                  return false;
               }
            case _wx3290:
               if(_loc1_)
               {
                  this._jr5664(_if7748,"validation.passwordTooEasy");
                  return false;
               }
               if(!UtilsModel._vm12952(this.txt))
               {
                  this._jr5664(_if7748,CoreModel._mn8930._ad13455("validation.characterCountLimit",TextLocalizer._ut5697,TextLocalizer._ik13685));
                  return false;
               }
         }
         this._jr5664(STATUS_OK);
         return true;
      }
   }
}

