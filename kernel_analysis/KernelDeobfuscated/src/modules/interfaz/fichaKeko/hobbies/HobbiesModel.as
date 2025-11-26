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
      
      private static const textString:String = "tiHobbie";
      
      private static const textString1:String = "mcHobbieIco";
      
      private static const textString2:String = "tiNumber";
      
      private static const textString3:String = "mcPastillaHobbies";
      
      public var count:int;
      
      private var _ag7622:Function;
      
      private var _ts642:FichakekoView;
      
      protected var colorTransform:ColorTransform;
      
      private var isEnabled:Boolean = false;
      
      private var _xi5685:TextField;
      
      private var _bf12828:TextField;
      
      private var textString4:String;
      
      private var textString5:String;
      
      private var _rc6897:MovieClip;
      
      private var _qh36:MovieClip;
      
      private var _jg7150:ControlingtextosUtils;
      
      public function HobbiesModel(param1:int, param2:FichakekoView, param3:Boolean, param4:String, param5:String, param6:MovieClip, param7:Function)
      {
         this.colorTransform = new ColorTransform();
         super(param6,this._pu2953);
         this.count = param1;
         this._ag7622 = param7;
         this._ts642 = param2;
         this.textString5 = param4;
         this.textString4 = param5;
         this._xi5685 = TextField(param6.getChildByName(textString));
         this._rc6897 = MovieClip(param6.getChildByName(textString1));
         this._bf12828 = TextField(param6.getChildByName(textString2));
         this._qh36 = MovieClip(param6.getChildByName(textString3));
         UtilsUtils._xl9503(this._bf12828,param1 + 1 + ".");
         this._rc6897.visible = false;
         if(!param3)
         {
            param6.mouseEnabled = false;
         }
         this.stop();
      }
      
      public function getString() : String
      {
         return this.textString5;
      }
      
      private function _pu2953() : void
      {
         if(this.isEnabled)
         {
            return;
         }
         this.colorTransform.color = this._ts642._sf7808;
         this._qh36.transform.colorTransform = this.colorTransform;
         this._ag7622(this.count);
         this.isEnabled = true;
         UtilsUtils._xl9503(this._xi5685,"");
         this._xi5685.type = TextFieldType.INPUT;
         this._xi5685.stage.focus = this._xi5685;
         this._xi5685.restrict = TextLocalizer.textString;
         this._xi5685.maxChars = TextLocalizer.count14;
         this._xi5685.mouseEnabled = true;
         this._xi5685.addEventListener(KeyboardEvent.KEY_DOWN,this._jf770);
         this._jg7150 = new ControlingtextosUtils(this._xi5685,8);
         this._rc6897.visible = true;
         this._bf12828.visible = false;
      }
      
      public function _vp10797() : Boolean
      {
         var count2:Boolean = false;
         if(!this.isEnabled)
         {
            return false;
         }
         this.isEnabled = false;
         this._xi5685.removeEventListener(KeyboardEvent.KEY_DOWN,this._jf770);
         if(this._jg7150 != null)
         {
            this._jg7150.destroy();
            this._jg7150 = null;
         }
         var count:String = this._xi5685.text;
         if(count != "")
         {
            count = UtilsUtils._bg5268(count);
            if(count != this.textString5)
            {
               this.textString5 = count;
               count2 = true;
            }
         }
         UtilsUtils._xl9503(this._xi5685,this.textString5);
         this.stop();
         return count2;
      }
      
      private function _jf770(param1:KeyboardEvent) : void
      {
         if(param1.charCode != Keyboard.ENTER)
         {
            return;
         }
         param1.preventDefault();
         this._ag7622(this.count);
      }
      
      public function _no3546(param1:String) : void
      {
         this.textString5 = param1;
         UtilsUtils._xl9503(this._xi5685,param1);
      }
      
      override public function stop() : void
      {
         if(this.isEnabled)
         {
            return;
         }
         this.colorTransform.color = this._ts642._sf7808;
         this._qh36.transform.colorTransform = this.colorTransform;
         UtilsUtils._xl9503(this._xi5685,this.textString4);
         this._rc6897.visible = true;
         this._bf12828.visible = false;
      }
      
      override public function stop() : void
      {
         if(this.isEnabled)
         {
            return;
         }
         if(this._qh36 != null)
         {
            this.colorTransform.color = this._ts642._rf5817;
            this._qh36.transform.colorTransform = this.colorTransform;
            UtilsUtils._xl9503(this._xi5685,this.textString5);
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

