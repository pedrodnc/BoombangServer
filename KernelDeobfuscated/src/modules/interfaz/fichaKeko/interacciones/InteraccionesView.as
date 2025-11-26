package src.modules.interfaz.fichaKeko.interacciones
{
   import flash.display.MovieClip;
   import src.modules.interfaz.fichaKeko.booble.BoobleUtils;
   import src.person.*;
   import src.utils.commonComponents.CommoncomponentsController;
   
   public class InteraccionesView extends CommoncomponentsController
   {
      
      private static const textString:String = "hide";
      
      private var _kn15197:MovieClip;
      
      private var count:int;
      
      private var _lp13903:PersonAnimation;
      
      private var person:PersonController;
      
      private var _vc4824:BoobleUtils;
      
      public function InteraccionesView(param1:MovieClip, param2:MovieClip, param3:int, param4:PersonAnimation, param5:PersonController, param6:BoobleUtils)
      {
         super(param1,null);
         this._kn15197 = param2;
         this.count = param3;
         this._lp13903 = param4;
         this.person = param5;
         this._vc4824 = param6;
         var items:PersonModel = PersonModel.getInstance();
         var count8:MovieClip = PersonController._ku11706(param4,"cara_mediana");
         this._kn15197.addChild(count8);
         this._kn15197.visible = false;
         this._kn15197.mouseEnabled = false;
         this._kn15197.mouseChildren = false;
         count8.x = -count8.width / 2;
         count8.y = -count8.height / 2;
         this.stop1();
      }
      
      override public function stop() : void
      {
         _pe16126.gotoAndStop(textString);
         this._kn15197.visible = true;
         this.person.stop2();
         if(this._vc4824 != null)
         {
            this._vc4824._dq14212(this._lp13903.name);
         }
      }
      
      override public function stop() : void
      {
         this.stop1();
         if(this._kn15197 != null)
         {
            this._kn15197.visible = false;
            this.person.stop1();
         }
         if(this._vc4824 != null)
         {
            this._vc4824._tj8775();
         }
      }
      
      private function stop1() : void
      {
         _pe16126.gotoAndStop(this.count + 1);
      }
   }
}

