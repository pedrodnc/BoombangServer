package src.modules.interfaz.fichaKeko.hobbies
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.text.*;
   import flash.ui.*;
   import src.allData.texts.*;
   import src.modules.interfaz.fichaKeko.FichakekoView;
   import src.utils.*;
   import src.utils.commonComponents.CommoncomponentsController;
   import src.utils.controlIngTextos.*;
   
   public class HobbiesModel extends CommoncomponentsController
   {
      
      private static const _ms4746:String = "tiHobbie";
      
      private static const _wf6200:String = "mcHobbieIco";
      
      private static const _ub2689:String = "tiNumber";
      
      private static const _cb4863:String = "mcPastillaHobbies";
      
      public var _uq11431:int;
      
      private var _ag7622:Function;
      
      private var _ts642:FichakekoView;
      
      protected var colorTransform:ColorTransform;
      
      private var _rp12149:Boolean = false;
      
      private var _xi5685:TextField;
      
      private var _bf12828:TextField;
      
      private var _sp14385:String;
      
      private var _op13885:String;
      
      private var _rc6897:MovieClip;
      
      private var _qh36:MovieClip;
      
      private var _jg7150:ControlingtextosUtils;
      
      public function HobbiesModel(param1:int, param2:FichakekoView, param3:Boolean, param4:String, param5:String, param6:MovieClip, param7:Function)
      {
         this.colorTransform = new ColorTransform();
         super(param6,this._pu2953);
         this._uq11431 = param1;
         this._ag7622 = param7;
         this._ts642 = param2;
         this._op13885 = param4;
         this._sp14385 = param5;
         this._xi5685 = TextField(param6.getChildByName(_ms4746));
         this._rc6897 = MovieClip(param6.getChildByName(_wf6200));
         this._bf12828 = TextField(param6.getChildByName(_ub2689));
         this._qh36 = MovieClip(param6.getChildByName(_cb4863));
         UtilsUtils._xl9503(this._bf12828,param1 + 1 + ".");
         this._rc6897.visible = false;
         if(!param3)
         {
            param6.mouseEnabled = false;
         }
         this._iv1460();
      }
      
      public function _yy11727() : String
      {
         return this._op13885;
      }
      
      private function _pu2953() : void
      {
         if(this._rp12149)
         {
            return;
         }
         this.colorTransform.color = this._ts642._sf7808;
         this._qh36.transform.colorTransform = this.colorTransform;
         this._ag7622(this._uq11431);
         this._rp12149 = true;
         UtilsUtils._xl9503(this._xi5685,"");
         this._xi5685.type = TextFieldType.INPUT;
         this._xi5685.stage.focus = this._xi5685;
         this._xi5685.restrict = TextLocalizer._gt8202;
         this._xi5685.maxChars = TextLocalizer._ak15243;
         this._xi5685.mouseEnabled = true;
         this._xi5685.addEventListener(KeyboardEvent.KEY_DOWN,this._jf770);
         this._jg7150 = new ControlingtextosUtils(this._xi5685,8);
         this._rc6897.visible = true;
         this._bf12828.visible = false;
      }
      
      public function _vp10797() : Boolean
      {
         var _loc1_:Boolean = false;
         if(!this._rp12149)
         {
            return false;
         }
         this._rp12149 = false;
         this._xi5685.removeEventListener(KeyboardEvent.KEY_DOWN,this._jf770);
         if(this._jg7150 != null)
         {
            this._jg7150.destroy();
            this._jg7150 = null;
         }
         var _loc2_:String = this._xi5685.text;
         if(_loc2_ != "")
         {
            _loc2_ = UtilsUtils._bg5268(_loc2_);
            if(_loc2_ != this._op13885)
            {
               this._op13885 = _loc2_;
               _loc1_ = true;
            }
         }
         UtilsUtils._xl9503(this._xi5685,this._op13885);
         this._iv1460();
         return _loc1_;
      }
      
      private function _jf770(param1:KeyboardEvent) : void
      {
         if(param1.charCode != Keyboard.ENTER)
         {
            return;
         }
         param1.preventDefault();
         this._ag7622(this._uq11431);
      }
      
      public function _no3546(param1:String) : void
      {
         this._op13885 = param1;
         UtilsUtils._xl9503(this._xi5685,param1);
      }
      
      override public function _ch1514() : void
      {
         if(this._rp12149)
         {
            return;
         }
         this.colorTransform.color = this._ts642._sf7808;
         this._qh36.transform.colorTransform = this.colorTransform;
         UtilsUtils._xl9503(this._xi5685,this._sp14385);
         this._rc6897.visible = true;
         this._bf12828.visible = false;
      }
      
      override public function _iv1460() : void
      {
         if(this._rp12149)
         {
            return;
         }
         if(this._qh36 != null)
         {
            this.colorTransform.color = this._ts642._rf5817;
            this._qh36.transform.colorTransform = this.colorTransform;
            UtilsUtils._xl9503(this._xi5685,this._op13885);
            this._xi5685.mouseEnabled = false;
            this._xi5685.type = TextFieldType.DYNAMIC;
            this._rc6897.visible = false;
            this._bf12828.visible = true;
         }
      }
      
      override public function destroy() : void
      {
         this._xi5685.removeEventListener(KeyboardEvent.KEY_DOWN,this._jf770);
         if(this._jg7150 != null)
         {
            this._jg7150.destroy();
            this._jg7150 = null;
         }
         super.destroy();
      }
   }
}

