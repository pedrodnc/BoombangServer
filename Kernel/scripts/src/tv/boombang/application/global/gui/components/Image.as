package src.tv.boombang.application.global.gui.components
{
   import src.tv.boombang.commons._sg3635;
   import src.tv.boombang.commons._vh5894;
   
   public class Image extends _sg3635
   {
      
      private var _ii6403:_wq11080;
      
      public function Image(param1:_vh5894 = null, param2:String = "")
      {
         this._ii6403 = new _wq11080();
         addChild(this._ii6403);
         super(param1,param2);
      }
      
      override protected function _td5422() : void
      {
         if(this._ii6403 != null)
         {
            this._ii6403.destroy();
            removeChild(this._ii6403);
            this._ii6403 = null;
         }
         addChild(_asset);
      }
      
      override protected function _ys12008() : void
      {
      }
   }
}

