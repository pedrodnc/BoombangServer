package src.modules.interfaz.fichaKeko.interacciones
{
   import flash.display.MovieClip;
   import src.person._um8624;
   import src.utils.commonComponents._fl6373;
   
   public class _ag8921 extends _fl6373
   {
      
      public static var _jh13574:Number = 1;
      
      public static var _qk12405:Number = 0.5;
      
      protected var active:Boolean;
      
      protected var _lp13903:_um8624;
      
      public function _ag8921(param1:_um8624, param2:MovieClip, param3:Function, param4:Function = null, param5:Function = null, param6:Object = null)
      {
         this._lp13903 = param1;
         super(param2,param3,param4,param5,param6);
         this._kc1802(param1);
         this.setState(true);
         this._mr15523();
      }
      
      public function _kc1802(param1:_um8624) : void
      {
      }
      
      public function setState(param1:Boolean) : void
      {
         this.active = param1;
         _dy867 = param1;
      }
      
      public function getState() : Boolean
      {
         return this.active;
      }
      
      public function _mr15523() : void
      {
      }
   }
}

