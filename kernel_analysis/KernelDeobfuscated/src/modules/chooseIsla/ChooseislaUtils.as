package src.modules.chooseIsla
{
   import flash.display.*;
   import src.utils.*;
   
   public class ChooseislaUtils
   {
      
      private static const textString:String = "mcCapsulaOwnerName";
      
      private static const textString1:String = "tfOwnerName";
      
      private var _xc11456:MovieClip;
      
      private var _bx8167:ChooseislaController;
      
      public function ChooseislaUtils(param1:MovieClip, param2:ChooseislaController, param3:Boolean)
      {
         super();
         this._bx8167 = param2;
         this._xc11456 = MovieClip(param1[textString]);
         this.stop();
      }
      
      public function destroy() : void
      {
         this._xc11456 = null;
         this._bx8167 = null;
      }
      
      private function stop() : void
      {
         if(this._bx8167._hp11587 == null)
         {
            return;
         }
         UtilsUtils._xl9503(this._xc11456[textString1],this._bx8167._hp11587._hn7664.name);
      }
      
      public function show() : void
      {
         this._xc11456.visible = true;
      }
      
      public function authenticateUser2() : void
      {
         this._xc11456.visible = false;
      }
   }
}

