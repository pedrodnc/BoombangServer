package src.modules.privados.editObject
{
   import flash.display.*;
   import src.modules.privados.editObject.editableElements._tc4557;
   import src.utils.*;
   import src.utils.commonComponents.*;
   import src.utils.fichas._ox15379;
   
   public class _vm6538 extends _av7935
   {
      
      public static const _sk7299:String = "mcSel0";
      
      public static const _ht11820:String = "mcSel1";
      
      public static const _ip14927:String = "mcSel2";
      
      public static const _qa2844:String = "mcSel3";
      
      public static const _sw13310:String = "mcSel4";
      
      public static const _ri15021:String = "mcSel5";
      
      private static const _ma9296:String = "mcInfoMoverObjeto";
      
      private static const _dg2272:String = "tfMoverObjeto";
      
      private static const _kb5584:String = "mcSkinObject";
      
      private var _rc8858:_jr4464;
      
      private var _gk14607:_jr4464;
      
      private var _ot3406:_jr4464;
      
      private var _yy3242:_jr4464;
      
      private var _ew3786:_jr4464;
      
      private var buttonDown:_jr4464;
      
      private var _ii13802:_qo7568;
      
      public function _vm6538(param1:MovieClip, param2:_ox15379, param3:Function, param4:_tc4557, param5:Function, param6:Function, param7:Function, param8:Function, param9:Function, param10:Function, param11:Function, param12:Function, param13:Function, param14:_kg13542, param15:Function)
      {
         super(param1,param2,param3,param4,param14);
         this._rc8858 = new _jr4464(param1[_sk7299],param5,param11,param12,param13,param14._ow2382[0]);
         this._gk14607 = new _jr4464(param1[_ht11820],param6,param11,param12,param13,param14._ow2382[1]);
         this._ot3406 = new _jr4464(param1[_ip14927],param7,param11,param12,param13,param14._ow2382[2]);
         this._yy3242 = new _jr4464(param1[_qa2844],param8,param11,param12,param13,param14._ow2382[3]);
         this._ew3786 = new _jr4464(param1[_ri15021],param9,param11,param12,param13,"window.editObject.blocks.up");
         this.buttonDown = new _jr4464(param1[_sw13310],param10,param11,param12,param13,"window.editObject.blocks.down");
         this._ii13802 = new _qo7568(param1[_kb5584],param15,param14._ns12341);
         this._ii13802._vd8836 = 16777215;
         this._ii13802._lq8071 = 12566463;
         this._rc8858._dy867 = param4._ef15943();
         this._gk14607._dy867 = param4._pa13360();
         this._ot3406._dy867 = param4._wr2641();
         this._yy3242._dy867 = param4._hi3492();
         if(!param4._ve1617())
         {
            this._ii13802._hu12389();
         }
         if(!param4._uu12953())
         {
            this._ew3786._hu12389();
            this.buttonDown._hu12389();
         }
         _yq8362._xl9503(param1[_ma9296][_dg2272],param14._qn9498);
         _yq8362._xl9503(param1[_bs6388],param4.name);
         var _loc16_:MovieClip = param1[_rx10818];
         param4._rx12234(_loc16_);
         this._yp5520();
      }
      
      public function _qm2195() : MovieClip
      {
         return MovieClip(_cw11838[_rx10818]);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._rc8858 != null)
         {
            this._rc8858.destroy();
            this._rc8858 = null;
         }
         if(this._gk14607 != null)
         {
            this._gk14607.destroy();
            this._gk14607 = null;
         }
         if(this._ot3406 != null)
         {
            this._ot3406.destroy();
            this._ot3406 = null;
         }
         if(this._yy3242 != null)
         {
            this._yy3242.destroy();
            this._yy3242 = null;
         }
         if(this._ii13802 != null)
         {
            this._ii13802.destroy();
            this._ii13802 = null;
         }
      }
      
      private function _yp5520() : void
      {
         var _loc1_:MovieClip = MovieClip(_cw11838[_ma9296]);
         _fb15680._lm12729(_loc1_);
      }
   }
}

