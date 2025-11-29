package src.modules.login
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import src.*;
   
   public class _le12305
   {
      
      private static const _ii14844:Number = 0.1;
      
      public static const _cy6676:String = "murcielago" + int(Math.random() * 3 + 1) + ".swf";
      
      private var _mm10410:MovieClip;
      
      private var distancia:Point;
      
      public function _le12305(param1:MovieClip)
      {
         this.distancia = new Point(5,0);
         super();
         if(param1 == null)
         {
            return;
         }
         this._mm10410 = param1.getChildByName("mcObject") as MovieClip;
         _xw1367.getInstance()._uc3178(this._mm10410,_xw1367._wa4051);
         this._mm10410.mouseChildren = false;
         this._mm10410.mouseEnabled = false;
         this._mm10410.addEventListener(Event.ENTER_FRAME,this.loop);
         this.distancia.y = -param1.height / 2;
      }
      
      public function destroy() : void
      {
         if(this._mm10410 == null)
         {
            return;
         }
         _xw1367.getInstance()._na10792(this._mm10410,_xw1367._wa4051);
         this._mm10410.removeEventListener(Event.ENTER_FRAME,this.loop);
         this._mm10410 = null;
      }
      
      private function loop(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Point = new Point(this._mm10410.parent.mouseX + this.distancia.x,this._mm10410.parent.mouseY + this.distancia.y);
         _loc2_ = _loc3_.x - this._mm10410.x;
         var _loc4_:Number = _loc3_.y - this._mm10410.y;
         this._mm10410.x += _loc2_ * _ii14844;
         this._mm10410.y += _loc4_ * _ii14844;
         if(_loc2_ > 0)
         {
            this._mm10410.scaleX = -1;
         }
         else
         {
            this._mm10410.scaleX = 1;
         }
      }
   }
}

