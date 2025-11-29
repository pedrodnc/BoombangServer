package src.tv.boombang.application.global.gui.components
{
   import flash.display.*;
   import src.config.*;
   import src.tv.boombang.commons.*;
   
   public class _eo12332 extends _sg3635
   {
      
      public static const CENTER:String = "center";
      
      public static const TOP_LEFT:String = "topLeft";
      
      private var _data:Object;
      
      private var _xo6614:MovieClip;
      
      private var _ne4523:MovieClip;
      
      private var _lp7479:_om4028;
      
      private var _pa15303:Number;
      
      private var _wk15856:String;
      
      public function _eo12332(param1:MovieClip, param2:Object, param3:Number, param4:String = null)
      {
         if(param4 == null)
         {
            param4 = CENTER;
         }
         this._data = param2;
         this._xo6614 = param1;
         this._pa15303 = param3;
         this._wk15856 = param4;
         this.addChild(this._xo6614);
         this._ne4523 = this._xo6614.getChildByName("iconImage") as MovieClip;
         if(this._xo6614.getChildByName("titleIco"))
         {
            this._lp7479 = new _om4028(this._xo6614.getChildByName("titleIco") as MovieClip);
         }
         super(new _vh5894(_cc7688._su9470 + this._data._kp2503));
      }
      
      private function _qx2504() : void
      {
         if(this._xo6614.getChildByName("titleIco"))
         {
            this._lp7479.txt = this._data.txt;
         }
      }
      
      override protected function _td5422() : void
      {
         this._rc15890.scaleX = this._pa15303;
         this._rc15890.scaleY = this._pa15303;
         this.align();
         this._qx2504();
      }
      
      private function align() : void
      {
         if(this._wk15856 == CENTER)
         {
            this._ne4523.x = this._xo6614.width / 2 - this._rc15890.width / 2;
            this._ne4523.y = this._xo6614.height / 2 - this._rc15890.height / 2;
         }
         if(this._ne4523)
         {
            this._ne4523.addChild(_rc15890);
         }
      }
      
      override protected function _ys12008() : void
      {
      }
      
      override public function destroy() : void
      {
         this.removeChild(this._xo6614);
         if(_rc15890)
         {
            if(this._ne4523.contains(_rc15890))
            {
               this._ne4523.removeChild(_rc15890);
            }
         }
         super.destroy();
      }
   }
}

