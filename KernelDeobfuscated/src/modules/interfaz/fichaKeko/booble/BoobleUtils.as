package src.modules.interfaz.fichaKeko.booble
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.utils.*;
   
   public class BoobleUtils extends Booble
   {
      
      private static const textString:String = "tiFrase";
      
      public static const count:int = 0;
      
      public static const count1:int = 1;
      
      public static const count2:int = 2;
      
      public static const count3:int = 3;
      
      public static const count4:int = 4;
      
      public static const count5:int = 5;
      
      public static const count6:int = 6;
      
      public static const count7:int = 7;
      
      public static const count8:int = 8;
      
      public static const count9:int = 9;
      
      public static const count10:int = 10;
      
      public static const count11:int = 11;
      
      public static const count12:int = 12;
      
      public static const count13:int = 13;
      
      private var count14:int;
      
      private var _jv14641:TextField;
      
      public function BoobleUtils(param1:int, param2:MovieClip, param3:MovieClip, param4:Booble, param5:String = "")
      {
         super(param2,param3,param4);
         this.count14 = param1;
         this._jv14641 = TextField(param3.getChildByName(textString));
         switch(param1)
         {
            case count:
               this._hk7254(param4._im12039.count[0]);
               return;
            case count1:
               this._hk7254(param4._im12039.count[1]);
               return;
            case count2:
               this._hk7254(param4._im12039.count2[0]);
               return;
            case count5:
               this._hk7254(param4._im12039.count2[1]);
               return;
            case count3:
               this._hk7254(param4._im12039._xg10968[0]);
               return;
            case count6:
               this._hk7254(param4._im12039._xg10968[1]);
               return;
            case count4:
               this._hk7254(param4._im12039._br11839[0]);
               return;
            case count7:
               this._hk7254(param4._im12039.count8);
               return;
            case count8:
               this._hk7254(param4._im12039.count8);
               return;
            case count9:
               this._hk7254(param4._im12039.count9);
               return;
            case count10:
               this._hk7254(param4._im12039.count10);
               return;
            case count11:
               this._hk7254(param4._im12039.count11);
               return;
            case count12:
               this._hk7254(param4._im12039.count12);
               return;
            case count13:
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

