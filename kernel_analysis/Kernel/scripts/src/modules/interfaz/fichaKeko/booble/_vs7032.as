package src.modules.interfaz.fichaKeko.booble
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import flash.utils.*;
   import src.utils.*;
   
   public class _vs7032 extends _gu2082
   {
      
      private static const _aq10676:String = "tiFraseTitulo";
      
      private static const _mb15032:String = "tiFrase";
      
      public static const _ja7340:int = 0;
      
      public static const _eb2553:int = 1;
      
      public static const _xy14832:int = 2;
      
      public static const _nj15369:int = 3;
      
      public static const _wg13189:int = 4;
      
      public static const _qf6437:int = 5;
      
      public static const _oy7764:int = 6;
      
      public static const _rk906:int = 7;
      
      public static const _nf3019:int = 8;
      
      public static const _bs737:int = 9;
      
      private var _dg5488:TextField;
      
      private var _my5509:TextField;
      
      private var _fm8672:int;
      
      private var _cu6890:Timer;
      
      private var _jc4087:Function;
      
      public function _vs7032(param1:int, param2:MovieClip, param3:MovieClip, param4:Function, param5:_rn3949)
      {
         super(param2,param3,param5);
         this._dg5488 = TextField(param3.getChildByName(_aq10676));
         this._my5509 = TextField(param3.getChildByName(_mb15032));
         this._fm8672 = param1;
         this._jc4087 = param4;
         _eq14922._iq4270(param5.sonidoError);
         switch(param1)
         {
            case _ja7340:
               this._vf3625(param5._im12039._nm632);
               return;
            case _eb2553:
               this._vf3625(param5._im12039._eb2553);
               return;
            case _xy14832:
               this._vf3625(param5._im12039._xy14832);
               return;
            case _nj15369:
               this._vf3625(param5._im12039._nj15369);
               return;
            case _wg13189:
               this._vf3625(param5._im12039._wg13189);
               return;
            case _oy7764:
               this._vf3625(param5._im12039._wq13642);
               return;
            case _qf6437:
               this._vf3625(param5._im12039._cv11334);
               return;
            case _rk906:
               this._vf3625(param5._im12039._rk906);
               return;
            case _nf3019:
               this._vf3625(param5._im12039._nf3019);
               return;
            case _bs737:
               this._vf3625(param5._im12039._bs737);
               return;
            default:
               return;
         }
      }
      
      public function _gl10591() : int
      {
         return this._fm8672;
      }
      
      private function _vf3625(param1:String) : void
      {
         _yq8362._xl9503(this._dg5488,_kf7619._im12039._yr2343 + "!");
         _yq8362._xl9503(this._my5509,param1);
         colorTransform.color = _kf7619._ts642._mx10235;
         _yj14476.transform.colorTransform = colorTransform;
         colorTransform.color = 0;
         _gn3462.transform.colorTransform = colorTransform;
         this._cu6890 = new Timer(4000,0);
         this._cu6890.addEventListener(TimerEvent.TIMER,this._om2039);
         this._cu6890.start();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this._cu6890.removeEventListener(TimerEvent.TIMER,this._om2039);
      }
      
      private function _om2039(param1:TimerEvent) : void
      {
         this.destroy();
         this._jc4087();
      }
   }
}

