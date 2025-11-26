package src.utils.buttonsFichas
{
   import flash.display.*;
   import flash.text.*;
   import src.allData.catObjects.CatobjectsController;
   import src.utils.*;
   import src.utils.commonComponents.CommoncomponentsView;
   import src.utils.showObjects.*;
   
   public class ButtonsfichasModel extends CommoncomponentsView
   {
      
      public static const count:Number = 1;
      
      public static const count:Number = 0.3;
      
      protected static const textString:String = "mcCapsula";
      
      protected static const textString1:String = "mcContenedorObjeto";
      
      protected static const textString2:String = "mcBugMember";
      
      private static const textString3:String = "mcFichaMonedaPlata";
      
      private static const textString4:String = "mcFichaMonedaOro";
      
      private static const textString5:String = "tfPriceText";
      
      private static const textString6:String = "mcFichaMonedas";
      
      public var _nf12735:uint;
      
      public var _sa14592:uint;
      
      private var _ts9847:MovieClip;
      
      private var _gh4578:MovieClip;
      
      private var _dl3635:MovieClip;
      
      private var isEnabled:Boolean;
      
      private var _sl11700:CatobjectsController;
      
      private var _hq10834:TextField;
      
      private var textString7:String = "";
      
      private var textString8:String;
      
      private var _wy11576:MovieClip;
      
      private var _ce6461:uint;
      
      private var _ff329:uint;
      
      private var _ll11627:ShowobjectsController;
      
      private var _gw13414:MovieClip;
      
      private var _as12367:TextField;
      
      private var _fs2129:MovieClip;
      
      private var isEnabled1:Boolean;
      
      private var _yc726:uint;
      
      public function ButtonsfichasModel(param1:MovieClip, param2:Boolean, param3:CatobjectsController, param4:MovieClip, param5:String, param6:Function, param7:uint, param8:uint, param9:uint, param10:Object = null, param11:Boolean = false, param12:Boolean = false)
      {
         this._nf12735 = param7;
         this._sa14592 = param8;
         this._dl3635 = param4;
         this.isEnabled = param2;
         this._sl11700 = param3;
         this._yc726 = param9;
         this.isEnabled1 = param11;
         super(param1,param6,param5,false,null,null,param10);
         StringUtils.cleanChildsMovieclip(this._gh4578);
         this._hh3422();
         if(this.isEnabled)
         {
            if(!this.isEnabled1)
            {
               this.textString7 = this._sl11700.name;
               this._ll11627 = new ShowobjectsController(this._gh4578,this._sl11700,param4);
               this._ll11627.show();
            }
         }
         else
         {
            param1.buttonMode = false;
         }
         this._gw13414 = param1["tooltip"];
         this._as12367 = this._gw13414["title"]["txt"];
         this._gw13414.visible = false;
         this._fs2129 = param1["coin"];
         this._fs2129.visible = false;
         if(this.isEnabled1)
         {
            if(param12)
            {
               this._fs2129[textString4].visible = true;
               this._fs2129[textString3].visible = false;
               UtilsUtils._xl9503(this._fs2129[textString4]["tfText"],param5);
            }
            else
            {
               this._fs2129[textString3].visible = true;
               this._fs2129[textString4].visible = false;
               UtilsUtils._xl9503(this._fs2129[textString3]["tfText"],param5);
            }
            this._fs2129.visible = true;
            _qx2504("");
         }
      }
      
      private function _hh3422() : void
      {
         _pe16126[textString2].visible = false;
         if(this._sl11700 != null && Boolean(this._sl11700.member))
         {
            _pe16126[textString2].visible = true;
         }
      }
      
      override protected function _nc8386(param1:MovieClip) : void
      {
         super._nc8386(param1);
         this._ts9847 = MovieClip(param1.getChildByName(textString));
         this._gh4578 = MovieClip(param1.getChildByName(textString1));
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this._ts9847 = null;
         this._gh4578 = null;
         this._sl11700 = null;
         this._dl3635 = null;
         this._hq10834 = null;
         this._wy11576 = null;
         if(this._ll11627 != null)
         {
            this._ll11627.destroy();
            this._ll11627 = null;
         }
      }
      
      override public function set _dy867(param1:Boolean) : void
      {
         if(param1)
         {
            this._gh4578.alpha = count;
            _xs11571.alpha = count;
         }
         else
         {
            this._gh4578.alpha = count;
            _xs11571.alpha = count;
         }
         _pe16126.enabled = _dy867;
      }
      
      public function _tn9748(param1:String, param2:MovieClip = null, param3:uint = 0, param4:uint = 0) : void
      {
         this.textString8 = param1;
         this._wy11576 = param2;
         this._ce6461 = param3;
         this._ff329 = param4;
         this._as12367.width = 300;
         UtilsUtils._bj8346(this._as12367,this.textString7);
         StringUtils._ts14032(this._as12367,this._yc726);
         StringUtils._ts14032(this._gw13414["line"],this._nf12735);
         StringUtils._ts14032(this._gw13414["arrow"],this._nf12735);
         StringUtils._ts14032(this._gw13414["background"],this._sa14592);
         this._as12367.multiline = false;
         this._as12367.autoSize = TextFieldAutoSize.CENTER;
         this._as12367.width = this._as12367.textWidth + 20;
         this._as12367.x = -Math.round(this._as12367.width * 0.5);
         this._gw13414["line"].width = this._gw13414["background"].width = this._as12367.width + 10;
         this.stop();
      }
      
      override public function stop() : void
      {
         if(this.isEnabled)
         {
            StringUtils._ts14032(this._ts9847,this._nf12735);
            if(Boolean(this._gw13414) && !this.isEnabled1)
            {
               this._gw13414.visible = true;
            }
         }
      }
      
      override public function stop() : void
      {
         StringUtils._ts14032(this._ts9847,this._sa14592);
         if(this.isEnabled)
         {
            if(Boolean(this._gw13414) && !this.isEnabled1)
            {
               this._gw13414.visible = false;
            }
         }
      }
   }
}

