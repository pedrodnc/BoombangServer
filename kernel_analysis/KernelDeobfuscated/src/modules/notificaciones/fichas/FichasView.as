package src.modules.notificaciones.fichas
{
   import flash.display.*;
   import flash.text.*;
   import flash.utils.Timer;
   import src.*;
   import src.modules.notificaciones.NotificacionesController;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class FichasView extends FichasController
   {
      
      public static const textString:String = "getAsset";
      
      public static const count:int = 3;
      
      public static const textString1:String = "delivered";
      
      public static const textString2:String = "undelivered";
      
      private var items:Array;
      
      private var items1:Array;
      
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
      
      private var _wj10250:CommoncomponentsController;
      
      private var _ng11602:CommoncomponentsController;
      
      private var _eb14412:CommoncomponentsController;
      
      private var _timer:Timer;
      
      private var count1:int;
      
      private var count2:int;
      
      private var items2:Array;
      
      private var isEnabled:Boolean;
      
      private var count3:Number;
      
      public function FichasView(param1:FichasModel, param2:MovieClip, param3:NotificacionesController)
      {
         this.items = new Array("GiftBig1MC","GiftBig2MC","GiftBig3MC","GiftBig4MC","GiftBig5MC","GiftBig6MC","GiftBig7MC","GiftBig8MC","GiftBig9MC","GiftBig10MC","GiftBig11MC","GiftBig12MC","GiftBig13MC","GiftBig14MC","GiftBig15MC","GiftBig16MC","GiftBig17MC","GiftBig18MC","GiftBig19MC","GiftBig20MC","GiftBig21MC","GiftBig22MC","GiftBig23MC","GiftBig24MC","GiftBig25MC");
         this.items1 = new Array("GiftSmall1MC","GiftSmall2MC","GiftSmall3MC","GiftSmall4MC","GiftSmall5MC","GiftSmall6MC","GiftSmall7MC","GiftSmall8MC","GiftSmall9MC","GiftSmall10MC","GiftSmall11MC","GiftSmall12MC","GiftSmall13MC","GiftSmall14MC","GiftSmall15MC","GiftSmall16MC","GiftSmall17MC","GiftSmall18MC","GiftSmall19MC","GiftSmall20MC","GiftSmall21MC","GiftSmall22MC","GiftSmall23MC","GiftSmall24MC","GiftSmall25MC");
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         _ef4896 = _pu6969[textString](textString2) as MovieClip;
         this._bl8189 = _ef4896.getChildByName("mcModuloFicha") as MovieClip;
         this._fx2953 = _ef4896.getChildByName("mcModuloRegalo") as MovieClip;
         this._og13191 = this._bl8189.getChildByName("mcFichaGiftSmall1") as MovieClip;
         this._mq5263 = this._bl8189.getChildByName("mcFichaGiftSmall2") as MovieClip;
         this._ft3116 = this._bl8189.getChildByName("mcFichaGiftSmall3") as MovieClip;
         this.items2 = new Array(this._og13191,this._mq5263,this._ft3116);
         this._kn7372 = this._bl8189.getChildByName("mcCountDown") as MovieClip;
         var count2:MovieClip = this._bl8189.getChildByName("btnClose") as MovieClip;
         this._wj10250 = new CommoncomponentsController(count2,this.hide);
         var count:MovieClip = this._bl8189.getChildByName("mcArrowNext") as MovieClip;
         this._ng11602 = new CommoncomponentsController(count,this._lb12990);
         var count3:MovieClip = this._bl8189.getChildByName("mcArrowPrev") as MovieClip;
         this._eb14412 = new CommoncomponentsController(count3,this._ny7532);
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
         this.isEnabled = Boolean(int(_data.data[0]));
         this.count1 = int(_data.data[1]);
         this.count2 = this.count1;
         this.count3 = _tb13716._tk5014;
         this._lf1285();
         this._tn4763();
         if(!this.isEnabled)
         {
            this._fx2953.visible = false;
         }
         _op8849();
         this.show();
      }
      
      override public function destroy() : void
      {
         move();
         this._wj10250.destroy();
         this._ng11602.destroy();
         this._eb14412.destroy();
      }
      
      override protected function show() : void
      {
         var count2:int = 0;
         var count:int = 0;
         switch(_tb13716._dn11747)
         {
            case ApplicationMain.count7:
               count2 = 135;
               count = 5;
               break;
            case ApplicationMain.count5:
               count2 = 345;
               count = 5;
         }
         _ef4896.x = count2;
         _ef4896.y = count;
         super.show();
      }
      
      override protected function loop() : void
      {
         this._yv5100();
      }
      
      private function _yv5100() : void
      {
         this.count3 = _tb13716._tk5014;
         if(this.count3 < 0)
         {
            this._by4651();
            return;
         }
         var count2:String = DateUtils.getString(this.count3,3);
         this._la8008.text = count2;
      }
      
      private function _by4651() : void
      {
         move();
         this._kn7372.visible = false;
         this._ha6562.visible = false;
      }
      
      private function nextPage() : void
      {
         ++this.count2;
         if(this.count2 > this.items1.length - count + 1)
         {
            this.count2 = this.items1.length - count + 1;
         }
         this._lf1285();
      }
      
      private function _lo12392() : void
      {
         --this.count2;
         if(this.count2 < 1)
         {
            this.count2 = 1;
         }
         this._lf1285();
      }
      
      private function _lf1285() : void
      {
         var count2:Array = null;
         var count:MovieClip = null;
         var count3:MovieClip = null;
         var count1:int = 0;
         var items:int = 0;
         var count2:int = int(this.count2);
         var count7:int = this.count2 - 1;
         count2 = this.items1.slice(count7,count7 + count);
         while(items < count2.length)
         {
            count = this.items2[items];
            count3 = _pu6969[textString](count2[items]) as MovieClip;
            count3.width = 84;
            count3.height = 88;
            count1 = this.count2 + items;
            count.txtNumber.text = String(count1);
            StringUtils.cleanChildsMovieclip(count.mcGiftSmallContainer);
            count.mcGiftSmallContainer.addChild(count3);
            if(count1 <= this.count1)
            {
               count.gotoAndStop(textString1);
            }
            else
            {
               count.gotoAndStop(textString2);
            }
            items++;
         }
      }
      
      private function _tn4763() : void
      {
         this._gl14814.text = _ab7564._dx4931[this.count1 - 1];
         var count2:MovieClip = this._fx2953.getChildByName("mcContainerGiftBig") as MovieClip;
         var count:MovieClip = _pu6969[textString](this.items[this.count1 - 1]) as MovieClip;
         StringUtils.cleanChildsMovieclip(count2);
         count2.addChild(count);
      }
      
      private function hide() : void
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

