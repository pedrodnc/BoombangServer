package src.modules.interfaz.fichaKeko.booble
{
   import flash.display.*;
   import flash.geom.*;
   import src.modules.interfaz.fichaKeko.FichakekoView;
   import src.utils.commonComponents.CommoncomponentsView;
   
   public class BoobleView extends CommoncomponentsView
   {
      
      private static const _ac11918:String = "mcPastilla";
      
      private var _vj13510:Boolean;
      
      private var _qh36:MovieClip;
      
      private var _ts642:FichakekoView;
      
      protected var colorTransform:ColorTransform;
      
      public function BoobleView(param1:MovieClip, param2:Function, param3:String, param4:FichakekoView)
      {
         this.colorTransform = new ColorTransform();
         this._qh36 = MovieClip(param1.getChildByName(_ac11918));
         this._ts642 = param4;
         this._vj13510 = false;
         super(param1,param2,param3);
      }
      
      public function _an13244() : Point
      {
         return new Point(_pe16126.x,_pe16126.y);
      }
      
      public function _iq12946() : Boolean
      {
         var _loc1_:int = _pe16126.stage.mouseX;
         var _loc2_:int = _pe16126.stage.mouseY;
         var _loc3_:Point = _pe16126.parent.localToGlobal(new Point(_pe16126.x,_pe16126.y));
         if(_loc1_ >= _loc3_.x && _loc1_ <= _loc3_.x + _pe16126.width && _loc2_ >= _loc3_.y && _loc2_ <= _loc3_.y + _pe16126.height)
         {
            return true;
         }
         return false;
      }
      
      override public function _ch1514() : void
      {
         this._vj13510 = true;
         this.colorTransform.color = 16711680;
         this._qh36.transform.colorTransform = this.colorTransform;
      }
      
      override public function _iv1460() : void
      {
         this._vj13510 = false;
         this.colorTransform.color = this._ts642._sf7808;
         this._qh36.transform.colorTransform = this.colorTransform;
      }
   }
}

