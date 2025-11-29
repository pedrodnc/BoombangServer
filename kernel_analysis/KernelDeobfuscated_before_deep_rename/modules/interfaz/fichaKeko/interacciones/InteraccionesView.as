package src.modules.interfaz.fichaKeko.interacciones
{
   import flash.display.MovieClip;
   import src.modules.interfaz.fichaKeko.booble.BoobleUtils;
   import src.person.*;
   import src.utils.commonComponents.CommoncomponentsController;
   
   public class InteraccionesView extends CommoncomponentsController
   {
      
      private static const _tc9284:String = "hide";
      
      private var _kn15197:MovieClip;
      
      private var _hp9397:int;
      
      private var _lp13903:PersonAnimation;
      
      private var person:PersonController;
      
      private var _vc4824:BoobleUtils;
      
      public function InteraccionesView(param1:MovieClip, param2:MovieClip, param3:int, param4:PersonAnimation, param5:PersonController, param6:BoobleUtils)
      {
         super(param1,null);
         this._kn15197 = param2;
         this._hp9397 = param3;
         this._lp13903 = param4;
         this.person = param5;
         this._vc4824 = param6;
         var _loc7_:PersonModel = PersonModel.getInstance();
         var _loc8_:MovieClip = PersonController._ku11706(param4,"cara_mediana");
         this._kn15197.addChild(_loc8_);
         this._kn15197.visible = false;
         this._kn15197.mouseEnabled = false;
         this._kn15197.mouseChildren = false;
         _loc8_.x = -_loc8_.width / 2;
         _loc8_.y = -_loc8_.height / 2;
         this._rs5636();
      }
      
      override public function _ch1514() : void
      {
         _pe16126.gotoAndStop(_tc9284);
         this._kn15197.visible = true;
         this.person._ai3755();
         if(this._vc4824 != null)
         {
            this._vc4824._dq14212(this._lp13903.name);
         }
      }
      
      override public function _iv1460() : void
      {
         this._rs5636();
         if(this._kn15197 != null)
         {
            this._kn15197.visible = false;
            this.person._dj6068();
         }
         if(this._vc4824 != null)
         {
            this._vc4824._tj8775();
         }
      }
      
      private function _rs5636() : void
      {
         _pe16126.gotoAndStop(this._hp9397 + 1);
      }
   }
}

