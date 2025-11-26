package src.modules.notificaciones.fichas
{
   import flash.display.*;
   import flash.text.*;
   import flash.utils.Timer;
   import src.*;
   import src.modules.notificaciones._uv13537;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _pl8214 extends _je4126
   {
      
      public static const _hu10654:String = "getAsset";
      
      public static const _nk9113:int = 3;
      
      public static const _gg7892:String = "delivered";
      
      public static const _qj12074:String = "undelivered";
      
      private var _ui9850:Array;
      
      private var _uk10206:Array;
      
      private var _bl8189:MovieClip;
      
      private var _fx2953:MovieClip;
      
      private var _og13191:MovieClip;
      
      private var _mq5263:MovieClip;
      
      private var _ft3116:MovieClip;
      
      private var _kn7372:MovieClip;
      
      private var _la8008:TextField;
      
      private var _gl14814:TextField;
      
      private var _vo12562:TextField;
      
      private var _kw9845:TextField;
      
      private var _de1082:TextField;
      
      private var _ad10252:TextField;
      
      private var _fe911:TextField;
      
      private var _gn3468:TextField;
      
      private var _ha6562:TextField;
      
      private var _wj10250:_kg183;
      
      private var _ng11602:_kg183;
      
      private var _eb14412:_kg183;
      
      private var _timer:Timer;
      
      private var _vw11850:int;
      
      private var _ng7471:int;
      
      private var _pc6894:Array;
      
      private var _vt2776:Boolean;
      
      private var _vp5700:Number;
      
      public function _pl8214(param1:_mr880, param2:MovieClip, param3:_uv13537)
      {
         this._ui9850 = new Array("GiftBig1MC","GiftBig2MC","GiftBig3MC","GiftBig4MC","GiftBig5MC","GiftBig6MC","GiftBig7MC","GiftBig8MC","GiftBig9MC","GiftBig10MC","GiftBig11MC","GiftBig12MC","GiftBig13MC","GiftBig14MC","GiftBig15MC","GiftBig16MC","GiftBig17MC","GiftBig18MC","GiftBig19MC","GiftBig20MC","GiftBig21MC","GiftBig22MC","GiftBig23MC","GiftBig24MC","GiftBig25MC");
         this._uk10206 = new Array("GiftSmall1MC","GiftSmall2MC","GiftSmall3MC","GiftSmall4MC","GiftSmall5MC","GiftSmall6MC","GiftSmall7MC","GiftSmall8MC","GiftSmall9MC","GiftSmall10MC","GiftSmall11MC","GiftSmall12MC","GiftSmall13MC","GiftSmall14MC","GiftSmall15MC","GiftSmall16MC","GiftSmall17MC","GiftSmall18MC","GiftSmall19MC","GiftSmall20MC","GiftSmall21MC","GiftSmall22MC","GiftSmall23MC","GiftSmall24MC","GiftSmall25MC");
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         _ef4896 = _pu6969[_hu10654](_rn11459) as MovieClip;
         this._bl8189 = _ef4896.getChildByName("mcModuloFicha") as MovieClip;
         this._fx2953 = _ef4896.getChildByName("mcModuloRegalo") as MovieClip;
         this._og13191 = this._bl8189.getChildByName("mcFichaGiftSmall1") as MovieClip;
         this._mq5263 = this._bl8189.getChildByName("mcFichaGiftSmall2") as MovieClip;
         this._ft3116 = this._bl8189.getChildByName("mcFichaGiftSmall3") as MovieClip;
         this._pc6894 = new Array(this._og13191,this._mq5263,this._ft3116);
         this._kn7372 = this._bl8189.getChildByName("mcCountDown") as MovieClip;
         var _loc1_:MovieClip = this._bl8189.getChildByName("btnClose") as MovieClip;
         this._wj10250 = new _kg183(_loc1_,this._bf1371);
         var _loc2_:MovieClip = this._bl8189.getChildByName("mcArrowNext") as MovieClip;
         this._ng11602 = new _kg183(_loc2_,this._lb12990);
         var _loc3_:MovieClip = this._bl8189.getChildByName("mcArrowPrev") as MovieClip;
         this._eb14412 = new _kg183(_loc3_,this._ny7532);
         this._gl14814 = this._fx2953.getChildByName("txtGiftTitle") as TextField;
         this._la8008 = this._kn7372.getChildByName("txtCountDown") as TextField;
         this._vo12562 = this._bl8189.getChildByName("txtFichaTitle") as TextField;
         this._kw9845 = this._bl8189.getChildByName("txtContent") as TextField;
         this._de1082 = this._bl8189.getChildByName("txtBubble1") as TextField;
         this._ad10252 = this._bl8189.getChildByName("txtBubble2") as TextField;
         this._fe911 = this._bl8189.getChildByName("txtBubble3") as TextField;
         this._gn3468 = this._bl8189.getChildByName("txtBubble4") as TextField;
         this._ha6562 = this._bl8189.getChildByName("txtNextBonusTime") as TextField;
         this._vo12562.text = _ab7564._nu6666;
         this._kw9845.text = _ab7564._rd7434;
         this._de1082.text = _ab7564._cg588;
         this._ad10252.text = _ab7564._hi7754;
         this._fe911.text = _ab7564._sy11760;
         this._gn3468.htmlText = _ab7564._ri13350.split("|").join("<br/>");
         this._ha6562.htmlText = _ab7564._lf7030.split("|").join("<br/>");
         this._vt2776 = Boolean(int(_data.data[0]));
         this._vw11850 = int(_data.data[1]);
         this._ng7471 = this._vw11850;
         this._vp5700 = _tb13716._tk5014;
         this._lf1285();
         this._tn4763();
         if(!this._vt2776)
         {
            this._fx2953.visible = false;
         }
         _op8849();
         this.show();
      }
      
      override public function destroy() : void
      {
         _af13974();
         this._wj10250.destroy();
         this._ng11602.destroy();
         this._eb14412.destroy();
      }
      
      override protected function show() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         switch(_tb13716._dn11747)
         {
            case _wc15106._vg13561:
               _loc1_ = 135;
               _loc2_ = 5;
               break;
            case _wc15106._wc8517:
               _loc1_ = 345;
               _loc2_ = 5;
         }
         _ef4896.x = _loc1_;
         _ef4896.y = _loc2_;
         super.show();
      }
      
      override protected function loop() : void
      {
         this._yv5100();
      }
      
      private function _yv5100() : void
      {
         this._vp5700 = _tb13716._tk5014;
         if(this._vp5700 < 0)
         {
            this._by4651();
            return;
         }
         var _loc1_:String = _kg12861._po2157(this._vp5700,3);
         this._la8008.text = _loc1_;
      }
      
      private function _by4651() : void
      {
         _af13974();
         this._kn7372.visible = false;
         this._ha6562.visible = false;
      }
      
      private function nextPage() : void
      {
         ++this._ng7471;
         if(this._ng7471 > this._uk10206.length - _nk9113 + 1)
         {
            this._ng7471 = this._uk10206.length - _nk9113 + 1;
         }
         this._lf1285();
      }
      
      private function _lo12392() : void
      {
         --this._ng7471;
         if(this._ng7471 < 1)
         {
            this._ng7471 = 1;
         }
         this._lf1285();
      }
      
      private function _lf1285() : void
      {
         var _loc1_:Array = null;
         var _loc2_:MovieClip = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         var _loc7_:int = 0;
         var _loc5_:int = int(this._ng7471);
         var _loc6_:int = this._ng7471 - 1;
         _loc1_ = this._uk10206.slice(_loc6_,_loc6_ + _nk9113);
         while(_loc7_ < _loc1_.length)
         {
            _loc2_ = this._pc6894[_loc7_];
            _loc3_ = _pu6969[_hu10654](_loc1_[_loc7_]) as MovieClip;
            _loc3_.width = 84;
            _loc3_.height = 88;
            _loc4_ = this._ng7471 + _loc7_;
            _loc2_.txtNumber.text = String(_loc4_);
            _xv14798.cleanChildsMovieclip(_loc2_.mcGiftSmallContainer);
            _loc2_.mcGiftSmallContainer.addChild(_loc3_);
            if(_loc4_ <= this._vw11850)
            {
               _loc2_.gotoAndStop(_gg7892);
            }
            else
            {
               _loc2_.gotoAndStop(_qj12074);
            }
            _loc7_++;
         }
      }
      
      private function _tn4763() : void
      {
         this._gl14814.text = _ab7564._dx4931[this._vw11850 - 1];
         var _loc1_:MovieClip = this._fx2953.getChildByName("mcContainerGiftBig") as MovieClip;
         var _loc2_:MovieClip = _pu6969[_hu10654](this._ui9850[this._vw11850 - 1]) as MovieClip;
         _xv14798.cleanChildsMovieclip(_loc1_);
         _loc1_.addChild(_loc2_);
      }
      
      private function _bf1371() : void
      {
         close();
      }
      
      private function _lb12990() : void
      {
         this.nextPage();
      }
      
      private function _ny7532() : void
      {
         this._lo12392();
      }
   }
}

