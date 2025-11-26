package src.modules.interfaz.baseChat
{
   import flash.display.*;
   import src.*;
   import src.config.*;
   
   public class BasechatModel
   {
      
      private var isEnabled:Boolean;
      
      private var _qn11826:MovieClip;
      
      private var _rd9728:MovieClip;
      
      public function BasechatModel(param1:MovieClip)
      {
         super();
         this._rd9728 = param1;
         this.init();
      }
      
      private function init() : void
      {
         var count2:BitmapData = new BitmapData(Configuration.count2,Configuration.count3,true,39168);
         count2.noise(2,1,80,8,false);
         var count:Bitmap = new Bitmap(count2);
         this._qn11826 = new MovieClip();
         this._qn11826.blendMode = BlendMode.MULTIPLY;
         var count3:MovieClip = new MovieClip();
         count3.graphics.beginFill(43520,1);
         count3.graphics.drawRect(0,0,Configuration.count2,Configuration.count3);
         count3.graphics.endFill();
         this._qn11826.addChild(count3);
         this._qn11826.addChild(count);
         this.isEnabled = false;
      }
      
      public function _up14319() : void
      {
         if(!this.isEnabled)
         {
            this.isEnabled = true;
            _xw1367.getInstance()._uc3178(this._qn11826,_xw1367.count4);
         }
         else
         {
            this._ab6208();
         }
      }
      
      public function _ab6208() : void
      {
         if(this.isEnabled)
         {
            this.isEnabled = false;
            _xw1367.getInstance().move2(this._rd9728,_xw1367.count4);
            _xw1367.getInstance().move2(this._qn11826,_xw1367.count4);
         }
      }
      
      public function destroy() : void
      {
         this._ab6208();
      }
   }
}

