package src.modules.privados.editObject
{
   import flash.display.*;
   import src.modules.privados._bx10683;
   import src.modules.privados.editObject.editableElements._tc4557;
   import src.utils.*;
   import src.utils.commonComponents.*;
   import src.utils.fichas._ox15379;
   
   public class _tu14278 extends _av7935
   {
      
      public static const _mq7915:String = "mcEdit";
      
      public static const _xf6781:String = "mcBotonVolver";
      
      public static const _ib10148:String = "mcRestaurarColores";
      
      public static const _on1025:int = 4;
      
      protected var _vk3473:Function;
      
      protected var _ej3635:_qo7568;
      
      protected var _bj541:_jr4464;
      
      protected var buttons:Array;
      
      protected var _vp454:_bx10683;
      
      public function _tu14278(param1:MovieClip, param2:_ox15379, param3:Function, param4:_tc4557, param5:Function, param6:Function, param7:Function, param8:Function, param9:Function, param10:_kg13542, param11:_bx10683)
      {
         super(param1,param2,param3,param4,param10);
         this._vk3473 = param6;
         this._vp454 = param11;
         _yq8362._xl9503(param1[_bs6388],param4.name);
         var _loc12_:MovieClip = param1[_rx10818];
         param4._rx12234(_loc12_);
         this._ej3635 = new _qo7568(param1[_xf6781],param5,param10.VOLVER);
         this._ej3635._vd8836 = 3815727;
         this._ej3635._lq8071 = 13421772;
         this._bj541 = new _jr4464(param1[_ib10148],this._ds3991,param7,param8,param9,param10._rk581);
         this._ej3288();
      }
      
      protected function _ds3991() : void
      {
      }
      
      protected function _ej3288() : void
      {
         this.buttons = new Array();
      }
      
      protected function _ts4259() : void
      {
         this.buttons = null;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this._ts4259();
         if(this._ej3635 != null)
         {
            this._ej3635.destroy();
            this._ej3635 = null;
         }
         if(this._bj541 != null)
         {
            this._bj541.destroy();
            this._bj541 = null;
         }
      }
      
      public function _qm2195() : MovieClip
      {
         return MovieClip(_cw11838[_rx10818]);
      }
   }
}

