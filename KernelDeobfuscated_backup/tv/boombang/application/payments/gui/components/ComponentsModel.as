package src.tv.boombang.application.payments.gui.components
{
   import flash.display.*;
   import src.allData.catObjects.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.datatypes.payments._eb3747;
   
   public class _yb1551 extends MovieClip
   {
      
      private var _xo6614:MovieClip;
      
      private var _cy12564:MovieClip;
      
      private var _ye750:_xg1747;
      
      private var _tf845:_om4028;
      
      private var _lu1671:_eo12332;
      
      private var _xm9362:MovieClip;
      
      private var _wj9987:MovieClip;
      
      private var _data:_eb3747;
      
      public function _yb1551(param1:MovieClip)
      {
         super();
         this._xo6614 = param1;
         this._xo6614.visible = false;
         this._ye750 = new _xg1747(this._xo6614["description"] as MovieClip);
         this._wj9987 = this._xo6614["coinsPromotion"] as MovieClip;
         this._wj9987.visible = false;
      }
      
      public function setData(param1:_eb3747) : void
      {
         var _loc2_:_uq7753 = null;
         var _loc3_:Object = null;
         this._data = param1;
         if(!isNaN(this._data._ds9766))
         {
            _loc2_ = _dp11732.getInstance()._ms14382(this._data._ds9766);
            _loc3_ = new Object();
            _loc3_._kp2503 = _loc2_._ky6447;
            this._lu1671 = new _eo12332(this._xo6614["imageContainer"] as MovieClip,_loc3_,0.75);
            this._wj9987.visible = false;
            this._xo6614.addChild(this._lu1671);
         }
         else
         {
            this._wj9987.visible = true;
         }
         if(this._data._we13394 > 1 && this._data._we13394 < 2)
         {
            this._ye750.color = 16776960;
            this._ye750.txt = _fg1060._mn8930._ad13455("window.payments.promoPercent",this._data._we13394 * 100 - 100);
         }
         else if(this._data._we13394 >= 2)
         {
            this._ye750.color = 16776960;
            this._ye750.txt = _fg1060._mn8930._ad13455("window.payments.promoMultiplier",this._data._we13394);
         }
         else
         {
            this._ye750.txt = _fg1060._mn8930._ad13455("window.payments.promoGift",_loc2_.name);
         }
         this._ye750._oi4498(230);
         this._ye750._bu2312();
         this._xo6614.visible = true;
      }
      
      private function reset() : void
      {
         if(this._lu1671)
         {
            this._lu1671.destroy();
            this._lu1671 = null;
         }
      }
      
      public function destroy() : void
      {
         this.reset();
         this._ye750.destroy();
         this._tf845.destroy();
      }
   }
}

