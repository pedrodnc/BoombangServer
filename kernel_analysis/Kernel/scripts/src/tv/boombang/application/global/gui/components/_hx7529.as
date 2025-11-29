package src.tv.boombang.application.global.gui.components
{
   import src.tv.boombang.commons.interfaces.*;
   
   public class _hx7529 implements _jk15536
   {
      
      protected var _content:_xx2086;
      
      protected var _qi2267:Object;
      
      public function _hx7529(param1:Object)
      {
         super();
         this._qi2267 = param1;
      }
      
      public function set content(param1:Array) : void
      {
         this._qi2267.visible = false;
         if(this._content == null)
         {
            this._content = new _xx2086();
         }
         this._content._wt2363(param1);
         this.update();
      }
      
      public function update() : void
      {
         this._qi2267.source = this._content.view;
         this._qi2267.refreshPane();
         this._qi2267.update();
         this._qi2267.visible = true;
      }
      
      public function verticalScrollPosition(param1:Number) : void
      {
         this._qi2267.verticalScrollPosition = this._content._hf4699(param1);
      }
      
      protected function _wp3955() : void
      {
         if(this._content)
         {
            this._content._gk15888();
         }
      }
      
      public function destroy() : void
      {
         this._wp3955();
         this._qi2267 = null;
      }
   }
}

