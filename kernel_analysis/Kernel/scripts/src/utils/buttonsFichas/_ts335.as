package src.utils.buttonsFichas
{
   import flash.display.*;
   import flash.text.*;
   import src.allData.catObjects._uq7753;
   import src.utils.*;
   import src.utils.commonComponents._dr2789;
   import src.utils.showObjects.*;
   
   public class _ts335 extends _dr2789
   {
      
      public static const _jh13574:Number = 1;
      
      public static const _qk12405:Number = 0.3;
      
      protected static const _ud6549:String = "mcCapsula";
      
      protected static const _ln8436:String = "mcContenedorObjeto";
      
      protected static const _kg12560:String = "mcBugMember";
      
      private static const _xg11439:String = "mcFichaMonedaPlata";
      
      private static const _sg6179:String = "mcFichaMonedaOro";
      
      private static const _nr11985:String = "tfPriceText";
      
      private static const _du1443:String = "mcFichaMonedas";
      
      public var _nf12735:uint;
      
      public var _sa14592:uint;
      
      private var _ts9847:MovieClip;
      
      private var _gh4578:MovieClip;
      
      private var _dl3635:MovieClip;
      
      private var _cc15214:Boolean;
      
      private var _sl11700:_uq7753;
      
      private var _hq10834:TextField;
      
      private var _ae1886:String = "";
      
      private var _ch12128:String;
      
      private var _wy11576:MovieClip;
      
      private var _ce6461:uint;
      
      private var _ff329:uint;
      
      private var _ll11627:_ex13074;
      
      private var _gw13414:MovieClip;
      
      private var _as12367:TextField;
      
      private var _fs2129:MovieClip;
      
      private var _fy14962:Boolean;
      
      private var _yc726:uint;
      
      public function _ts335(param1:MovieClip, param2:Boolean, param3:_uq7753, param4:MovieClip, param5:String, param6:Function, param7:uint, param8:uint, param9:uint, param10:Object = null, param11:Boolean = false, param12:Boolean = false)
      {
         this._nf12735 = param7;
         this._sa14592 = param8;
         this._dl3635 = param4;
         this._cc15214 = param2;
         this._sl11700 = param3;
         this._yc726 = param9;
         this._fy14962 = param11;
         super(param1,param6,param5,false,null,null,param10);
         _xv14798.cleanChildsMovieclip(this._gh4578);
         this._hh3422();
         if(this._cc15214)
         {
            if(!this._fy14962)
            {
               this._ae1886 = this._sl11700.name;
               this._ll11627 = new _ex13074(this._gh4578,this._sl11700,param4);
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
         if(this._fy14962)
         {
            if(param12)
            {
               this._fs2129[_sg6179].visible = true;
               this._fs2129[_xg11439].visible = false;
               _yq8362._xl9503(this._fs2129[_sg6179]["tfText"],param5);
            }
            else
            {
               this._fs2129[_xg11439].visible = true;
               this._fs2129[_sg6179].visible = false;
               _yq8362._xl9503(this._fs2129[_xg11439]["tfText"],param5);
            }
            this._fs2129.visible = true;
            _qx2504("");
         }
      }
      
      private function _hh3422() : void
      {
         _pe16126[_kg12560].visible = false;
         if(this._sl11700 != null && Boolean(this._sl11700.member))
         {
            _pe16126[_kg12560].visible = true;
         }
      }
      
      override protected function _nc8386(param1:MovieClip) : void
      {
         super._nc8386(param1);
         this._ts9847 = MovieClip(param1.getChildByName(_ud6549));
         this._gh4578 = MovieClip(param1.getChildByName(_ln8436));
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
            this._gh4578.alpha = _jh13574;
            _xs11571.alpha = _jh13574;
         }
         else
         {
            this._gh4578.alpha = _qk12405;
            _xs11571.alpha = _qk12405;
         }
         _pe16126.enabled = _dy867;
      }
      
      public function _tn9748(param1:String, param2:MovieClip = null, param3:uint = 0, param4:uint = 0) : void
      {
         this._ch12128 = param1;
         this._wy11576 = param2;
         this._ce6461 = param3;
         this._ff329 = param4;
         this._as12367.width = 300;
         _yq8362._bj8346(this._as12367,this._ae1886);
         _xv14798._ts14032(this._as12367,this._yc726);
         _xv14798._ts14032(this._gw13414["line"],this._nf12735);
         _xv14798._ts14032(this._gw13414["arrow"],this._nf12735);
         _xv14798._ts14032(this._gw13414["background"],this._sa14592);
         this._as12367.multiline = false;
         this._as12367.autoSize = TextFieldAutoSize.CENTER;
         this._as12367.width = this._as12367.textWidth + 20;
         this._as12367.x = -Math.round(this._as12367.width * 0.5);
         this._gw13414["line"].width = this._gw13414["background"].width = this._as12367.width + 10;
         this._iv1460();
      }
      
      override public function _ch1514() : void
      {
         if(this._cc15214)
         {
            _xv14798._ts14032(this._ts9847,this._nf12735);
            if(Boolean(this._gw13414) && !this._fy14962)
            {
               this._gw13414.visible = true;
            }
         }
      }
      
      override public function _iv1460() : void
      {
         _xv14798._ts14032(this._ts9847,this._sa14592);
         if(this._cc15214)
         {
            if(Boolean(this._gw13414) && !this._fy14962)
            {
               this._gw13414.visible = false;
            }
         }
      }
   }
}

