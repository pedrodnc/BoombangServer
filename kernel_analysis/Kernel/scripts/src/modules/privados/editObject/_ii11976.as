package src.modules.privados.editObject
{
   import flash.display.MovieClip;
   import src.allData.catObjects.*;
   import src.allData.sceneObjects.dataObjects._hl15578;
   import src.modules.privados.editObject.editableElements._tc4557;
   import src.utils.*;
   import src.utils.commonComponents.*;
   import src.utils.fichas._ox15379;
   
   public class _ii11976 extends _av7935
   {
      
      public static const _mq7915:String = "mcEdit";
      
      public static const _xf6781:String = "mcBotonVolver";
      
      private var _kg11770:_hl15578;
      
      private var _yy699:_dr2789;
      
      private var _ow13413:_dr2789;
      
      private var _pj4061:_dr2789;
      
      private var _ej3635:_qo7568;
      
      private var _qv4021:Function;
      
      public function _ii11976(param1:MovieClip, param2:_ox15379, param3:Function, param4:_tc4557, param5:_hl15578, param6:Function, param7:Function, param8:_kg13542)
      {
         super(param1,param2,param3,param4,param8);
         this._kg11770 = param5;
         this._qv4021 = param7;
         _yq8362._xl9503(param1[_bs6388],param4.name);
         var _loc9_:MovieClip = param1[_rx10818];
         param4._rx12234(_loc9_);
         this._yy699 = new _dr2789(param1[_mq7915 + 0],this._jh1362,param8._tr9125,false,null,null,null);
         this._ow13413 = new _dr2789(param1[_mq7915 + 1],this._jh1362,param8._kk7385,false,null,null,null);
         this._pj4061 = new _dr2789(param1[_mq7915 + 2],this._jh1362,param8._us5816,false,null,null,null);
         this._ej3635 = new _qo7568(param1[_xf6781],param6,param8.VOLVER);
         this._ej3635._vd8836 = 3815727;
         this._ej3635._lq8071 = 13421772;
         if(!(param5._sl11700._cg6545[_uq7753._wl5344] != 0 && param5._sl11700._cg6545[_uq7753._ji11043] != 0 && param5._sl11700._cg6545[_uq7753._ww14989] != 0))
         {
            if(param5._sl11700._cg6545[_uq7753._ji11043] != 0 && param5._sl11700._cg6545[_uq7753._ww14989] != 0)
            {
               this._pj4061._hu12389();
            }
            else if(param5._sl11700._cg6545[_uq7753._wl5344] != 0 && param5._sl11700._cg6545[_uq7753._ww14989] != 0)
            {
               this._yy699._hu12389();
            }
         }
      }
      
      private function _jh1362(param1:_dr2789, param2:Object) : void
      {
         switch(param1)
         {
            case this._yy699:
               this._qv4021(_uq7753._ji11043);
               return;
            case this._ow13413:
               this._qv4021(_uq7753._ww14989);
               return;
            case this._pj4061:
               this._qv4021(_uq7753._wl5344);
               return;
            default:
               return;
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._yy699 != null)
         {
            this._yy699.destroy();
            this._yy699 = null;
         }
         if(this._ow13413 != null)
         {
            this._ow13413.destroy();
            this._ow13413 = null;
         }
         if(this._pj4061 != null)
         {
            this._pj4061.destroy();
            this._pj4061 = null;
         }
         if(this._ej3635 != null)
         {
            this._ej3635.destroy();
            this._ej3635 = null;
         }
      }
   }
}

