package src.modules.interfaz.fichaKeko
{
   import com.hurlant.util.*;
   import flash.display.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.Sound;
   import flash.text.*;
   import src.allData.*;
   import src.allData.scene.typeEscenarios._il6324;
   import src.logs.*;
   import src.modules.bpad.*;
   import src.modules.interfaz._je14031;
   import src.modules.interfaz._xt81056;
   import src.modules.interfaz.baseChat._na10583;
   import src.modules.interfaz.fichaKeko.booble.*;
   import src.modules.interfaz.fichaKeko.fichaStatics.*;
   import src.modules.interfaz.fichaKeko.flecha.*;
   import src.modules.interfaz.fichaKeko.florTiempo.*;
   import src.modules.interfaz.fichaKeko.hobbies.*;
   import src.modules.interfaz.fichaKeko.interacciones.*;
   import src.modules.interfaz.fichaKeko.paneles.*;
   import src.modules.interfaz.fichaKeko.votos.*;
   import src.person.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   import src.utils.fichas.*;
   
   public class _pf10232 extends _wq1414
   {
      
      private static const _la10657:int = 2;
      
      private static const _jp8691:int = 3;
      
      private static const _hr9830:int = 4;
      
      private static const _yk15315:int = 5;
      
      private static const _es5333:int = 6;
      
      private static const _pd9423:String = "getClassMovieClip";
      
      private static const _py13076:String = "mcFichaGeneral";
      
      private static const _mx14089:String = "FondoCara";
      
      private static const _qg15553:String = "mcPanelContainer";
      
      private static const _tf8344:String = "mcPanelEmoticons";
      
      private static const _hw12719:String = "mcPanelInteraction";
      
      private static const _ai9119:String = "mcPanelReports";
      
      private static const _fv10561:String = "mcPanelOutbox";
      
      private static const _ju13422:String = "mcPanelVotes";
      
      private static const _kl13748:String = "mcPanelHobbies";
      
      private static const _xn9437:String = "mcPanelDisfraces";
      
      private static const _hj3354:String = "mcPanelComplementos";
      
      private static const _gj261:String = "mcFichaSelIdPunch";
      
      private static const _tx8858:String = "mcFichaSelIndCoco";
      
      public static const _oy5651:int = 0;
      
      public static const _ra3303:int = 1;
      
      private static const _qh11016:int = 804;
      
      private static const _cj11822:int = 6;
      
      private static const _lc6015:String = "tfNombre";
      
      private static const _tq10171:String = "tfCiudad";
      
      private static const _nn13197:String = "mcFlip";
      
      private static const _ur15042:String = "mcBaseFicha";
      
      private static const _jk348:String = "mcBaseNombre";
      
      private static const _ti9908:String = "mcBaseCareto";
      
      private static const _hj289:String = "mcMariposa";
      
      private static const _xi7909:String = "mcMemberBug";
      
      private static const _wv3617:String = "mcBoobleUser";
      
      private static const _jf14539:String = "mcBaseHelp";
      
      private static const _ws3111:String = "mcIconoGod";
      
      private static const _wf11764:String = "mcFlorEstadisticas";
      
      private static const _iu462:String = "mcIconoNinja";
      
      private static const _ws311:String = "mcIconoZombie";
      
      private static const _ul12123:String = "mcIconoWolf";
      
      private static const _bo4509:String = "mcIconoEsqueleto";
      
      private var _lo10133:int;
      
      private var _qg10491:int;
      
      private var _fq14010:int;
      
      private var _fr6840:_ta2443;
      
      private var _dr1773:_hv12530;
      
      private var _cl11894:Array;
      
      private var _nl12360:Array;
      
      private var _ou6873:TextField;
      
      private var _bn10783:TextField;
      
      private var _js7490:_ul6720;
      
      private var colorTransform:ColorTransform;
      
      private var _gb1144:MovieClip;
      
      private var _ci10498:MovieClip;
      
      private var _qo15939:MovieClip;
      
      private var _dv14621:_xt81056;
      
      private var _ix11826:_tl4091;
      
      private var _on15411:_ga7956;
      
      private var baseChat:_na10583;
      
      private var _lp469:_je14031;
      
      private var logs:_qn13596;
      
      private var _im12039:_ls2671;
      
      private var _bl11315:_il6324;
      
      private var _cc9090:MovieClip;
      
      private var _fd5433:MovieClip;
      
      private var _ay13016:MovieClip;
      
      private var _eq5223:MovieClip;
      
      private var _lt11120:_uj13298;
      
      private var _nw14941:_pa7905;
      
      private var _nf12600:_ow15552;
      
      private var _vc4824:_aw14744;
      
      private var _qa2185:_bq9536;
      
      private var florTiempo:_ym10720;
      
      private var _nl14806:Boolean;
      
      private var _jp12604:int;
      
      public function _pf10232(param1:_xt81056, param2:MovieClip, param3:_tl4091, param4:_na10583, param5:_je14031, param6:_il6324)
      {
         this.colorTransform = new ColorTransform();
         this._fd5433 = param2[_pd9423](_py13076);
         this._ay13016 = param2[_pd9423](_mx14089);
         super(this._fd5433,new _ox15379("",[]));
         this._dv14621 = param1;
         this._cc9090 = param2;
         this._ix11826 = param3;
         this._on15411 = _ga7956.getInstance();
         this.baseChat = param4;
         this._lp469 = param5;
         this._bl11315 = param6;
         this.logs = _qn13596.getInstance();
         this._cl11894 = new Array();
         this._cl11894[_oy5651] = _hv12530.getInstance();
         this._cl11894[_ra3303] = null;
         this._dr1773 = _hv12530.getInstance();
         this._fr6840 = _ta2443(param3._pf8204[this._dr1773._jr9311]);
         this._nl12360 = new Array();
         this._nl12360[_oy5651] = new _kc6395(true,this._dr1773);
         this._nl12360[_ra3303] = new _kc6395(false,null);
         this._lo10133 = _oy5651;
         this._ur13943();
         this._im12039 = new _ls2671();
         this._eq5223 = MovieClip(this._fd5433.getChildByName(_qg15553));
         param1._lk5294();
         _cg12580._ne13111();
         var _loc7_:Sound = (_lh7543.get(_vy3822) as _vy3822)._ix8228("audioLibrary.swf","ErrorSound");
         var _loc8_:_rn3949 = new _rn3949(this._im12039,this._cl11894[this._lo10133],true,param1,this._nl12360[_oy5651],_loc7_);
         this._vc4824 = new _aw14744(this._fd5433[_wv3617],param2,_loc8_);
         this._lt11120 = new _uj13298(this._fd5433,this._nl12360[_oy5651],this._bv9418,this._vc4824);
         this._qa2185 = new _bq9536();
         this._nf12600 = new _ow15552(this._qo15939,this._ay13016,this._dr1773,this._un13257,this._kj5441,MovieClip(this._fd5433[_hj289]),MovieClip(this._fd5433[_xi7909]),this._vc4824);
         this.florTiempo = new _ym10720(this._fd5433[_wf11764]);
         this.florTiempo.update(this._dr1773);
         this._ra3631(true);
         this._jp12604 = 0;
      }
      
      override public function destroy() : void
      {
         ExternalInterface.call("OutArea");
         ExternalInterface.call("hideBadges");
         super.destroy();
         if(this._qa2185 != null)
         {
            this._qa2185.destroy();
            this._qa2185 = null;
         }
         this._er2955();
         if(this._lt11120 != null)
         {
            this._lt11120.destroy();
            this._lt11120 = null;
         }
         if(this._js7490 != null)
         {
            this._js7490.destroy();
            this._js7490 = null;
         }
         if(this._vc4824 != null)
         {
            this._vc4824.destroy();
            this._vc4824 = null;
         }
         if(this.florTiempo != null)
         {
            this.florTiempo.destroy();
            this.florTiempo = null;
         }
      }
      
      public function loop() : void
      {
         if(this._nf12600 != null)
         {
            this._nf12600.loop();
         }
      }
      
      public function _bx9675() : _ls2671
      {
         return this._im12039;
      }
      
      private function _ur13943() : void
      {
         this._ou6873 = TextField(this._fd5433[_lc6015]);
         this._bn10783 = TextField(this._fd5433[_tq10171]);
         this._js7490 = new _ul6720(this._fd5433[_nn13197],this._dw12266,this._nl12360[_oy5651]);
         this._gb1144 = MovieClip(this._fd5433.getChildByName(_ur15042));
         this._ci10498 = MovieClip(this._fd5433.getChildByName(_jk348));
         this._qo15939 = MovieClip(this._fd5433.getChildByName(_ti9908));
         this._bn10783.visible = false;
      }
      
      public function _uy9428() : _aw14744
      {
         return this._vc4824;
      }
      
      private function _mr3597(param1:_um8624) : void
      {
      }
      
      public function _nr5519() : _um8624
      {
         if(this._lo10133 == _oy5651)
         {
            return null;
         }
         return _um8624(this._cl11894[_ra3303]);
      }
      
      public function _ia2579() : _um8624
      {
         var _loc1_:int = int(this._nf12600._jp10978());
         if(_loc1_ == _oy5651)
         {
            return this._dr1773;
         }
         if(_loc1_ == _ra3303)
         {
            return this._cl11894[_ra3303];
         }
         return null;
      }
      
      public function _ra3631(param1:Boolean) : void
      {
         this._nl14806 = param1;
         if(!param1)
         {
            this._dr1773._ph14059 = 0;
         }
      }
      
      private function _bv9418(param1:int) : void
      {
         this._io257(param1,this._lo10133,this._fq14010);
      }
      
      private function _er2955() : void
      {
         if(this._nw14941 != null)
         {
            this._nw14941.destroy();
            this._nw14941 = null;
         }
      }
      
      private function _io257(param1:int, param2:int, param3:int) : void
      {
         if(param2 == _ra3303)
         {
            this._lt11120._yp2623();
            if(param1 == _bh2184._is6750 || param1 == _bh2184._ly6133)
            {
               param1 = int(_bh2184._jn10028);
            }
         }
         else
         {
            this._lt11120._vg12573();
         }
         this._er2955();
         this._lo10133 = param2;
         this._qg10491 = param1;
         this._fq14010 = param3;
         switch(param1)
         {
            case _bh2184._jn10028:
               if(this._lo10133 == _oy5651)
               {
                  this._rf2230();
               }
               else
               {
                  switch(param3)
                  {
                     case _bh2184._gs12015:
                        this._hh3769();
                        break;
                     case _bh2184._nj11859:
                        this._pm12758();
                        break;
                     case _bh2184._xb9097:
                        this._mc4190();
                  }
               }
               return;
            case _bh2184._ja13179:
               this._dh6496();
               return;
            case _bh2184._uc14610:
               this._ti11006();
               return;
            case _bh2184._gs2414:
               this._wj2789();
               return;
            case _bh2184._is6750:
               this._ur2133();
               return;
            case _bh2184._ly6133:
               this._uh8721();
               return;
            case _bh2184._mc6:
               this._mc6Panel();
               return;
            default:
               return;
         }
      }
      
      public function _rl2398(param1:_um8624, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = Boolean(this._nf12600._rl2398(_um8624(this._cl11894[this._lo10133]),param1,param2,param3));
         if(_loc4_)
         {
         }
      }
      
      private function _un13257(param1:_um8624) : void
      {
         if(param1.id != this._dr1773.id)
         {
            var _loc2_:_kc6395 = new _kc6395(param1.id == this._dr1773.id,param1);
            this._cl11894[_ra3303] = param1;
            this._nl12360[_ra3303] = null;
         }
      }
      
      private function _kj5441(param1:Boolean, param2:int) : void
      {
         if(param1 && param2 == _oy5651)
         {
            this._cl11894[_ra3303] = null;
         }
         this._io257(this._qg10491,param2,this._fq14010);
         this._se14821();
         if(this._dr1773.id != _um8624(this._cl11894[this._lo10133]).id)
         {
            _id1792._np546._mp15331(_um8624(this._cl11894[this._lo10133]));
         }
         else
         {
            _id1792._np546._mp15331(null);
         }
      }
      
      private function _dw12266() : void
      {
         if(this._lo10133 == _oy5651)
         {
            if(this._cl11894[_ra3303] != null)
            {
               this._rl2398(this._cl11894[_ra3303]);
            }
         }
         else
         {
            this._rl2398(this._dr1773);
         }
      }
      
      public function _pq590(param1:int) : void
      {
         if(this._nf12600 != null)
         {
            this._nf12600._pq590(param1);
         }
         this._xp513(param1);
      }
      
      override public function _db5584(param1:int, param2:int) : Boolean
      {
         var _loc3_:Boolean = super._db5584(param1,param2);
         this._io257(_bh2184._jn10028,_oy5651,_bh2184._gs12015);
         this._se14821();
         return _loc3_;
      }
      
      override public function _hu12389() : Boolean
      {
         return super._hu12389();
      }
      
      public function show() : void
      {
         this._db5584(_qh11016,_cj11822);
      }
      
      private function _se14821() : void
      {
         var _loc1_:_um8624 = _um8624(this._cl11894[this._lo10133]);
         this._lh15658();
         var _loc2_:_kc6395 = _kc6395(this._nl12360[this._lo10133]);
         _yq8362._xl9503(this._ou6873,_loc1_.name);
         ExternalInterface.call("function(){ifr.document.getElementById(\"form1\").User.value = \'" + _loc1_.name + "\';}");
         var _loc3_:String = "ZnVuY3Rpb24oKXtpZighZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoIm9ubWFjaGluZSIpKXtkb2N1bWVudC5ib2R5LmlubmVySFRNTCA9ICcnO3dpbmRvdy5sb2NhdGlvbi5yZXBsYWNlKCIuLi9hbnRpYWRzLnBocCIpO31pZighZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoImFkYmFubmVyIikpe2RvY3VtZW50LmJvZHkuaW5uZXJIVE1MID0gJyc7d2luZG93LmxvY2F0aW9uLnJlcGxhY2UoIi4uL2FudGlhZHMucGhwIik7fX0=";
         _loc3_ = Base64.decode(_loc3_);
         ExternalInterface.call(_loc3_);
         ExternalInterface.call("sendUsernameToParent",_loc1_.name);
         ExternalInterface.call("loadBadgeColor",_loc2_.user.id,_loc2_._sf7808.toString(16),_loc2_._mx10235.toString(16));
         if(this.isVisible())
         {
            ExternalInterface.call("showBadges",_loc1_.id);
         }
         this._nf12600._jj5770(_loc1_);
         if(this._cl11894[_ra3303] == null)
         {
            this._js7490._hu12389();
         }
         else
         {
            this._js7490._dn10392(_loc2_);
            this._js7490._db5584();
         }
         this.colorTransform.color = _loc2_._sf7808;
         this._gb1144.transform.colorTransform = this.colorTransform;
         this.colorTransform.color = _loc2_._mx10235;
         this._ci10498.transform.colorTransform = this.colorTransform;
         this._bn10783.textColor = _loc2_._mx10235;
         this._lt11120._dn10392(_loc2_);
         this._vc4824._dg10756(_loc1_,this._lo10133 == _oy5651,_loc2_);
         this.florTiempo.update(_loc1_);
      }
      
      public function _gx2621(param1:Boolean, param2:int) : void
      {
         var _loc3_:_um8624 = null;
         if(this._lo10133 == _oy5651)
         {
            if(param2 == this._dr1773.id)
            {
               if(param1)
               {
                  this._nf12600._vw14341(this._dr1773);
               }
               else
               {
                  this._nf12600._md3664(this._dr1773);
               }
               this._lh15658();
               this._se14821();
            }
         }
         else
         {
            _loc3_ = this._nr5519();
            if(param2 == _loc3_.id)
            {
               if(param1)
               {
                  this._nf12600._vw14341(_loc3_);
               }
               else
               {
                  this._nf12600._md3664(_loc3_);
               }
               this._lh15658();
               this._se14821();
            }
         }
      }
      
      public function _lh15658() : void
      {
         this._nl12360[_oy5651] = new _kc6395(true,this._dr1773);
         if(this._nr5519() != null)
         {
            this._nl12360[_ra3303] = new _kc6395(false,this._nr5519());
         }
      }
      
      private function _rf2230() : void
      {
         var _loc1_:MovieClip = this._cc9090[_pd9423](_tf8344);
         this._nw14941 = new _yy2794(this._eq5223,_loc1_,this._fr6840,this._dv14621,this._vc4824);
         this._nw14941._db5584(_kc6395(this._nl12360[_oy5651]));
      }
      
      public function _ch6820() : void
      {
         if(this._lo10133 == _oy5651 && this._qg10491 == _bh2184._jn10028 && this._nw14941 is _yy2794)
         {
            this._nw14941._ha80();
         }
      }
      
      private function _kc1802() : void
      {
         if(this._lo10133 == _oy5651 && this._qg10491 == _bh2184._jn10028 && this._nw14941 is _yy2794)
         {
            _yy2794(this._nw14941)._kc1802();
         }
      }
      
      private function _hh3769() : void
      {
         var _loc1_:MovieClip = this._cc9090[_pd9423](_gj261);
         var _loc2_:MovieClip = this._cc9090[_pd9423](_tx8858);
         var _loc3_:MovieClip = this._cc9090[_pd9423](_hw12719);
         var _loc4_:_ig8909 = new _ig8909(_loc1_,_loc2_,this._qa2185,this._bl11315,this._fr6840._md8722,_um8624(this._cl11894[_ra3303]),this._dv14621,this._re4969,this._uf2723,this._lp469,this._nl14806);
         this._nw14941 = new _ye3902(this._eq5223,_loc3_,_loc4_,this._vc4824);
         this._nw14941._db5584(_kc6395(this._nl12360[_ra3303]));
      }
      
      private function _ap15728() : void
      {
         this._io257(_bh2184._jn10028,_ra3303,_bh2184._gs12015);
      }
      
      public function _od7879() : void
      {
         if(this._lo10133 == _oy5651)
         {
            return;
         }
         if(this._qg10491 != _bh2184._jn10028)
         {
            return;
         }
         if(this._fq14010 != _bh2184._gs12015)
         {
            return;
         }
         if(!this._nw14941 is _ye3902)
         {
            return;
         }
         this._nw14941._ha80();
      }
      
      public function _eo493() : void
      {
      }
      
      public function _hv107() : void
      {
      }
      
      public function _yp15267(param1:int, param2:int, param3:Boolean) : void
      {
         this._qa2185._kh2598(param1,param2,param3);
         this._od7879();
      }
      
      public function _lr7156(param1:int, param2:int) : void
      {
         var _loc3_:_um8624 = null;
         var _loc4_:_ta2443 = this._ix11826._xc6184(param1);
         if(_loc4_ != null)
         {
            _loc3_ = _loc4_._md8722;
            _loc3_._qb5661 = param2;
            if(this._dr1773.id == param1)
            {
               this._od7879();
            }
         }
      }
      
      public function _hu4456(param1:int, param2:int) : void
      {
         var _loc3_:_um8624 = null;
         var _loc4_:_ta2443 = this._ix11826._xc6184(param1);
         if(_loc4_ != null)
         {
            _loc3_ = _loc4_._md8722;
            _loc3_._ph14059 = param2;
            if(this._dr1773.id == param1)
            {
               this._od7879();
            }
         }
      }
      
      private function _pm12758() : void
      {
         var _loc1_:MovieClip = this._cc9090[_pd9423](_fv10561);
         var _loc2_:_wa5855 = new _wa5855(this._im12039,this._ix11826,this._dv14621,this._xp513);
         this._nw14941 = new _lh8583(this._eq5223,_loc1_,_loc2_,this._vc4824);
         this._nw14941._db5584(_kc6395(this._nl12360[_ra3303]));
      }
      
      private function _re4969(param1:int, param2:_um8624) : void
      {
         _lh8583.setData(param2,param1);
         this._io257(_bh2184._jn10028,_ra3303,_bh2184._nj11859);
      }
      
      public function _xp513(param1:int) : Boolean
      {
         var _loc2_:Boolean = false;
         if(this._lo10133 == _ra3303 && this._qg10491 == _bh2184._jn10028 && this._fq14010 == _bh2184._nj11859 && this._nw14941 is _lh8583)
         {
            _loc2_ = Boolean(_lh8583(this._nw14941)._gn14675(param1));
            if(_loc2_)
            {
               this._io257(_bh2184._jn10028,_ra3303,_bh2184._gs12015);
               return true;
            }
            return false;
         }
         this._fq14010 = _bh2184._gs12015;
         return true;
      }
      
      public function _hk1337(param1:int, param2:int) : void
      {
         this._vc4824._ak11554(_vs7032._nj15369);
         this._xp513(param1);
      }
      
      private function _mc4190() : void
      {
         var _loc1_:MovieClip = this._cc9090[_pd9423](_ai9119);
         var _loc2_:_wc13296 = new _wc13296(this._cl11894[_ra3303],this._dv14621,this._ap15728,this.baseChat._ph4898,this._lp469._ou4685,this._lp469._ya380,_id1792._np546._bs5131,this._lp469._vs11457,this._lp469._mn1709,this._bl11315);
         this._nw14941 = new _gm3835(this._eq5223,_loc1_,_loc2_,this._vc4824);
         this._nw14941._db5584(_kc6395(this._nl12360[_oy5651]));
      }
      
      private function _uf2723() : void
      {
         this._io257(_bh2184._jn10028,_ra3303,_bh2184._xb9097);
      }
      
      public function _pf7495(param1:int, param2:Boolean) : void
      {
         var _loc3_:_um8624 = _um8624(this._cl11894[this._lo10133]);
         if(_loc3_.id != param1)
         {
            return;
         }
         if(this._qg10491 != _bh2184._jn10028 || this._fq14010 != _bh2184._xb9097)
         {
            return;
         }
         if(!this._nw14941 is _gm3835)
         {
            return;
         }
         this._nw14941._ha80();
      }
      
      private function _ti11006() : void
      {
         var _loc1_:MovieClip = this._cc9090[_pd9423](_ju13422);
         var _loc2_:_cg14114 = new _cg14114(this._lo10133 == _oy5651,this._cl11894[this._lo10133],this._im12039,this._dv14621);
         this._nw14941 = new _ck7617(this._eq5223,_loc1_,_loc2_,this._vc4824);
         this._nw14941._db5584(_kc6395(this._nl12360[this._lo10133]));
      }
      
      public function _va4204() : void
      {
         if(this._lo10133 == _oy5651)
         {
            return;
         }
         if(this._qg10491 != _bh2184._uc14610)
         {
            return;
         }
         if(!this._nw14941 is _ck7617)
         {
            return;
         }
         _ck7617(this._nw14941)._va4204();
      }
      
      public function _ft15508(param1:_um8624, param2:int, param3:int) : void
      {
         var _loc4_:int = int(param1._cq10213[param2]);
         _loc4_ = _loc4_ + param3;
         if(_loc4_ > 100)
         {
            _loc4_ = 100;
         }
         if(_loc4_ < 0)
         {
            _loc4_ = 0;
         }
         param1._cq10213[param2] = _loc4_;
         var _loc5_:_um8624 = _um8624(this._cl11894[this._lo10133]);
         if(_loc5_._jr9311 != param1._jr9311)
         {
            return;
         }
         if(this._qg10491 != _bh2184._uc14610)
         {
            return;
         }
         _ck7617(this._nw14941)._bt10245();
      }
      
      public function _xh2979(param1:int, param2:int) : int
      {
         if(param2 == 1)
         {
            return param1;
         }
         return param1 + _ck7617._my262 / 2;
      }
      
      private function _wj2789() : void
      {
         var _loc1_:Array = [this._im12039._oh5695,this._im12039._xh1839,this._im12039._bg5515,this._im12039._qu7792,this._im12039.COCOS,this._im12039._nq15630,this._im12039._oj4688,this._im12039._uu11842,this._im12039._iq9859,this._im12039.battleroyale,this._im12039.simondice];
         var _loc2_:_mv8563 = new _mv8563(this._im12039,this._fo4909,this._cl11894[this._lo10133],_loc1_);
         this._nw14941 = _cg12580._ew13700(this._cc9090,this._eq5223,_loc2_,this._vc4824);
         this._nw14941._db5584(_kc6395(this._nl12360[this._lo10133]));
      }
      
      private function _fo4909() : void
      {
         _cg12580._do13758();
         this._io257(_bh2184._gs2414,this._lo10133,this._fq14010);
      }
      
      public function _gx7966(param1:int, param2:Array, param3:Array, param4:Array) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:_ta2443 = null;
         var _loc9_:_um8624 = null;
         var _loc10_:_um8624 = null;
         var _loc11_:int = 0;
         while(_loc11_ < param2.length)
         {
            _loc5_ = int(param2[_loc11_]);
            _loc6_ = int(param3[_loc11_]);
            _loc7_ = int(param4[_loc11_]);
            _loc5_ = int(_qb57._ng3410(_loc5_));
            _loc8_ = this._ix11826._xc6184(param1);
            if(_loc8_ != null)
            {
               _loc10_ = _loc8_._md8722;
               _loc10_._ho1277[_loc5_ * 2] = param3;
               _loc10_._ho1277[_loc5_ * 2 + 1] = param4;
            }
            _loc9_ = _um8624(this._cl11894[this._lo10133]);
            if(this._qg10491 != _bh2184._gs2414)
            {
               return;
            }
            if(_loc9_.id == param1)
            {
               _cg12580(this._nw14941)._ie15491();
            }
            _loc11_++;
         }
      }
      
      private function _ur2133() : void
      {
         var _loc1_:MovieClip = this._cc9090[_pd9423](_xn9437);
         this._nw14941 = new _nm4323(this._eq5223,_loc1_,this._fr6840,this._dv14621,this._vc4824,this._im12039);
         this._nw14941._db5584(_kc6395(this._nl12360[_oy5651]));
      }
      
      public function _hm9534(param1:int, param2:Boolean, param3:Boolean = false) : void
      {
         if(this._lo10133 == _oy5651 && param1 == this._dr1773.id && this._qg10491 == _bh2184._is6750 && this._nw14941 is _nm4323)
         {
            _nm4323(this._nw14941)._hm9534();
            this._se14821();
            this._kc1802();
         }
         else if(this._lo10133 == _ra3303 && this._cl11894[_ra3303] != null && _um8624(this._cl11894[_ra3303]).id == param1)
         {
            this._rl2398(_um8624(this._cl11894[_ra3303]),false,true);
         }
      }
      
      public function _ha10019() : void
      {
         if(this._lo10133 == _oy5651 && this._qg10491 == _bh2184._is6750 && this._nw14941 is _nm4323)
         {
            _nm4323(this._nw14941)._iv3666();
         }
      }
      
      private function _uh8721() : void
      {
         var _loc1_:MovieClip = this._cc9090[_pd9423](_hj3354 + this._jp12604);
         this._nw14941 = new _yc11491(this._eq5223,_loc1_,this._fr6840,this._dv14621,this._vc4824,this._im12039,this._cj5296);
         this._nw14941._db5584(_kc6395(this._nl12360[_oy5651]));
      }
      
      private function _cj5296() : void
      {
         this._se15588();
         this._io257(this._qg10491,this._lo10133,this._fq14010);
      }
      
      private function _se15588() : int
      {
         if(this._jp12604 < 1)
         {
            ++this._jp12604;
         }
         else
         {
            this._jp12604 = 0;
         }
         return this._jp12604;
      }
      
      public function _ov12579(param1:int) : void
      {
         if(this._lo10133 == _oy5651 && param1 == this._dr1773.id && this._qg10491 == _bh2184._ly6133 && this._nw14941 is _yc11491)
         {
            _yc11491(this._nw14941)._ov12579();
            this._se14821();
         }
      }
      
      private function _dh6496() : void
      {
         var _loc1_:MovieClip = this._cc9090[_pd9423](_kl13748);
         var _loc2_:_ty8078 = new _ty8078(this._im12039,this._cl11894[this._lo10133],this._lo10133 == _oy5651,this._dv14621);
         this._nw14941 = new _vf12396(this._eq5223,_loc1_,_loc2_,this._vc4824);
         this._nw14941._db5584(_kc6395(this._nl12360[this._lo10133]));
      }
      
      public function _bh14714(param1:int, param2:int, param3:int, param4:String) : void
      {
         if(this._lo10133 == _oy5651)
         {
            return;
         }
         if(this._qg10491 != _bh2184._ja13179)
         {
            return;
         }
         if(!this._nw14941 is _vf12396)
         {
            return;
         }
         _vf12396(this._nw14941)._bh14714(param1,param2,param3,param4);
      }
      
      public function _jj1638(param1:_um8624, param2:String) : void
      {
         var _loc3_:_um8624 = _um8624(this._cl11894[this._lo10133]);
         param1._lk2235 = param2;
         if(_loc3_._jr9311 == param1._jr9311)
         {
            this._vc4824._gw14702();
         }
      }
      
      private function _mc6Panel() : void
      {
         var _loc1_:MovieClip = this._cc9090[_pd9423]("mcPanelComplementos2");
         this._nw14941 = new _yc11491_pets(this._eq5223,_loc1_,this._fr6840,this._dv14621,this._vc4824,this._im12039,this._cj5296);
         this._nw14941._db5584(_kc6395(this._nl12360[_oy5651]));
      }
   }
}

