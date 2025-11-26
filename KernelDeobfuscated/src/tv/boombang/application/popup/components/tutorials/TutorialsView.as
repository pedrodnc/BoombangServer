package src.tv.boombang.application.popup.components.tutorials
{
   import flash.display.*;
   import src.tv.boombang.commons.*;
   
   public class TutorialsView extends CommonsManager
   {
      
      private var _we2342:MovieClip;
      
      private var textString:String;
      
      public function TutorialsView(param1:String)
      {
         super(null,"");
         this.textString = param1;
      }
      
      public function _pj15434() : void
      {
         loadResource(this.textString);
      }
      
      override protected function _td5422() : void
      {
         dispatchEvent(new CommonsEvents(CommonsEvents.urlString2));
      }
      
      public function move(param1:int) : void
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

