package src.modules.interfaz.baseChat
{
   import flash.display.*;
   import src.*;
   import src.config.*;
   
   public class _gy10451
   {
      
      private var _jn8089:Boolean;
      
      private var _qn11826:MovieClip;
      
      private var _rd9728:MovieClip;
      
      public function _gy10451(param1:MovieClip)
      {
         super();
         this._rd9728 = param1;
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:BitmapData = new BitmapData(_cc7688._wc13865,_cc7688._kl10731,true,39168);
         _loc1_.noise(2,1,80,8,false);
         var _loc2_:Bitmap = new Bitmap(_loc1_);
         this._qn11826 = new MovieClip();
         this._qn11826.blendMode = BlendMode.MULTIPLY;
         var _loc3_:MovieClip = new MovieClip();
         _loc3_.graphics.beginFill(43520,1);
         _loc3_.graphics.drawRect(0,0,_cc7688._wc13865,_cc7688._kl10731);
         _loc3_.graphics.endFill();
         this._qn11826.addChild(_loc3_);
         this._qn11826.addChild(_loc2_);
         this._jn8089 = false;
      }
      
      public function _up14319() : void
      {
         if(!this._jn8089)
         {
            this._jn8089 = true;
            _xw1367.getInstance()._uc3178(this._qn11826,_xw1367._co9468);
         }
         else
         {
            this._ab6208();
         }
      }
      
      public function _ab6208() : void
      {
         if(this._jn8089)
         {
            this._jn8089 = false;
            _xw1367.getInstance()._na10792(this._rd9728,_xw1367._co9468);
            _xw1367.getInstance()._na10792(this._qn11826,_xw1367._co9468);
         }
      }
      
      public function destroy() : void
      {
         this._ab6208();
      }
   }
}

