package src.tv.boombang.application.popup.components.tutorials
{
   import flash.display.*;
   import src.tv.boombang.commons.*;
   
   public class TutorialsView extends CommonsManager
   {
      
      private var _we2342:MovieClip;
      
      private var _rb12795:String;
      
      public function TutorialsView(param1:String)
      {
         super(null,"");
         this._rb12795 = param1;
      }
      
      public function _pj15434() : void
      {
         _aj13255(this._rb12795);
      }
      
      override protected function _td5422() : void
      {
         dispatchEvent(new CommonsEvents(CommonsEvents._om2683));
      }
      
      public function _wc7355(param1:int) : void
      {
         if(this._we2342)
         {
            removeChild(this._we2342);
            this._we2342 = null;
         }
         this._we2342 = _rc15890._bn15619("Step" + param1) as MovieClip;
         addChild(this._we2342);
      }
      
      override protected function _ys12008() : void
      {
      }
      
      override public function destroy() : void
      {
         if(Boolean(this._we2342) && this.contains(this._we2342))
         {
            removeChild(this._we2342);
         }
         super.destroy();
      }
   }
}

