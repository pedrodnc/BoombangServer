package src.modules.interfaz.fichaKeko.booble
{
   import flash.display.*;
   import flash.geom.*;
   import src.modules.interfaz.fichaKeko.FichakekoView;
   import src.utils.commonComponents.CommoncomponentsView;
   
   public class BoobleView extends CommoncomponentsView
   {
      
      private static const textString:String = "mcPastilla";
      
      private var isEnabled:Boolean;
      
      private var _qh36:MovieClip;
      
      private var _ts642:FichakekoView;
      
      protected var colorTransform:ColorTransform;
      
      public function BoobleView(param1:MovieClip, param2:Function, param3:String, param4:FichakekoView)
      {
         this.colorTransform = new ColorTransform();
         this._qh36 = MovieClip(param1.getChildByName(textString));
         this._ts642 = param4;
         this.isEnabled = false;
         super(param1,param2,param3);
      }
      
      public function _an13244() : Point
      {
         return new Point(_pe16126.x,_pe16126.y);
      }
      
      public function _iq12946() : Boolean
      {
         var count2:int = _pe16126.stage.mouseX;
         var count:int = _pe16126.stage.mouseY;
         var count3:Point = _pe16126.parent.localToGlobal(new Point(_pe16126.x,_pe16126.y));
         if(count2 >= count3.x && count2 <= count3.x + _pe16126.width && count >= count3.y && count <= count3.y + _pe16126.height)
         {
            return true;
         }
         return false;
      }
      
      override public function stop() : void
      {
         this.isEnabled = true;
         this.colorTransform.color = 16711680;
         this._qh36.transform.colorTransform = this.colorTransform;
      }
      
      override public function stop() : void
      {
         this.isEnabled = false;
         this.colorTransform.color = this._ts642._sf7808;
         this._qh36.transform.colorTransform = this.colorTransform;
      }
   }
}

