package src.modules.chooseIsla
{
   import flash.display.*;
   import src.utils.*;
   
   public class ChooseislaModel
   {
      
      private static const textString:String = "mcCapsulaInfo";
      
      private static const textString1:String = "tfAyuda";
      
      private static const textString2:String = "mcCapsulaAyuda";
      
      private static const textString3:String = "mcCapsulaAyudaColor";
      
      private static const textString4:String = "mcIconoAyuda";
      
      private static const textString5:String = "mcIconoAlerta";
      
      private static const textString6:String = "white";
      
      private static const textString7:String = "black";
      
      private static const _vf9803:uint = 16777215;
      
      private static const _ms9511:uint = 16776960;
      
      private static const _dq8991:uint = 3448288;
      
      private static const _ow11874:uint = 0;
      
      private var _lw8117:MovieClip;
      
      private var _bx8167:ChooseislaController;
      
      public function ChooseislaModel(param1:MovieClip, param2:ChooseislaController)
      {
         super();
         this._bx8167 = param2;
         this._lw8117 = MovieClip(param1[textString]);
      }
      
      public function destroy() : void
      {
         this._lw8117 = null;
         this._bx8167 = null;
      }
      
      public function _nr9438(param1:String) : void
      {
         this.stop(param1,textString6,_dq8991);
      }
      
      public function _bd7415(param1:String) : void
      {
         this.stop(param1,textString7,_vf9803);
      }
      
      private function stop(param1:String, param2:String, param3:uint) : void
      {
         UtilsUtils._xl9503(this._lw8117[textString1],param1);
         UtilsUtils._np7275(this._lw8117[textString1],param3);
         this._lw8117.gotoAndStop(param2);
         this.show();
      }
      
      public function show() : void
      {
         this._lw8117.visible = true;
      }
      
      public function authenticateUser2() : void
      {
         this._lw8117.visible = false;
      }
   }
}

