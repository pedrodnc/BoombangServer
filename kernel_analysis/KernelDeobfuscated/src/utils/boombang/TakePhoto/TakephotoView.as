package src.utils.boombang.TakePhoto
{
   import flash.display.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class TakephotoView
   {
      
      private static const textString:String = "mcFichaAcerca";
      
      private static const textString1:String = "mcBotonFotografiar";
      
      private static const textString2:String = "mcBotonCancelar";
      
      private static const textString3:String = "tfTitle";
      
      private static const textString4:String = "tfItem1";
      
      private static const textString5:String = "tfItem2";
      
      private static const textString6:String = "tfItem3";
      
      private static const textString7:String = "tfItem4";
      
      private var _xg12631:MovieClip;
      
      private var _hx5783:CommoncomponentsView;
      
      private var _xl7701:CommoncomponentsView;
      
      public function TakephotoView(param1:MovieClip, param2:TakephotoModel, param3:Function, param4:Function)
      {
         super();
         this._xg12631 = MovieClip(param1[textString]);
         this.init(param2,param3,param4);
      }
      
      private function init(param1:TakephotoModel, param2:Function, param3:Function) : void
      {
         UtilsUtils._xl9503(this._xg12631[textString3],param1.textString6);
         UtilsUtils._xl9503(this._xg12631[textString4],param1.textString7);
         UtilsUtils._xl9503(this._xg12631[textString5],param1.textString8);
         UtilsUtils._xl9503(this._xg12631[textString6],param1.textString9);
         UtilsUtils._xl9503(this._xg12631[textString7],param1.textString10);
         this._hx5783 = new CommoncomponentsView(this._xg12631[textString1],param3,param1.textString1);
         this._xl7701 = new CommoncomponentsView(this._xg12631[textString2],param2,param1.textString2);
      }
      
      public function destroy() : void
      {
         if(this._hx5783 != null)
         {
            this._hx5783.destroy();
            this._hx5783 = null;
         }
         if(this._xl7701 != null)
         {
            this._xl7701.destroy();
            this._xl7701 = null;
         }
         this._xg12631 = null;
      }
      
      public function authenticateUser2() : void
      {
         if(this._xg12631.visible)
         {
            this._xg12631.visible = false;
         }
      }
      
      public function show() : void
      {
         if(!this._xg12631.visible)
         {
            this._xg12631.visible = true;
         }
      }
   }
}

