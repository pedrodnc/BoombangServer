package src.modules.interfaz.fichaKeko.booble
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.utils.*;
   
   public class _ag6440 extends _gu2082
   {
      
      private static const _pj6273:String = "tfNameUsr";
      
      private var _ml904:TextField;
      
      public function _ag6440(param1:String, param2:MovieClip, param3:MovieClip, param4:_rn3949)
      {
         super(param2,param3,param4);
         this._ml904 = TextField(param3.getChildByName(_pj6273));
         this._od7732(param1);
      }
      
      private function _od7732(param1:String) : void
      {
         _yq8362._xl9503(this._ml904,param1);
         colorTransform.color = _kf7619._ts642._mx10235;
         _yj14476.transform.colorTransform = colorTransform;
      }
   }
}

