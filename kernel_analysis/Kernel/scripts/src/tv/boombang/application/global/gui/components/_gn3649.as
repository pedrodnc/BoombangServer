package src.tv.boombang.application.global.gui.components
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.*;
   import flash.text.*;
   import src.allData.texts.*;
   import src.tv.boombang.commons.utils.*;
   import src.tv.boombang.core.*;
   import src.utils.*;
   import src.utils.controlIngTextos.*;
   
   public class _gn3649 extends _cm4000
   {
      
      public static const _wx3290:String = "normalPasswordInput";
      
      public static const _hw12952:String = "superPasswordInput";
      
      public static const _rt9913:String = "emailInput";
      
      public static const _cc9054:String = "regularInput";
      
      public static const _hm8630:String = "codeInput";
      
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
      
      private var _ul12329:ToolTip;
      
      private var _gl13026:uint = 16777215;
      
      private var _gn930:String;
      
      private var _cj11129:Boolean = true;
      
      private var _hc13349:_mc12628;
      
      private var _vt3216:int;
      
      private var _tq4055:int;
      
      public function _gn3649(param1:MovieClip, param2:String = null)
      {
         super(param1);
         if(param2 == null)
         {
            param2 = "regularInput";
         }
         this._gn930 = param2;
         this._go13754 = _xo6614["okStatus"];
         this._rd14697 = _xo6614["checkingStatus"];
         _xo6614.removeChild(this._rd14697);
         this._nu11652 = _xo6614["wrongStatus"];
         this._vr11636 = _xo6614["back"];
         this._hk5176 = _xo6614["textContainer"];
         this._td12627 = this._hk5176["txt"];
         this._ul12329 = new ToolTip(_xo6614["toolTip"]);
         this.init();
      }
      
      protected function init() : void
      {
         _hs13172 = this.textField;
         _yq8362._xl9503(this._td12627,"");
         if(this._gn930 == _hw12952 || this._gn930 == _wx3290)
         {
            this._td12627.displayAsPassword = true;
            this._td12627.restrict = _ei10851._di3970;
            this._nd15322(_ei10851._ik13685);
         }
         if(this._gn930 == _cq16064)
         {
            this._td12627.restrict = _ei10851._qe9613;
            this._nd15322(_ei10851._cb8664);
            this._hc13349 = new _mc12628(this._td12627,105);
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
         if(this._hc13349)
         {
            this._hc13349.destroy();
         }
      }
      
      protected function _rt11412(param1:FocusEvent) : void
      {
         dispatchEvent(new FocusEvent(FocusEvent.FOCUS_IN));
         this._jr5664(_ad6139);
      }
      
      protected function _ye14735(param1:FocusEvent) : void
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
      
      public function _jr5664(param1:String, param2:String = "") : void
      {
         this._go13754.visible = false;
         if(_xo6614.contains(this._rd14697))
         {
            _xo6614.removeChild(this._rd14697);
         }
         this._rd14697.visible = false;
         this._nu11652.visible = false;
         this._ul12329.visible = false;
         _xv14798._ts14032(this._vr11636,this._gl13026);
         switch(param1)
         {
            case STATUS_OK:
               this._go13754.visible = true;
               return;
            case _if7748:
               this._ul12329.txt = param2;
               this._ul12329.visible = true;
               this._nu11652.visible = true;
               _xv14798._ts14032(this._vr11636,16776960);
               return;
            case _xe2976:
               this._rd14697.visible = true;
               _xo6614.addChild(this._rd14697);
               return;
            case _ad6139:
               return;
            default:
               return;
         }
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
         var _loc1_:* = !_ii147._uj937(this.txt);
         switch(this._gn930)
         {
            case _rt9913:
               if(!_kw5987._pv10123(this.txt))
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
               if(!_kw5987._nj4370(this.txt))
               {
                  this._jr5664(_if7748,"validation.superkeyNeedsAlphaNumbers");
                  return false;
               }
               if(!_kw5987._vm12952(this.txt))
               {
                  this._jr5664(_if7748,_fg1060._mn8930._ad13455("validation.characterCountLimit",_ei10851._ut5697,_ei10851._ik13685));
                  return false;
               }
            case _wx3290:
               if(_loc1_)
               {
                  this._jr5664(_if7748,"validation.passwordTooEasy");
                  return false;
               }
               if(!_kw5987._vm12952(this.txt))
               {
                  this._jr5664(_if7748,_fg1060._mn8930._ad13455("validation.characterCountLimit",_ei10851._ut5697,_ei10851._ik13685));
                  return false;
               }
               break;
            case _hm8630:
               if(this._vt3216 == -1)
               {
                  if(this.txt.length < this._tq4055)
                  {
                     this._jr5664(_if7748,_fg1060._mn8930._ad13455("validation.codeCharacterExactLimit",this._tq4055));
                     return false;
                  }
                  break;
               }
               if(this.txt.length < this._vt3216 || this.txt.length > this._tq4055)
               {
                  this._jr5664(_if7748,_fg1060._mn8930._ad13455("validation.codeCharacterCountLimit",this._vt3216,this._tq4055));
                  return false;
               }
         }
         this._jr5664(STATUS_OK);
         return true;
      }
      
      public function set textColor(param1:uint) : void
      {
         _yq8362._np7275(this._td12627,param1);
      }
      
      public function _ma3494(param1:uint) : void
      {
         this._gl13026 = param1;
         _xv14798._ts14032(this._vr11636,this._gl13026);
      }
      
      public function _oi4498(param1:Number = 0, param2:Number = 0) : void
      {
         if(param1 != 0)
         {
            this._vr11636.width = param1;
            this._td12627.width = this._vr11636.width - 16;
            this._go13754.x = this._rd14697.x = this._nu11652.x = this._vr11636.width - 10;
         }
         if(param2 != 0)
         {
            this._vr11636.height = param2;
            this._td12627.y = Math.round(this._vr11636.height / 2 - this._td12627.height / 2);
            this._go13754.y = this._rd14697.y = this._nu11652.y = this._vr11636.height / 2;
         }
      }
      
      public function _nd15322(param1:int) : void
      {
         this._tq4055 = param1;
         this._td12627.maxChars = param1;
      }
      
      public function _yi13970(param1:int) : void
      {
         this._vt3216 = param1;
      }
   }
}

