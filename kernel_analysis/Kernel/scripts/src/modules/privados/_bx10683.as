package src.modules.privados
{
   import flash.events.EventDispatcher;
   import src.allData.catObjects.*;
   import src.allData.color.*;
   import src.allData.scene.skins.managerObjectSkineables._ui16110;
   import src.modules.*;
   import src.multiuser.*;
   import src.tv.boombang.core.communications.*;
   
   public class _bx10683 extends EventDispatcher implements _bi12161
   {
      
      public static const _xp12061:int = 121;
      
      public static const _we10930:int = 136;
      
      public static const _fr12652:int = 140;
      
      public static const _ex15150:int = 142;
      
      public static const _tb58:int = 143;
      
      public static const _ww2730:int = 144;
      
      public static const _xu15976:int = 145;
      
      public static const _ca2208:int = 146;
      
      public static const _jq12736:int = 147;
      
      public static const _sp9236:int = 138;
      
      public static const _tv1361:int = 152;
      
      public static const _oa1054:int = 153;
      
      public static const _yc6766:int = 154;
      
      public static const _sd3498:int = 155;
      
      public static const _dr13052:int = 156;
      
      public static const _bb12887:int = 157;
      
      public static const _ej10206:int = 158;
      
      public static const _ht6910:int = 159;
      
      public static const _sh14839:int = 160;
      
      public static const _hn7274:int = 161;
      
      public static const _tn2046:int = 162;
      
      public static const _ip6242:int = 163;
      
      public static const _fo14125:int = 163;
      
      public static const _xp5025:int = 164;
      
      public static const _ow15031:int = 170;
      
      public static const _ya9449:int = 171;
      
      public static const _ff2507:int = 172;
      
      public static const _mo531:int = 165;
      
      public static const _ao13616:int = 183;
      
      public static const _rg13968:int = 173;
      
      public static const _qo3914:int = 174;
      
      public static const _sg8537:int = 175;
      
      public static const _of3819:int = 184;
      
      public static const _vk15833:int = 185;
      
      public static const _vp4650:int = 120;
      
      public static const _nl13646:int = 121;
      
      public static const _al5889:int = 166;
      
      public static const _bu4021:int = 167;
      
      public static const _oa15741:int = 168;
      
      public static const _ii3185:int = 170;
      
      public static const _bp11244:int = 120;
      
      public static const _gh8714:int = 121;
      
      public static const _dp14575:int = 122;
      
      public static const _rh4414:int = 186;
      
      private var _gh9645:_jl5367;
      
      public function _bx10683()
      {
         super();
         this.multiuser = _jl5367.getInstance();
         this.multiuser.addEventListener(_lb754._ym7408,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:uint = 0;
         var _loc4_:Array = param1._lv9976;
         _loc2_ = uint(String(_loc4_[0]).charCodeAt(0));
         switch(_loc2_)
         {
            case _jl5367._ex12958:
               var _loc3_:uint = uint(String(_loc4_[1]).charCodeAt(0));
               switch(0)
               {
                  case _we10930:
                  case _ex15150:
                  case _tb58:
                  case _ww2730:
                  case _xu15976:
                  case _ca2208:
                  case _bb12887:
                  case _ej10206:
                  case _ht6910:
                  case _sd3498:
                  case _dr13052:
                  case _sh14839:
                  case _hn7274:
                  case _xp12061:
                  case _tv1361:
                  case _oa1054:
                  case _yc6766:
                  case _sp9236:
                  case _tn2046:
                  case _xp5025:
                  case _ow15031:
                  case _al5889:
                  case _bu4021:
                  case _oa15741:
                  case _fr12652:
                  case _ya9449:
                  case _ff2507:
                  case _rg13968:
                  case _qo3914:
                  case _sg8537:
                  case _of3819:
                  case _vk15833:
                  case _te13472._qy2519:
                     dispatchEvent(new _lb754(_lb754._ym7408,_loc4_));
               }
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(_lb754._ym7408,this._bw11981);
         this.multiuser = null;
      }
      
      public function get multiuser() : _jl5367
      {
         return this._gh9645;
      }
      
      public function set multiuser(param1:_jl5367) : void
      {
         this._gh9645 = param1;
      }
      
      public function _xd9525(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._ex12958));
         _loc2_.push(String.fromCharCode(_fr12652));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _ba944(param1:String, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ex12958));
         _loc3_.push(String.fromCharCode(_ca2208));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function _yo148(param1:String, param2:String, param3:int) : void
      {
         param1 = "00000" + (param3 + 1) + param1;
         param2 = "1,1,100," + param2;
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._ex12958));
         _loc4_.push(String.fromCharCode(_ca2208));
         _loc4_.push(param1);
         _loc4_.push(param2);
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _bv13571(param1:int, param2:String, param3:String, param4:int) : void
      {
         var _loc5_:Array = new Array();
         _loc5_.push(String.fromCharCode(_jl5367._ex12958));
         _loc5_.push(String.fromCharCode(_ex15150));
         _loc5_.push(param1);
         _loc5_.push(param2);
         _loc5_.push(param3);
         _loc5_.push(param4);
         this.multiuser._er9795(_loc5_,2);
      }
      
      public function _fb6596(param1:int, param2:int, param3:int, param4:int, param5:String, param6:int, param7:int) : void
      {
         var _loc8_:Array = new Array();
         _loc8_.push(String.fromCharCode(_jl5367._ex12958));
         _loc8_.push(String.fromCharCode(_tb58));
         _loc8_.push(param1);
         _loc8_.push(param2);
         _loc8_.push(param3);
         _loc8_.push(param4);
         _loc8_.push(param5);
         _loc8_.push(_uq7753._pd5901(param6));
         _loc8_.push(param7);
         this.multiuser._er9795(_loc8_,2);
      }
      
      public function _sf11716(param1:int, param2:int, param3:int, param4:int, param5:String, param6:int, param7:int) : void
      {
         var _loc8_:Array = new Array();
         _loc8_.push(String.fromCharCode(_jl5367._ex12958));
         _loc8_.push(String.fromCharCode(_ww2730));
         _loc8_.push(param1);
         _loc8_.push(param2);
         _loc8_.push(param3);
         _loc8_.push(param4);
         _loc8_.push(param5);
         _loc8_.push(_uq7753._pd5901(param6));
         _loc8_.push(param7);
         this.multiuser._er9795(_loc8_,2);
      }
      
      public function _ko72(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:Array = new Array();
         _loc5_.push(String.fromCharCode(_jl5367._ex12958));
         _loc5_.push(String.fromCharCode(_xu15976));
         _loc5_.push(param1);
         _loc5_.push(param2);
         _loc5_.push(param3);
         _loc5_.push(param4);
         this.multiuser._er9795(_loc5_,2);
      }
      
      public function _go3532(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:Array = new Array();
         _loc5_.push(String.fromCharCode(_jl5367._ex12958));
         _loc5_.push(String.fromCharCode(_we10930));
         _loc5_.push(param1);
         _loc5_.push(param2);
         _loc5_.push(param3);
         _loc5_.push(param4);
         this.multiuser._er9795(_loc5_,2);
      }
      
      public function _ov3538(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._ex12958));
         _loc4_.push(String.fromCharCode(_bb12887));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function sendMsgFireObj(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ex12958));
         _loc3_.push(String.fromCharCode(_ej10206));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function sendMsgTopoObj(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ex12958));
         _loc3_.push(String.fromCharCode(_ht6910));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function sendMsgFroggyObj(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ex12958));
         _loc3_.push(String.fromCharCode(_hn7274));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function sendMsgAccionGenerica(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._ex12958));
         _loc4_.push(String.fromCharCode(_xp5025));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _kf6561(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ex12958));
         _loc3_.push(String.fromCharCode(_rh4414));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function sendMsgPerfumar(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._ex12958));
         _loc2_.push(String.fromCharCode(_ow15031));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function sendMsgLoroObj(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ex12958));
         _loc3_.push(String.fromCharCode(_sd3498));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function sendMsgLoroUpdateObj(param1:int, param2:int, param3:String) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._ex12958));
         _loc4_.push(String.fromCharCode(_dr13052));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _dg2398(param1:int, param2:String, param3:int, param4:String, param5:String) : void
      {
         var _loc6_:Array = new Array();
         _loc6_.push(String.fromCharCode(_jl5367._ex12958));
         _loc6_.push(String.fromCharCode(_xp12061));
         _loc6_.push(param1);
         _loc6_.push(param2);
         _loc6_.push("1");
         _loc6_.push("5");
         _loc6_.push("3");
         _loc6_.push("");
         _loc6_.push(param3);
         _loc6_.push(param4);
         _loc6_.push(param5);
         this.multiuser._er9795(_loc6_,2);
      }
      
      public function _jh13639(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ex12958));
         _loc3_.push(String.fromCharCode(_sh14839));
         _loc3_.push(String.fromCharCode(_bp11244));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,3);
      }
      
      public function sendMsgMascotaAction(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ex12958));
         _loc3_.push(String.fromCharCode(_sh14839));
         _loc3_.push(String.fromCharCode(_gh8714));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,3);
      }
      
      public function _qr9037(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ex12958));
         _loc3_.push(String.fromCharCode(_tv1361));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function _sl775(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ex12958));
         _loc3_.push(String.fromCharCode(_oa1054));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function _gm8800(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ex12958));
         _loc3_.push(String.fromCharCode(_jq12736));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function sendMsgActivarCajita(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._ex12958));
         _loc2_.push(String.fromCharCode(_ip6242));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function sendMsgActivarSacoMonedas(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._ex12958));
         _loc2_.push(String.fromCharCode(_fo14125));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function sendMsgMontableMontarUsuario(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._ex12958));
         _loc4_.push(String.fromCharCode(_al5889));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function sendMsgMontableDesmontarUsuario(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ex12958));
         _loc3_.push(String.fromCharCode(_bu4021));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function sendMsgMontableMover(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._ex12958));
         _loc4_.push(String.fromCharCode(_oa15741));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function sendMsgNoriaRotacion(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ex12958));
         _loc3_.push(String.fromCharCode(_ya9449));
         _loc3_.push(String.fromCharCode(_vp4650));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,3);
      }
      
      public function sendMsgNoriaVelocidad(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ex12958));
         _loc3_.push(String.fromCharCode(_ya9449));
         _loc3_.push(String.fromCharCode(_nl13646));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,3);
      }
      
      public function _rk1126(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._ex12958));
         _loc2_.push(String.fromCharCode(_mo531));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _ht563(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._ex12958));
         _loc2_.push(String.fromCharCode(_ao13616));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _gr14049(param1:_ui16110) : void
      {
         var _loc2_:Array = _pn12847._pd3865(param1.colors);
         var _loc3_:Array = _jl5367._il13749(_loc2_);
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._ex12958));
         _loc4_.push(String.fromCharCode(_qo3914));
         _loc4_.push(param1._pq6113);
         _loc4_.push(param1._qy4653);
         _loc4_.push((param1._kr4569 as Array).toString());
         _loc4_.push((param1._of5759 as Array).toString());
         _loc4_.push(_loc3_[0]);
         _loc4_.push(_loc3_[1]);
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _pr6590(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._ex12958));
         _loc2_.push(String.fromCharCode(_sg8537));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
   }
}

