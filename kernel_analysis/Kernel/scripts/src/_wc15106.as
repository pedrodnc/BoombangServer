package src
{
   import flash.display.*;
   import flash.events.*;
   import flash.external.*;
   import src.allData.*;
   import src.allData.catObjects.*;
   import src.allData.mochila.*;
   import src.allData.scene.*;
   import src.allData.scene.typeEscenarios.*;
   import src.allData.sceneObjects.*;
   import src.config.*;
   import src.loaders.*;
   import src.logs.*;
   import src.modules._hq14072;
   import src.modules.antitimos.*;
   import src.modules.baneos.*;
   import src.modules.banners.*;
   import src.modules.bpad.*;
   import src.modules.chooseIsla.*;
   import src.modules.chooseScene.*;
   import src.modules.clickBlock.*;
   import src.modules.concursos.*;
   import src.modules.creacionObjetos.*;
   import src.modules.creacionObjetos.formulas.*;
   import src.modules.creditos.*;
   import src.modules.crypto.*;
   import src.modules.enterScene.*;
   import src.modules.estadoPociones.*;
   import src.modules.interfaz.*;
   import src.modules.irAlli.*;
   import src.modules.login.*;
   import src.modules.login.choosePerson.*;
   import src.modules.member.*;
   import src.modules.multiplayerGames.*;
   import src.modules.myHomeMultiuser.*;
   import src.modules.notificaciones.*;
   import src.modules.npc.*;
   import src.modules.npc.typeNpc.*;
   import src.modules.objetos.*;
   import src.modules.privados.creacion.*;
   import src.modules.report.*;
   import src.modules.singleplayerGames._ay2766;
   import src.modules.ticketManager.*;
   import src.multiuser.*;
   import src.person.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.ga.*;
   import src.tv.boombang.application.singlePlayerGames.*;
   import src.tv.boombang.application.social.datatypes.*;
   import src.tv.boombang.application.tutorial.*;
   import src.tv.boombang.application.tutorial.gui.*;
   import src.tv.boombang.commons.utils.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.datatypes.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.popup.*;
   import src.utils.*;
   import src.utils.boombang.*;
   import src.utils.boombang.TakePhoto.*;
   
   public class _wc15106 extends _yn5945
   {
      
      private static var _instance:_wc15106;
      
      public static const _yl15765:int = 1;
      
      public static const _yl2070:int = 9;
      
      public static const _nu13691:int = 10;
      
      public static const _ic3873:int = 11;
      
      public static const _xn14629:int = 12;
      
      public static const _wc8517:int = 13;
      
      public static const _mp1582:int = 14;
      
      public static const _vg13561:int = 15;
      
      public static const _xp6491:int = 18;
      
      public static const _et7778:int = 19;
      
      public static const _hq15920:int = 20;
      
      public static const _xr14534:int = 21;
      
      public static const _hs8805:int = 22;
      
      public static const _gk1119:int = 23;
      
      public static const _xe3268:int = 24;
      
      public static const _vn9689:int = 25;
      
      public static const _rd9047:int = 27;
      
      public static const _hv2318:int = 28;
      
      public static const _yp3996:int = 29;
      
      public static const _jw2989:int = 30;
      
      public static const _xf4569:int = 31;
      
      public static const _dl354:int = 32;
      
      public static const _ir15453:int = 33;
      
      public static const _so5647:int = 34;
      
      public static const _kb2907:int = 35;
      
      public static const _xn9548:int = 36;
      
      public static const _kx4478:int = 37;
      
      public static const _ny8133:int = 38;
      
      public static const _if13942:int = 39;
      
      public static const _xg11593:int = 40;
      
      public static const _oy4742:int = 41;
      
      public static const _rj4034:int = 42;
      
      public static const _gg703:int = 43;
      
      public static const _ba6380:int = 44;
      
      public static const _gu8372:int = 45;
      
      public static const _jx2853:int = 46;
      
      public static const _gx9364:int = 47;
      
      public static const _kn1636:int = 50;
      
      public static const _tb14517:int = 54;
      
      public static const _cu5377:int = 59;
      
      public static const _rp14504:int = 60;
      
      private static const _ns11445:int = 0;
      
      private static const _sl2380:int = 1;
      
      private static const _ug3385:int = 2;
      
      private static const _hf15754:int = 3;
      
      private static const _uy1360:int = 4;
      
      private static const _dj2408:int = 5;
      
      private static const _uq1737:int = 6;
      
      private static const _qc10315:int = 7;
      
      private static const _wd9680:int = 8;
      
      private static const _xr5595:int = 9;
      
      private static const _tm8964:int = 10;
      
      private static const _xv1639:int = 11;
      
      private static const _wm4963:int = 15;
      
      private static const _nd2150:int = 99;
      
      private static const _ju4239:int = 1;
      
      private static const _wk2601:int = 2;
      
      private static const _dr7787:int = 3;
      
      private static const _xg11299:int = 4;
      
      private static const _qk1726:int = 6;
      
      private var _ke5745:Array;
      
      private var _st15031:int;
      
      private var _em1533:_sa9254;
      
      private var logs:_qn13596;
      
      private var _bn15829:_xw1367;
      
      private var _yy15308:_ga7956;
      
      private var _packetsEvent:packetEvents;
      
      private var _dr1773:_hv12530;
      
      private var enterScene:_yc4848;
      
      private var _uw7821:_vd678;
      
      private var catalogo:_dp11732;
      
      private var _gp12244:Boolean;
      
      private var _rj4051:TakePhoto;
      
      private var _fj5932:_aq7621;
      
      private var _fx11460:_dx7471;
      
      private var _ec3748:_ho13249;
      
      public var _fy119:_nr1168;
      
      private var _jm6211:_bq4015;
      
      private var _jm3064:_wc3183;
      
      public var _ym12228:_pf11103;
      
      public var _lp469:_je14031;
      
      public var chooseScene:_tj14068;
      
      private var _bx8167:_qw14876;
      
      private var _pj9483:_br8483;
      
      private var _jb3891:_id1792;
      
      private var _ab10998:_uw11952;
      
      private var choosePerson:_lq11338;
      
      private var irAlli:_bi6199;
      
      private var _iu1259:_qs5969;
      
      private var _tv9779:_xl8523;
      
      private var _ut4147:_kn4108;
      
      private var _xe10392:_ef2682;
      
      private var _tl7614:_uv13537;
      
      private var _ub13798:int;
      
      public var _um6897:Boolean;
      
      public var _ly11678:Boolean;
      
      private var _by9792:MovieClip;
      
      private var _ca5616:MovieClip;
      
      private var _cameraToggleState:Boolean = true;
      
      private var _ky12258:MovieClip;
      
      public var _pg6507:MovieClip;
      
      private var _vx12796:MovieClip;
      
      private var _fl1604:MovieClip;
      
      private var _uy10443:MovieClip;
      
      public var _hd5784:MovieClip;
      
      public var _ex5376:MovieClip;
      
      public var _lb8371:MovieClip;
      
      private var _xq15076:MovieClip;
      
      private var _wx3971:int;
      
      private var _ss5964:MovieClip;
      
      private var _ol6124:Boolean;
      
      private var _fa14047:Boolean;
      
      private var _av12663:Boolean;
      
      private var _pa12356:Boolean;
      
      private var _lg13977:MovieClip;
      
      private var _xm10115:XML;
      
      private var _fg10394:MovieClip;
      
      private var _qv3904:_ay2766;
      
      private var _xd14787:_py1516;
      
      private var _tl9155:_sd10289;
      
      private var _au5106:_ho3263;
      
      private var _eu11386:Array;
      
      private var _su2721:Array;
      
      private var _xd1506:Array;
      
      private var _vt566:Array;
      
      private var _hu14438:_pb2642;
      
      private var _kq11856:_ct6217;
      
      private var _ov13431:_su1595;
      
      private var _jf15648:_uu4509;
      
      private var _ji1095:int;
      
      private var _ae3998:uint;
      
      private var _ty2092:Boolean = false;
      
      private var _ee6137:_ij925;
      
      private var _al10771:_fh11348;
      
      public function _wc15106(param1:_ub4607)
      {
         _instance = this;
         this._al10771 = new _fh11348();
         super(param1);
      }
      
      public static function getInstance() : _wc15106
      {
         return _instance;
      }
      
      override protected function _be10590() : void
      {
         if(!_cc7688._ih15806 && _ly14211._bc4854 != "0")
         {
            return;
         }
         this.enterScene = new _yc4848(this._nu8689);
         this._xd14787 = new _py1516();
         this._dr1773 = _hv12530.getInstance();
         this._oj836();
         if(this._dr1773._wb8182())
         {
            if(_tq2768._ps6769() != null)
            {
               try
               {
                  _tq2768._ps6769().scaleMode = StageScaleMode.EXACT_FIT;
               }
               catch(e:Error)
               {
               }
            }
         }
         this._em1533 = _sa9254.getInstance();
         this._bn15829 = _xw1367.getInstance();
         this.catalogo = _dp11732.getInstance();
         this.logs = _qn13596.getInstance();
         this._yy15308 = _ga7956.getInstance();
         this._yy15308._lj15889();
         this._fj5932 = new _aq7621();
         this._fy119 = new _nr1168();
         this._jm3064 = new _wc3183();
         this._ec3748 = new _ho13249();
         this.irAlli = new _bi6199();
         this._tv9779 = new _xl8523();
         this._fx11460 = new _dx7471();
         this._hu14438 = new _pb2642();
         this._ov13431 = new _su1595();
         this._packetsEventsInit();
         this._da1945();
         _it11049.getInstance()._mo8489(this._fx11460);
         this.irAlli.addEventListener(_fx10821._ph1174,this._ep4259);
         this.enterScene.addEventListener(_kq15543._lq3774,this._lv2274);
         _gb14411.getInstance().init(this._jm3064);
         addChild(this._bn15829);
         this._ss5964 = new MovieClip();
         this._ss5964.graphics.beginFill(16777215,1);
         this._ss5964.graphics.drawRect(0,0,_cc7688._wc13865,_cc7688._kl10731);
         this._ss5964.graphics.endFill();
         this._tl9155 = new _sd10289(this);
         this._au5106 = new _ho3263(this);
         this._jf15648 = new _uu4509();
         this._em1533._lm5662 = new _uk9465(_wp11097._wi8846);
         this._dr1773._ds9725 = _wp11097._ks4561;
         this._em1533._yr9850(_wp11097.fileList);
         this._pj9483 = new _br8483();
         this._em1533._lm5662._sr16022(this._pj9483);
         this._by9792 = _wp11097._kn9534;
         this._ca5616 = _wp11097._to10749;
         this._xq15076 = _wp11097._qd5782;
         this._em1533._lm5662.hide();
         this._em1533._lm5662._bl5830 = 2;
         this._em1533._lm5662.hide();
         this._em1533._lm5662.show();
         this._em1533._lm5662.texto = this._pj9483._eq8273;
         this._ke5745 = ["notifications.xml","ledScreenLibrary.swf","audioLibrary.swf","PersonajeCayendo01.swf","paneles_notificaciones.swf","fichaAvisoGames.swf","FichaAvisoBB.swf","personsResources.swf","b-pad.swf","userSetupMenu.swf","levelup.swf","videoAdBackground.swf","fichaBienvenido.swf","fichaPrepagos.swf","fichaMarketingViral.swf","fichaBaneo.swf","fichaRecuperarCuenta.swf","FichaMember.swf","FichaNoticias.swf","fichaUnderAgeCreation.swf","cajaRegalo.swf","marikita.swf","foreGround.swf","backGround.swf","flor.swf","fichaDialogoBicho.swf","barraInferior.swf","concursosFP.swf"];
         this._ke5745 = this._ke5745.concat(this._yy15308._uv13194());
         this._ke5745 = this._ke5745.concat(this._yy15308._tv8667());
         super._be10590();
      }
      
      override protected function _wi15540(param1:Event) : void
      {
         super._wi15540(param1);
         _sw5071._xt5593.initialize();
         this._ym12228 = new _pf11103(this,this._fj5932);
         this._ym12228._xv14788(this._by9792,this._ca5616);
         _fr7798 = _ic3873;
         dispatchEvent(new Event("onApplicationComplete"));
         this._by9792 = null;
         this._au5106._gk13209();
      }
      
      public function get _cu12135() : _yc4848
      {
         return this.enterScene;
      }
      
      public function get _wb13942() : TakePhoto
      {
         return this._rj4051;
      }
      
      public function _yp14922() : void
      {
         ExternalInterface.call("console.log","Toggle camera called");
         if(this._rj4051 != null)
         {
            ExternalInterface.call("console.log","TakePhoto instance exists, visible: " + this._rj4051.isVisible());
            if(this._rj4051.isVisible())
            {
               ExternalInterface.call("console.log","Hiding camera");
               this._rj4051._hu12389();
               this._cameraToggleState = false;
            }
            else
            {
               ExternalInterface.call("console.log","Showing camera");
               this._rj4051._db5584();
               this._cameraToggleState = true;
            }
         }
         else
         {
            ExternalInterface.call("console.log","TakePhoto instance is NULL!");
         }
      }
      
      private function _oj836() : void
      {
         this._dr1773._ry9019 = _ly14211._ry9019;
         this._dr1773._dk13651 = _ly14211._dk13651;
         this._dr1773._qq2512 = _ly14211._qq2512;
         this._dr1773._qw1539 = _ly14211._qw1539;
         this._dr1773._bc4854 = _ly14211._bc4854;
         if(_cc7688._ih15806)
         {
            _sy12112._jc12790(_ly14211._nc939);
         }
      }
      
      private function _hj11501() : void
      {
         _fg1060._oq4061.init();
         this._ky12258 = (_lh7543.get(_vy3822) as _vy3822)._if2642("PersonajeCayendo01.swf",true);
         this._vx12796 = (_lh7543.get(_vy3822) as _vy3822)._if2642("b-pad.swf",true);
         this._hd5784 = (_lh7543.get(_vy3822) as _vy3822)._if2642("fichaAvisoGames.swf",true);
         this._ex5376 = (_lh7543.get(_vy3822) as _vy3822)._if2642("FichaAvisoBB.swf",true);
         this._lb8371 = (_lh7543.get(_vy3822) as _vy3822)._if2642("paneles_notificaciones.swf",true);
         this._su2721 = new Array();
         this._su2721.push((_lh7543.get(_vy3822) as _vy3822)._if2642("fichaBienvenido.swf"));
         this._su2721.push((_lh7543.get(_vy3822) as _vy3822)._if2642("fichaPrepagos.swf"));
         this._su2721.push((_lh7543.get(_vy3822) as _vy3822)._if2642("fichaMarketingViral.swf"));
         this._su2721.push((_lh7543.get(_vy3822) as _vy3822)._if2642("fichaBaneo.swf"));
         this._su2721.push((_lh7543.get(_vy3822) as _vy3822)._if2642("fichaRecuperarCuenta.swf"));
         this._su2721.push((_lh7543.get(_vy3822) as _vy3822)._if2642("FichaMember.swf"));
         this._su2721.push((_lh7543.get(_vy3822) as _vy3822)._if2642("FichaNoticias.swf"));
         this._su2721.push((_lh7543.get(_vy3822) as _vy3822)._if2642("fichaUnderAgeCreation.swf"));
         this._vt566 = new Array();
         this._vt566.push((_lh7543.get(_vy3822) as _vy3822)._if2642("backGround.swf"));
         this._vt566.push((_lh7543.get(_vy3822) as _vy3822)._if2642("flor.swf"));
         this._vt566.push((_lh7543.get(_vy3822) as _vy3822)._if2642("foreGround.swf"));
         this._vt566.push((_lh7543.get(_vy3822) as _vy3822)._if2642("marikita.swf"));
         this._vt566.push((_lh7543.get(_vy3822) as _vy3822)._if2642("fichaDialogoBicho.swf"));
         this._vt566.push((_lh7543.get(_vy3822) as _vy3822)._if2642("barraInferior.swf"));
         this._vt566.push((_lh7543.get(_vy3822) as _vy3822)._if2642("cajaRegalo.swf"));
         this._vt566.push((_lh7543.get(_vy3822) as _vy3822)._if2642("concursosFP.swf"));
         _ei4944.getInstance().init();
         this._ty2092 = true;
      }
      
      override protected function _gv13043(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:XML = null;
         var _loc4_:MovieClip = null;
         var _loc5_:int = 0;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:MovieClip = null;
         var _loc12_:MovieClip = null;
         var _loc13_:_qd13741 = null;
         var _loc14_:String = null;
         var _loc15_:Array = null;
         var _loc16_:String = null;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:MovieClip = null;
         var _loc20_:int = 0;
         var _loc21_:Array = null;
         var _loc22_:int = 0;
         var _loc23_:MovieClip = null;
         var _loc24_:MovieClip = null;
         var _loc25_:_mg605 = null;
         _mc15002._po13517();
         if(this._au5106 != null)
         {
            this._au5106._do13190();
         }
         switch(_fr7798)
         {
            case _vg13561:
               this.enterScene.loop();
               this._bn15829.loop();
               this._tl7614._in4867();
               if(this._lp469 != null)
               {
                  this._lp469.loop();
               }
               if(this._kq11856)
               {
                  this._kq11856.loop();
               }
               _loc25_ = _mg605.getInstance();
               if(_loc25_ != null)
               {
                  try
                  {
                     _loc25_.loop();
                  }
                  catch(error:Error)
                  {
                  }
               }
               if(this._iu1259 != null)
               {
                  this._iu1259.loop();
               }
               if(this._ub13798 >= 0)
               {
                  --this._ub13798;
                  if(this._ub13798 <= 0)
                  {
                     this._em1533._lm5662.hide();
                     this._ub13798 = -1;
                     if(this._lp469 != null)
                     {
                        this._lp469._ww1376();
                     }
                     if(_cc7688._io3885)
                     {
                        this._rj4051.start();
                        if(this._cameraToggleState)
                        {
                           this._rj4051._db5584();
                        }
                        this._rj4051._iw5858(this.enterScene);
                     }
                  }
               }
               this._im5753();
               return;
            case _xp6491:
               _oh3064.start(_oh3064._xo6212);
               (_lh7543.get(_vy3822) as _vy3822)._vv13029(this._ke5745,this._hj11501);
               this._em1533._lm5662.show();
               this._em1533._lm5662.show();
               this._em1533._lm5662.texto = this._pj9483._vf11493;
               _fr7798 = _xn14629;
               return;
            case _xn14629:
               if(this._ty2092)
               {
                  _oh3064.finish(_oh3064._xo6212);
                  this._nb513();
                  _bb1400._oa11569(this._ex5376);
                  if(_ho3263._xf13820())
                  {
                     _fr7798 = _ba6380;
                  }
                  else
                  {
                     _fr7798 = _rd9047;
                  }
               }
               else
               {
                  _loc9_ = 0;
                  _loc10_ = int(this._ke5745.length);
                  _loc5_ = 0;
                  while(_loc5_ < _loc10_)
                  {
                     if((_lh7543.get(_vy3822) as _vy3822)._dy7956(this._ke5745[_loc5_]))
                     {
                        _loc9_++;
                     }
                     _loc5_++;
                  }
                  this._em1533._lm5662._fn7388 = _loc9_ * 100 / _loc10_;
               }
               return;
            case _ic3873:
               this._ym12228.loop();
               this._ym12228._iw15114();
               this._ly11678 = false;
               this._ym12228._md13175();
               return;
            case _kx4478:
               this._em1533._lm5662.show();
               this._em1533._qx1635();
               this._em1533._bi8517(this._pj9483._xj8479);
               this._em1533.addElement(_mk16025._ni8909);
               this._em1533.addElement(_mk16025._gt7464);
               this._em1533.start();
               _fr7798 = _ny8133;
               return;
            case _ny8133:
               if(this._em1533._tg7298())
               {
                  this._em1533._lm5662.hide();
                  _loc11_ = MovieClip(this._em1533._xb9567(_mk16025._ni8909));
                  _loc12_ = MovieClip(this._em1533._xb9567(_mk16025._gt7464));
                  this._em1533._lm5662._wp11718(_loc12_);
                  this._py267(_loc11_);
                  _fr7798 = _if13942;
               }
               return;
            case _if13942:
               if(this.choosePerson._al1166())
               {
                  _fr7798 = _xg11593;
                  this._wx3971 = 0;
                  this._ss5964.alpha = 0;
                  this._bn15829._uc3178(this._ss5964,_xw1367._iw3373);
               }
               return;
            case _xg11593:
               ++this._wx3971;
               _loc6_ = [0,0.25,0.5,0.75,1];
               switch(this._wx3971)
               {
                  case 1:
                  case 2:
                  case 3:
                  case 4:
                     this._ss5964.alpha = _loc6_[this._wx3971];
                     break;
                  case 5:
                     this._wx3971 = 0;
                     _bb1400._dj5576();
                     switch(_lq11338._qx15566())
                     {
                        case _lq11338._dm13327:
                           this._ly11678 = true;
                           this._um6897 = false;
                        case _lq11338._od861:
                           addEventListener(Event.ENTER_FRAME,this._pf13767);
                           this._em1533._lm5662._bl5830 = _uk9465._ud4331;
                           _fr7798 = _xp6491;
                           break;
                        case _lq11338._mf5749:
                        case _lq11338._fd12447:
                           this._dr1773._jn11596 = this.choosePerson._qm8597();
                           this._dr1773.colors = this.choosePerson._ca15733();
                           _loc13_ = new _qd13741();
                           _loc13_.init();
                           _loc13_._qs3648(this._dr1773.colors,this._dr1773._jn11596);
                           _loc13_.destroy();
                           _fr7798 = _oy4742;
                     }
                     this._cg4768();
               }
               return;
            case _rd9047:
               this._iv5796();
               this._du14982(this._ky12258);
               if(this._um6897)
               {
                  this.chooseScene._ep5216(_tj14068._ee8439);
                  _fr7798 = _gg703;
               }
               else if(this._ly11678)
               {
                  this.chooseScene._ep5216(_tj14068._rt10916);
                  _fr7798 = _gg703;
               }
               else
               {
                  this.chooseScene._ep5216(_tj14068._mx3949);
                  _fr7798 = _gg703;
                  this.chooseScene._ow9881();
               }
               return;
            case _gg703:
               if(this.chooseScene._vo2826())
               {
                  _fr7798 = _xf4569;
                  this._st15031 = _uq1737;
               }
               else if(this._ly11678)
               {
                  this._em1533._lm5662.hide();
               }
               return;
            case _rj4034:
               _ef10972._cs5386(_ef10972._xb8706,"");
               this.chooseScene._ud2033();
               _fr7798 = _wc8517;
               return;
            case _wc8517:
               this._em1533._lm5662.hide();
               this._tl7614._in4867();
               this.chooseScene.loop();
               _loc2_ = this.chooseScene._jd12664;
               switch(_loc2_)
               {
                  case _tj14068._qt10717:
                     _fr7798 = _mp1582;
                     this._st15031 = _ju4239;
                     this.chooseScene._jd12664 = _tj14068._ai7182;
                     this._sr10092();
                     break;
                  case _tj14068._ih6214:
                     _fr7798 = _hq15920;
                     this.chooseScene._jd12664 = _tj14068._ai7182;
                     this._sr10092();
                     break;
                  case _tj14068._ef11790:
                     _fr7798 = _xe3268;
                     this.chooseScene._jd12664 = _tj14068._ai7182;
                     this._sr10092();
                     break;
                  case _tj14068._du15451:
                  case _tj14068._mf6462:
                     this._jb3891._hu12389();
                     _fr7798 = _kx4478;
                     switch(_loc2_)
                     {
                        case _tj14068._du15451:
                           _lq11338._vt12942(_lq11338._mf5749);
                           break;
                        case _tj14068._mf6462:
                           _lq11338._vt12942(_lq11338._fd12447);
                     }
                     this.chooseScene._jd12664 = _tj14068._ai7182;
                     this._sr10092();
               }
               return;
            case _et7778:
               this._du14982(this._ky12258);
               this.chooseScene._np14165(_tj14068._yh7642);
               _fr7798 = _rj4034;
               return;
            case _oy4742:
               ++this._wx3971;
               _loc7_ = [1,0.75,0.5,0.25,0];
               switch(this._wx3971)
               {
                  case 1:
                     this._du14982(this._ky12258);
                     this.chooseScene._np14165(_tj14068._ig3408);
                     this._ss5964.alpha = _loc7_[this._wx3971];
                     break;
                  case 2:
                  case 3:
                  case 4:
                     this._ss5964.alpha = _loc7_[this._wx3971];
                     break;
                  case 5:
                     this._bn15829._na10792(this._ss5964,_xw1367._iw3373);
                     _fr7798 = _rj4034;
               }
               return;
            case _hq15920:
               this._pw3760();
               this._bx8167._jr5664(_qw14876._yt7211);
               this._bx8167._ph10492(_qw14876._yw12985);
               _fr7798 = _xr14534;
               return;
            case _xr14534:
               if(this._bx8167._vb10246)
               {
                  this._gj2216();
                  _fr7798 = _et7778;
               }
               else if(this._bx8167._cq15352() != null)
               {
                  _bb1400._og12356();
                  this._em1533._lm5662.show();
                  _loc14_ = String(this._bx8167._cq15352()._mi6774);
                  this._em1533._qx1635();
                  this._em1533._bi8517(this._pj9483._wf2344);
                  this._em1533.addElements([_mk16025._ni4253,_mk16025._jy5402,_mk16025._th8640,_mk16025._bt1340 + _loc14_]);
                  this._em1533.start();
                  _fr7798 = _hs8805;
               }
               return;
            case _hs8805:
               if(this._em1533._tg7298())
               {
                  _loc15_ = new Array();
                  _loc16_ = String(this._bx8167._cq15352()._mi6774);
                  _loc15_[0] = MovieClip(this._em1533._xb9567(_mk16025._ni4253));
                  _loc15_[1] = MovieClip(this._em1533._xb9567(_mk16025._jy5402));
                  _loc15_[2] = MovieClip(this._em1533._xb9567(_mk16025._th8640));
                  _loc15_[3] = MovieClip(this._em1533._xb9567(_mk16025._bt1340 + _loc16_));
                  this._em1533._qx1635();
                  if(this._bx8167._hp11587._hn7664.id == this._dr1773.id || this._dr1773._vm2039 >= 13)
                  {
                     this._bx8167._jr5664(_qw14876._ew2582);
                  }
                  this._em1533._lm5662.hide();
                  this._bx8167.init(_loc15_);
                  _fr7798 = _gk1119;
               }
               return;
            case _gk1119:
               this._bx8167.loop();
               _loc2_ = int(this._bx8167._jd12664);
               switch(_loc2_)
               {
                  case _qw14876._yw14660:
                     _fr7798 = _mp1582;
                     this._st15031 = _ju4239;
                     this._gj2216();
                     break;
                  case _qw14876._nu6936:
                     _fr7798 = _et7778;
                     this._gj2216();
                     break;
                  case _qw14876._ub13729:
                     _loc17_ = int(this._bx8167._hp11587.id);
                     _loc18_ = this._bx8167._hp11587._mi6774 - 1;
                     this._ru8037(_loc17_,_loc18_);
                     _fr7798 = _ir15453;
                     this._gj2216();
               }
               return;
            case _ir15453:
               this._em1533._lm5662.show();
               this._em1533._qx1635();
               this._em1533._bi8517(this._pj9483._uf4952);
               this._em1533.addElements([_mk16025._kb5241 + this._ab10998._gs15685() + _mk16025._ih618,_mk16025._kb5241 + this._ab10998._gs15685(),_mk16025._ei4473,_mk16025._jy5402]);
               this._em1533.start();
               _fr7798 = _so5647;
               return;
            case _so5647:
               if(this._em1533._tg7298())
               {
                  _loc3_ = new XML(this._em1533._xb9567(_mk16025._kb5241 + this._ab10998._gs15685() + _mk16025._ih618));
                  _loc4_ = MovieClip(this._em1533._xb9567(_mk16025._kb5241 + this._ab10998._gs15685()));
                  _loc19_ = MovieClip(this._em1533._xb9567(_mk16025._ei4473));
                  this._fl1604 = MovieClip(this._em1533._xb9567(_mk16025._jy5402));
                  this._em1533._qx1635();
                  this._em1533._lm5662.hide();
                  this._ab10998.init(_loc4_,_loc3_,_loc19_,this._fl1604);
                  this._ab10998._db5584();
                  _fr7798 = _kb2907;
               }
               return;
            case _kb2907:
               _loc8_ = int(this._ab10998._eb3669());
               switch(_loc8_)
               {
                  case _uw11952._jj9523:
                     this._em1533._qx1635();
                     this._em1533._bi8517(this._pj9483._uf4952);
                     this._em1533.addElement(_mk16025._kb5241 + this._ab10998._gs15685() + _mk16025._ih618);
                     this._em1533.addElement(_mk16025._kb5241 + this._ab10998._gs15685());
                     this._em1533.start();
                     _fr7798 = _xn9548;
                     break;
                  case _uw11952._ac2046:
                     this._hg14456();
                     _fr7798 = _hq15920;
                     break;
                  case _uw11952._lv3702:
                     this._ut4147 = this._ab10998._ol8098();
                     this.enterScene.addEventListener(_kq15543._uy12608,this._dv5381);
                     if(_xo5398._xm12587(_xo5398._ec1664))
                     {
                        this.enterScene._ql13733(this._ut4147,"");
                     }
                     this._hg14456();
                     this._jb3891._db5584();
                     _fr7798 = _tb14517;
                     break;
                  case _uw11952._ko10718:
                     this._hg14456();
                     _fr7798 = _hq15920;
                     break;
                  default:
                     if(this._ab10998 != null)
                     {
                        this._ab10998.loop();
                     }
               }
               return;
            case _tb14517:
               return;
            case _xn9548:
               if(this._em1533._tg7298())
               {
                  _loc3_ = new XML(this._em1533._xb9567(_mk16025._kb5241 + this._ab10998._gs15685() + _mk16025._ih618));
                  _loc4_ = MovieClip(this._em1533._xb9567(_mk16025._kb5241 + this._ab10998._gs15685()));
                  this._em1533._qx1635();
                  this._ab10998._gj5619(_loc4_,_loc3_);
                  _fr7798 = _kb2907;
               }
               return;
            case _xe3268:
               this._em1533._lm5662.show();
               this._pw3760();
               this._bx8167._jr5664(_qw14876._ui9633);
               this._em1533._qx1635();
               this._em1533._bi8517(this._pj9483._wf2344);
               this._em1533.addElements([_mk16025._ni4253,_mk16025._jy5402,_mk16025._th8640]);
               _loc20_ = 1;
               while(_loc20_ <= _uw11952._cj6252)
               {
                  this._em1533.addElement(_mk16025._bt1340 + _loc20_);
                  _loc20_++;
               }
               this._em1533.start();
               _fr7798 = _vn9689;
               return;
            case _vn9689:
               if(this._em1533._tg7298())
               {
                  _loc21_ = new Array();
                  _loc21_[0] = MovieClip(this._em1533._xb9567(_mk16025._ni4253));
                  _loc21_[1] = MovieClip(this._em1533._xb9567(_mk16025._jy5402));
                  _loc21_[2] = MovieClip(this._em1533._xb9567(_mk16025._th8640));
                  _loc22_ = 1;
                  while(_loc22_ <= _uw11952._cj6252)
                  {
                     _loc21_[_loc22_ + 3 - 1] = MovieClip(this._em1533._xb9567(_mk16025._bt1340 + _loc22_));
                     _loc22_++;
                  }
                  this._em1533._qx1635();
                  this._em1533._lm5662.hide();
                  this._bx8167.init(_loc21_);
                  _fr7798 = _gk1119;
               }
               return;
            case _mp1582:
               _bb1400._dj5576();
               this._em1533._lm5662.show();
               switch(this._st15031)
               {
                  case _ju4239:
                     this._ut4147 = this.enterScene._nr6929;
                     this._uw7821 = new _vd678();
                     this._uw7821._cm2297(this._ut4147._ls5877.id,this._ut4147._fq658,this._pj9483._ef7073);
                     this._st15031 = _wk2601;
                     break;
                  case _wk2601:
                     if(this._uw7821._kn5152())
                     {
                        this._ut4147 = this.enterScene._nr6929;
                        _loc3_ = new XML(this._em1533._xb9567(_it11308._dl10426(this._ut4147._ls5877.id) + this._ut4147._fq658 + _it11308._fb12377(this._ut4147._ls5877.id)));
                        _loc4_ = MovieClip(this._em1533._xb9567(_it11308._dl10426(this._ut4147._ls5877.id) + this._ut4147._fq658));
                        this.enterScene._bc1342(_loc4_,_loc3_);
                        if(_cc7688._io3885)
                        {
                           _loc24_ = this._em1533._xb9567(_mk16025._nn13134) as MovieClip;
                           if((Boolean(_loc24_)) && this._rj4051 == null)
                           {
                              this._rj4051 = new TakePhoto(_loc24_);
                              _loc24_ = null;
                           }
                        }
                        _loc23_ = MovieClip(this._em1533._xb9567(_mk16025._ov10880));
                        this.catalogo._ge8646(_loc23_);
                        this._st15031 = _jx2853;
                     }
                     break;
                  case _jx2853:
                     this._st15031 = _dr7787;
                     break;
                  case _gx9364:
                     this._al10771.update();
                     break;
                  case _dr7787:
                     this.enterScene._cp359();
                     (_lh7543.get(_wl11587) as _wl11587)._hv9029("area" + "?area_type=" + this.enterScene._nr6929._ls5877.id + "&channel_type=" + this.enterScene._nr6929._kb5211.id + "&zone_id=" + this.enterScene._nr6929._vn12441 + "&location_id=" + this.enterScene._nr6929._un6586 + "&channel_id=" + this.enterScene._nr6929._eb11619 + "&stage_id=" + this.enterScene._nr6929._fq658);
                     this._st15031 = _xg11299;
                     break;
                  case _xg11299:
                     switch(this.enterScene._yd13621())
                     {
                        case _yc4848._xk14863:
                           _fr7798 = _vg13561;
                           break;
                        case _yc4848._ct2617:
                           switch(this.enterScene._nr6929._ls5877)
                           {
                              case _hj3512._io5446:
                              case _hj3512._dd9260:
                              case _hj3512._lk15055:
                                 _fr7798 = _et7778;
                                 break;
                              case _hj3512._jn8033:
                              case _hj3512._uq6151:
                                 _qw14876._yw12985 = this.enterScene._nr6929._vn12441;
                                 _fr7798 = _hq15920;
                           }
                           this._em1533._lm5662.hide();
                     }
               }
               return;
            case _cu5377:
               if(this.enterScene._ol8854())
               {
                  _fr7798 = _rp14504;
                  this._ee6137 = new _ij925();
                  this._ee6137.addEventListener(_ij925._ea6534,this._pn7032);
               }
               return;
            case _rp14504:
               return;
            case _hv2318:
               if(this._gp12244 == true && Boolean(this.enterScene._ol8854()) || this._gp12244 == false)
               {
                  switch(this.enterScene._nr6929._ls5877)
                  {
                     case _hj3512._io5446:
                     case _hj3512._dd9260:
                     case _hj3512._lk15055:
                     case _hj3512._jn8033:
                        _fr7798 = _et7778;
                        break;
                     case _hj3512._uq6151:
                        _qw14876._yw12985 = this.enterScene._nr6929._vn12441;
                        _fr7798 = _hq15920;
                  }
               }
               return;
            case _dl354:
               if(this.enterScene._ol8854())
               {
                  _fr7798 = _mp1582;
                  this._st15031 = _ju4239;
               }
               return;
            case _xf4569:
               switch(this._st15031)
               {
                  case _uq1737:
                     if(!this._dr1773._vj6555)
                     {
                        this._st15031 = _qc10315;
                        this._jb3891.init(this._vx12796);
                        break;
                     }
                     this._st15031 = _nd2150;
                     break;
                  case _qc10315:
                     if(this._jb3891._jt10849)
                     {
                        this._st15031 = _ns11445;
                     }
                     break;
                  case _ns11445:
                     this._st15031 = _sl2380;
                     this._jm6211 = new _bq4015();
                     this._jm6211.init();
                     this._jm6211.addEventListener(_ed314._ky8589,this._wl9687);
                     this._jm6211._qx15716();
                     break;
                  case _sl2380:
                     if(this._ol6124)
                     {
                        this._st15031 = _ug3385;
                     }
                     break;
                  case _ug3385:
                     this._st15031 = _hf15754;
                     this._jm3064.addEventListener(_ad46._tu12622,this._pq11418);
                     this._jm3064._ed9850();
                     break;
                  case _hf15754:
                     if(this._fa14047)
                     {
                        this._st15031 = _uy1360;
                     }
                     break;
                  case _uy1360:
                     this._st15031 = _dj2408;
                     this._jm3064.addEventListener(_ad46._tu12622,this._pq11418);
                     this._jm3064._pk838();
                     break;
                  case _dj2408:
                     if(this._av12663)
                     {
                        this._st15031 = _tm8964;
                     }
                     break;
                  case _tm8964:
                     this.chooseScene._mu10811();
                     this._st15031 = _xv1639;
                     break;
                  case _xv1639:
                     if(_il8993._sl16071())
                     {
                        this._st15031 = _nd2150;
                     }
                     break;
                  case _nd2150:
                     this._dr1773._vj6555 = true;
                     this.chooseScene._wt9529();
                     _bb1400._dj5576();
                     this._tl9155.init();
                     _fr7798 = _rj4034;
               }
               return;
            case _ba6380:
               this._em1533._lm5662.hide();
               this._sr10092();
               this._du14982(this._ky12258);
               this.chooseScene._ep5216(_tj14068._wy10387);
               this.chooseScene._mo5919(this._au5106._ji5399,this._au5106._il5468);
               this._tl7614._bv5027();
               PopUpManager.removeAll();
               _fr7798 = _gu8372;
               return;
            case _gu8372:
               return;
            default:
               return;
         }
      }
      
      private function _tu15179(param1:Event) : void
      {
         this._al10771.removeEventListener(_fh11348._fw13664,this._tu15179);
         this._al10771.destroy();
         this._st15031 = _dr7787;
      }
      
      private function _pf13767(param1:Event) : void
      {
         ++this._wx3971;
         var _loc2_:Array = [1,0.75,0.5,0.25,0];
         switch(this._wx3971)
         {
            case 1:
            case 2:
            case 3:
            case 4:
               this._ss5964.alpha = _loc2_[this._wx3971];
               return;
            case 5:
               this._bn15829._na10792(this._ss5964,_xw1367._iw3373);
               removeEventListener(Event.ENTER_FRAME,this._pf13767);
               return;
            default:
               return;
         }
      }
      
      private function _jm5684(param1:_fv12930) : void
      {
         var _loc2_:Array = null;
         var _loc3_:uint = 0;
         _loc2_ = param1._lv9976;
         _loc3_ = uint(String(_loc2_[0]).charCodeAt(0));
         switch(_loc3_)
         {
            case _jl5367._ha3183:
               var _loc4_:int = int(_loc2_[1]);
               if(this._lp469 != null)
               {
                  this._lp469._pq590(0);
               }
               return;
            case _ir15723._ht7426:
               if(this._lp469 != null)
               {
                  this._lp469._lh1803();
               }
               return;
            default:
               return;
         }
      }
      
      private function _lv2274(param1:_hq14072) : void
      {
         if(_xo5398._xh10884(_xo5398._vi12494))
         {
            this._nu14755();
         }
      }
      
      private function _dv5381(param1:_hq14072) : void
      {
         switch(_xo5398._ao15042)
         {
            case _xo5398._js15673:
            case _xo5398._ec1664:
               _xo5398._xh10884(_xo5398._ao15042);
               param1.stopImmediatePropagation();
               param1.stopPropagation();
               var _loc2_:Array = param1._lv9976;
               var _loc3_:int = int(_loc2_.shift());
               if(_loc3_ != -1)
               {
                  switch(_fr7798)
                  {
                     case _vg13561:
                        this._tr15412();
                        this._cd12313();
                        return;
                     case _wc8517:
                        this.chooseScene._jd12664 = _tj14068._qt10717;
                        return;
                     case _rp14504:
                        this._pn7032(null);
                        _fr7798 = _mp1582;
                        this._st15031 = _ju4239;
                        break;
                     case _gk1119:
                        break;
                     case _tb14517:
                        _fr7798 = _mp1582;
                        this._st15031 = _ju4239;
                        return;
                  }
                  this._gj2216();
                  _fr7798 = _mp1582;
                  this._st15031 = _ju4239;
                  return;
               }
               _fr7798 = _et7778;
               return;
            default:
               return;
         }
      }
      
      private function _nu8689(param1:Array) : void
      {
         this.enterScene.addEventListener(_fv12930._vu5480,this._jm5684);
         this.enterScene.addEventListener(_ir15723._aa5196,this._jm5684);
         this._ub13798 = _qk1726;
         this._su12795(param1);
         this._em1533._qx1635();
         this._jb3891._ed1033 = true;
         this._bn15829._rg1051(0);
         this._bn15829._df13671(0);
         switch(this.enterScene._nr6929._ls5877)
         {
            case _hj3512._io5446:
            case _hj3512._dd9260:
               _ef10972._cs5386(_ef10972._lf14540,this.enterScene._nr6929.name);
               return;
            case _hj3512._uq6151:
               return;
            case _hj3512._lk15055:
               _bb1400._og12356();
               this._re2328();
               return;
            default:
               return;
         }
      }
      
      private function _ep4259(param1:_fx10821) : void
      {
         var _loc2_:int = int(String(param1._lv9976[0]).charCodeAt(0));
         switch(_loc2_)
         {
            case _jl5367._ct9708:
               this._nu14755();
               return;
            default:
               return;
         }
      }
      
      private function _nu14755() : void
      {
         this._au5106._ea3740();
         switch(_fr7798)
         {
            case _vg13561:
               this._tr15412();
               this._cd12313();
               return;
            case _wc8517:
               this.chooseScene._jd12664 = _tj14068._ai7182;
               this._sr10092();
               _fr7798 = _mp1582;
               this._st15031 = _ju4239;
               return;
            case _kn1636:
               this._mc7359();
               _fr7798 = _mp1582;
               this._st15031 = _ju4239;
               return;
            case _gk1119:
               this._gj2216();
               _fr7798 = _mp1582;
               this._st15031 = _ju4239;
               return;
            case _kb2907:
               this._hg14456();
               _fr7798 = _mp1582;
               this._st15031 = _ju4239;
               return;
            case _if13942:
               this._cg4768();
               _fr7798 = _mp1582;
               this._st15031 = _ju4239;
               return;
            case _rp14504:
               this._pn7032(null);
               _fr7798 = _mp1582;
               this._st15031 = _ju4239;
               return;
            default:
               return;
         }
      }
      
      private function _im5753() : void
      {
         if(this._lp469 == null)
         {
            return;
         }
         switch(this._lp469._jd12664)
         {
            case _je14031._gt5822:
               this._gp12244 = true;
               this._tr15412();
               this._gv14852();
               return;
            case _je14031._vl14967:
               this._gp12244 = false;
               this._tr15412();
               this._gv14852();
               return;
            case _je14031._pn4979:
               this._gp12244 = false;
               this._tr15412();
               this._rd14599();
               return;
            case _je14031._gh13190:
               this._gp12244 = true;
               this._tr15412();
               this._cd12313();
               return;
            default:
               return;
         }
      }
      
      private function _tr15412() : void
      {
         if(this._ub13798 >= 0)
         {
            this._em1533._lm5662.hide();
         }
         this._dr1773._ru16169();
         _bb1400._og12356();
         this._mc7359();
         this._aw6906();
         this.enterScene._ms5255();
         this.enterScene.removeEventListener(_fv12930._vu5480,this._jm5684);
         this.enterScene.removeEventListener(_ir15723._aa5196,this._jm5684);
         this._jb3891._ed1033 = false;
         if(this._rj4051 != null)
         {
            this._rj4051._hu12389();
         }
         this._bn15829._rg1051(0);
         this._bn15829._df13671(0);
         if(this._tl7614 != null)
         {
            this._tl7614._bv5027();
         }
      }
      
      private function _gv14852() : void
      {
         this.enterScene._em15151();
         _fr7798 = _hv2318;
      }
      
      private function _rd14599() : void
      {
         this.enterScene._em15151();
         _fr7798 = _cu5377;
      }
      
      private function _cd12313() : void
      {
         _fr7798 = _mp1582;
         this._st15031 = _ju4239;
      }
      
      public function _gk4689(param1:_qi8752) : void
      {
         if(_fr7798 == _vg13561 && this._lp469._mi13335() && this.enterScene._ho5911()._nr6929._eb11619 != param1._nr6929._eb11619 || _fr7798 == _wc8517 && param1._nr6929._ls5877 != _hj3512._lk15055 || _fr7798 == _rp14504 && param1._nr6929._ls5877 != _hj3512._lk15055 || _fr7798 == _gk1119 && Boolean(this._bx8167._iq1199))
         {
            if(Boolean(this._dr1773._vl6015) && Boolean(_xo5398._xm12587(_xo5398._js15673)))
            {
               this.enterScene._ql13733(param1._nr6929,"");
               this.enterScene.addEventListener(_kq15543._uy12608,this._dv5381);
            }
         }
      }
      
      private function _nb513() : void
      {
         this._tl7614 = new _uv13537(this._lb8371,this);
      }
      
      private function _mi9383() : void
      {
         if(this._tl7614 != null)
         {
            this._tl7614.destroy();
            this._tl7614 = null;
         }
      }
      
      private function _packetsEventsInit() : void
      {
         this._packetsEvent = new packetEvents();
      }
      
      private function _da1945() : void
      {
         this._xe10392 = new _ef2682();
      }
      
      private function _le1424() : void
      {
         if(this._xe10392 != null)
         {
            this._xe10392.destroy();
            this._xe10392 = null;
         }
      }
      
      private function _su12795(param1:Array) : void
      {
         this._lp469 = new _je14031(this.enterScene._yp6754(),this._fj5932,this._fy119,this._jm3064,this.enterScene,this._fx11460,this.enterScene._ho5911(),this._xe10392,this._tl9155,this._tl7614);
         this._lp469._dc14886.show();
         this._lp469.baseChat.show();
         if(Boolean((_hv12530.getInstance() as _hv12530)._oq2035) && Boolean(this.enterScene._ho5911()._xn7478) && this.enterScene._ho5911()._oo2966 == _cf9831._hj11698)
         {
            _do5953.activate = _hv12530.getInstance()._oq2035;
            _do5953._vo14571(_vk15050._vu14881);
         }
         addChild(this._lp469);
         this._xd14787._kf5607(this.enterScene._yp6754());
         this.enterScene._dc15714(this._lp469);
         var _loc2_:_vo16097 = new _vo16097(this._lp469._gv13950,this._lp469._to4684,this._lp469._sw13842,this._ov13431,this._lp469._ge1586);
         this._kq11856 = new _ct6217(_loc2_);
         this._kq11856._st14821(param1);
      }
      
      public function _nb10991() : void
      {
         this._aw6906();
         if(this.enterScene != null)
         {
            this.enterScene._ms5255();
            this.enterScene.removeEventListener(_fv12930._vu5480,this._jm5684);
            this.enterScene.removeEventListener(_ir15723._aa5196,this._jm5684);
         }
      }
      
      private function _aw6906() : void
      {
         if(this._lp469 != null)
         {
            this._lp469.destroy();
            removeChild(this._lp469);
            this._lp469 = null;
         }
         this._fl1604 = null;
         if(this._kq11856 != null)
         {
            this._kq11856.destroy();
            this._kq11856 = null;
         }
      }
      
      public function _xd1691() : void
      {
         _fr7798 = _xp6491;
      }
      
      public function _ck9773() : void
      {
         _fr7798 = _kx4478;
      }
      
      public function _ey14488() : void
      {
         this._au5106._ka3329(_mj624._df2854,[this._ym12228._ji5399,this._ym12228._ux3999]);
         this._tu4337();
      }
      
      public function _tu4337() : void
      {
         if(this._ym12228 == null)
         {
            return;
         }
         this._ym12228.destroy();
         this._ym12228 = null;
      }
      
      private function _du14982(param1:MovieClip) : void
      {
         this.chooseScene = new _tj14068(this._fj5932,this.enterScene,param1,this._xq15076,this._su2721,this._vt566,this._xe10392,this._fy119,this._tl7614,this._tl9155);
      }
      
      public function _sr10092() : void
      {
         if(this._rj4051 != null)
         {
            this._rj4051._hu12389();
         }
         if(this.chooseScene != null)
         {
            this.chooseScene.destroy();
            this.chooseScene = null;
         }
         if(this._tl7614 != null)
         {
            this._tl7614._bv5027();
         }
      }
      
      private function _iv5796() : void
      {
         this._jb3891 = _id1792._np546;
         this._jb3891.create(this._fj5932,this._ec3748,this);
      }
      
      private function _bp9158() : void
      {
         if(this._jb3891 == null)
         {
            return;
         }
         this._jb3891.destroy();
         this._jb3891 = null;
      }
      
      private function _pw3760() : void
      {
         this._bx8167 = new _qw14876(this.enterScene);
      }
      
      public function _gj2216() : void
      {
         if(this._bx8167 == null)
         {
            return;
         }
         this._bx8167.destroy();
         this._bx8167 = null;
         this._fl1604 = null;
      }
      
      private function _pn7032(param1:Event) : void
      {
         var _loc2_:_kn4108 = null;
         if(this._ee6137)
         {
            this._ee6137.removeEventListener(_ij925._ea6534,this._pn7032);
            this._ee6137.destroy();
            this._ee6137 = null;
            _loc2_ = this.enterScene._nr6929;
            _co12486._qe13663(_hj3512._io5446.id,_loc2_._fq658);
         }
      }
      
      private function _ru8037(param1:int, param2:int) : void
      {
         this._ab10998 = new _uw11952(param1,param2);
      }
      
      public function _hg14456() : void
      {
         if(this._ab10998 == null)
         {
            return;
         }
         this._ab10998.destroy();
         this._ab10998 = null;
         this._fl1604 = null;
      }
      
      private function _py267(param1:MovieClip) : void
      {
         this.choosePerson = new _lq11338(param1,this._ca5616);
      }
      
      public function _cg4768() : void
      {
         if(this.choosePerson == null)
         {
            return;
         }
         this.choosePerson.destroy();
         this.choosePerson = null;
      }
      
      private function _mc7359() : void
      {
         if(this._iu1259 == null)
         {
            return;
         }
         this._iu1259.destroy();
         this._iu1259 = null;
      }
      
      private function _re2328() : void
      {
         this._iu1259 = new _qp15086(this._tv9779,this.enterScene,this.enterScene._ho5911()._wy2643,this._lp469);
      }
      
      private function _wl9687(param1:_ed314) : void
      {
         var _loc3_:uint = uint(String(param1._lv9976[0]).charCodeAt(0));
         switch(_loc3_)
         {
            case _jl5367._bl4651:
               var _loc2_:uint = uint(String(param1._lv9976[1]).charCodeAt(0));
               switch(0)
               {
                  case _qd13741._bo12252:
                     _to3951.getInstance()._hv5552(param1._lv9976);
                     this._jm6211.removeEventListener(_ed314._ky8589,this._wl9687);
                     this._jm6211.destroy();
                     this._jm6211 = null;
                     this._ol6124 = true;
               }
               return;
            default:
               return;
         }
      }
      
      private function _vq8445(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"GameLoop.recTramaValidateHashIntercambios",param1.toString()));
            return;
         }
         var _loc2_:int = int(param1[2]);
         if(_loc2_ == 1)
         {
            this._dr1773.antitimos = true;
         }
      }
      
      private function _pq11418(param1:_ad46) : void
      {
         var _loc2_:Array = null;
         var _loc3_:uint = uint(String(param1._lv9976[1]).charCodeAt(0));
         switch(_loc3_)
         {
            case _wc3183._fk5845:
               this._jm3064.removeEventListener(_ad46._tu12622,this._pq11418);
               this._fa14047 = true;
               _loc2_ = _xv14798._vc10061(param1._lv9976);
               _loc2_.splice(0,2);
               _dp11732.getInstance()._we14328(_loc2_);
               return;
            case _wc3183._sq12140:
               this._jm3064.removeEventListener(_ad46._tu12622,this._pq11418);
               this._av12663 = true;
               _loc2_ = _xv14798._vc10061(param1._lv9976);
               _loc2_.splice(0,2);
               _gb14411.getInstance()._ll4424(_loc2_);
               return;
            default:
               return;
         }
      }
   }
}

