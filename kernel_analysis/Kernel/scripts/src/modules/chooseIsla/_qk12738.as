package src.modules.chooseIsla
{
   import flash.display.MovieClip;
   import flash.geom.*;
   import src.person._um8624;
   
   public class _qk12738
   {
      
      private var _nx14400:MovieClip;
      
      public function _qk12738(param1:MovieClip, param2:_um8624, param3:Number, param4:Number)
      {
         super();
         this._nx14400 = param1;
         param1.mouseChildren = false;
         param1.mouseEnabled = false;
         param1.x = param3;
         param1.y = param4;
         this._kl16116(param2);
      }
      
      public function _kl16116(param1:_um8624) : void
      {
         if(param1 != null)
         {
            this.setColor(param1);
            this._nx14400.gotoAndStop(param1._jn11596 + 1);
         }
         else
         {
            this._nx14400.gotoAndStop(1);
         }
      }
      
      public function destroy() : void
      {
         if(this._nx14400.parent != null)
         {
            this._nx14400.parent.removeChild(this._nx14400);
         }
         this._nx14400 = null;
      }
      
      private function _en7153(param1:uint) : ColorTransform
      {
         var _loc2_:ColorTransform = new ColorTransform();
         _loc2_.color = param1;
         return _loc2_;
      }
      
      private function setColor(param1:_um8624) : void
      {
         this._nx14400["colorTrans1"] = this._en7153(param1.colors.getColor(0));
         this._nx14400["colorTrans2"] = this._en7153(param1.colors.getColor(1));
         this._nx14400["colorTrans3"] = this._en7153(param1.colors.getColor(2));
         this._nx14400["colorTrans4"] = this._en7153(param1.colors.getColor(3));
         this._nx14400["colorTrans5"] = this._en7153(param1.colors.getColor(4));
         this._nx14400["colorTrans6"] = this._en7153(param1.colors.getColor(5));
         this._nx14400["colorTrans7"] = this._en7153(param1.colors.getColor(6));
         this._nx14400["colorTrans8"] = this._en7153(param1.colors.getColor(7));
         this._nx14400["colorTrans9"] = this._en7153(param1.colors.getColor(8));
      }
      
      public function _hu12389() : void
      {
         if(this._nx14400 != null)
         {
            this._nx14400.visible = false;
         }
      }
      
      public function _db5584() : void
      {
         if(this._nx14400 != null)
         {
            this._nx14400.visible = true;
         }
      }
   }
}

