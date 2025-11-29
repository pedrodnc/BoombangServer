package src.tv.boombang.application.payments.gui.windows
{
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows._ja3764;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.datatypes.payments._nv12424;
   import src.tv.boombang.core.datatypes.payments._ws12490;
   import src.tv.boombang.library.steps.*;
   
   public class _fw8568 extends _ja3764 implements _jk15536
   {
      
      private var _rv337:_xg1747;
      
      private var _dl14248:_xg1747;
      
      private var _lr2954:_xg1747;
      
      private var _ix2738:_va5249;
      
      private var _il9604:_va5249;
      
      private var _data:_nv12424;
      
      private var _am11822:_ws12490;
      
      private var _url:String;
      
      private var _ko10613:URLVariables;
      
      private var _ia2580:URLRequest;
      
      private var _ck13858:URLRequestMethod;
      
      public function _fw8568(param1:MovieClip, param2:String, param3:_nv12424, param4:_ws12490)
      {
         var _loc5_:int = 0;
         super(param1,param2);
         this._data = param3;
         this._am11822 = param4;
         this._ko10613 = new URLVariables();
         if(this._am11822._df12920.length == this._am11822._yf6551.length)
         {
            _loc5_ = 0;
            while(_loc5_ < this._am11822._df12920.length)
            {
               this._ko10613[param4._df12920[_loc5_]] = param4._yf6551[_loc5_];
               _loc5_++;
            }
         }
         this._ia2580 = new URLRequest(param4.url);
         this._ia2580.data = this._ko10613;
         this._ia2580.method = param4.method;
         if(_xo6614["description_0"])
         {
            this._rv337 = new _xg1747(_xo6614["description_0"] as MovieClip);
            this._rv337._oi4498(385);
            this._rv337.txt = "window.payments.externalDescription_0";
            this._rv337._bu2312();
         }
         if(_xo6614["description_1"])
         {
            this._dl14248 = new _xg1747(_xo6614["description_1"] as MovieClip);
            this._dl14248._oi4498(385);
            this._dl14248.txt = "window.payments.externalDescription_1";
            this._dl14248.color = 86663;
            this._dl14248._bu2312();
         }
         if(_xo6614["description_2"])
         {
            this._lr2954 = new _xg1747(_xo6614["description_2"] as MovieClip);
            this._lr2954._oi4498(385);
            this._lr2954.txt = "window.payments.externalDescription_2";
            this._lr2954._bu2312();
         }
         if(_xo6614["openPopUpButton"])
         {
            this._ix2738 = new _va5249(_xo6614["openPopUpButton"],"window.payments.openPopUpBtn");
            this._ix2738.addEventListener(MouseEvent.CLICK,this._yl1886,false,0,true);
            this._ix2738._vr14785 = 86663;
            _qi5262.push(this._ix2738);
         }
         if(_xo6614["backButton"])
         {
            this._il9604 = new _va5249(_xo6614["backButton"],"button.back");
            this._il9604.addEventListener(MouseEvent.CLICK,this._hs3444,false,0,true);
            this._il9604._vr14785 = 86663;
            this._il9604._ou4931 = false;
            _qi5262.push(this._il9604);
            this._il9604.x = _vr11636.width - this._il9604.width - 7;
         }
         this._yl1886();
      }
      
      private function _yl1886(param1:MouseEvent = null) : void
      {
         try
         {
            navigateToURL(this._ia2580,"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      private function _hs3444(param1:MouseEvent) : void
      {
         _nk11935(_pm4313._vr15134,this._data);
      }
      
      override public function destroy() : void
      {
         this._ix2738.removeEventListener(MouseEvent.CLICK,this._yl1886);
         this._il9604.removeEventListener(MouseEvent.CLICK,this._hs3444);
         removeChild(_xo6614);
         _xo6614 = null;
         super.destroy();
      }
   }
}

