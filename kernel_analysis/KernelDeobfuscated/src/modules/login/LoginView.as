package src.modules.login
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class LoginView
   {
      
      private static const textString3:String = "tfTitle";
      
      private static const textString1:String = "tfDescription";
      
      private static const textString2:String = "mcAdvertencia";
      
      private static const urlString26:String = "mcClose";
      
      private var _lv1695:MovieClip;
      
      private var _rr3911:CommoncomponentsController;
      
      public function LoginView(param1:MovieClip, param2:LoginModel)
      {
         super();
         this._lv1695 = param1[textString2];
         this._qx2504(param2);
         this._rr3911 = new CommoncomponentsController(this._lv1695[urlString26],this.authenticateUser2);
         this.authenticateUser2();
      }
      
      public function destroy() : void
      {
         if(this._rr3911 != null)
         {
            this._rr3911.destroy();
            this._rr3911 = null;
         }
         this._lv1695 = null;
      }
      
      private function _qx2504(param1:LoginModel) : void
      {
         UtilsUtils._xl9503(this._lv1695[textString3],param1.textString42);
         UtilsUtils._xl9503(this._lv1695[textString1],param1.textString43);
         TextField(this._lv1695[textString3]).mouseEnabled = false;
         TextField(this._lv1695[textString1]).mouseEnabled = false;
      }
      
      public function show() : void
      {
         if(!this._lv1695.visible)
         {
            this._lv1695.visible = true;
         }
      }
      
      public function authenticateUser2() : void
      {
         if(this._lv1695.visible)
         {
            this._lv1695.visible = false;
         }
      }
   }
}

