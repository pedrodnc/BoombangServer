package src.modules.interfaz.fichaKeko.booble
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.utils.*;
   
   public class BoobleUtils extends Booble
   {
      
      private static const _jv5754:String = "tiFrase";
      
      public static const _ck6433:int = 0;
      
      public static const _yg1216:int = 1;
      
      public static const _ue4350:int = 2;
      
      public static const _tm15659:int = 3;
      
      public static const _em9085:int = 4;
      
      public static const _ad13527:int = 5;
      
      public static const _eb647:int = 6;
      
      public static const _xa12462:int = 7;
      
      public static const _qg13284:int = 8;
      
      public static const _eb2730:int = 9;
      
      public static const _xy14832:int = 10;
      
      public static const _yd2540:int = 11;
      
      public static const _vw3046:int = 12;
      
      public static const _pw2430:int = 13;
      
      private var _gb2823:int;
      
      private var _jv14641:TextField;
      
      public function BoobleUtils(param1:int, param2:MovieClip, param3:MovieClip, param4:Booble, param5:String = "")
      {
         super(param2,param3,param4);
         this._gb2823 = param1;
         this._jv14641 = TextField(param3.getChildByName(_jv5754));
         switch(param1)
         {
            case _ck6433:
               this._hk7254(param4._im12039._ck6433[0]);
               return;
            case _yg1216:
               this._hk7254(param4._im12039._ck6433[1]);
               return;
            case _ue4350:
               this._hk7254(param4._im12039._ue4350[0]);
               return;
            case _ad13527:
               this._hk7254(param4._im12039._ue4350[1]);
               return;
            case _tm15659:
               this._hk7254(param4._im12039._xg10968[0]);
               return;
            case _eb647:
               this._hk7254(param4._im12039._xg10968[1]);
               return;
            case _em9085:
               this._hk7254(param4._im12039._br11839[0]);
               return;
            case _xa12462:
               this._hk7254(param4._im12039._qg13284);
               return;
            case _qg13284:
               this._hk7254(param4._im12039._qg13284);
               return;
            case _eb2730:
               this._hk7254(param4._im12039._eb2730);
               return;
            case _xy14832:
               this._hk7254(param4._im12039._xy14832);
               return;
            case _yd2540:
               this._hk7254(param4._im12039._yd2540);
               return;
            case _vw3046:
               this._hk7254(param4._im12039._vw3046);
               return;
            case _pw2430:
               this._hk7254(param5);
               return;
            default:
               return;
         }
      }
      
      private function _hk7254(param1:String) : void
      {
         UtilsUtils._xl9503(this._jv14641,param1);
         colorTransform.color = _kf7619._ts642._mx10235;
         _yj14476.transform.colorTransform = colorTransform;
         this._jv14641.textColor = 16777215;
         colorTransform.color = _kf7619._ts642._rf5817;
         _gn3462.transform.colorTransform = colorTransform;
      }
   }
}

