package src.modules.privados
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.utils.*;
   import src.*;
   import src.allData.*;
   import src.allData.catObjects.*;
   import src.allData.color.*;
   import src.allData.scene.typeEscenarios.*;
   import src.allData.sceneObjects.*;
   import src.allData.sceneObjects.dataObjects.*;
   import src.allData.texts.*;
   import src.config.*;
   import src.logs.*;
   import src.modules.*;
   import src.modules.enterScene.*;
   import src.modules.interfaz._je14031;
   import src.modules.interfaz.baseChat.*;
   import src.modules.privados.editObject.*;
   import src.multiuser.*;
   import src.person._tl4091;
   import src.tv.boombang.application.tutorial.*;
   import src.tv.boombang.application.tutorial.gui.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   import src.utils.*;
   
   public class _xq2402 implements _pk5732
   {
      
      public static const _ai7182:int = 0;
      
      public static const _dj1098:int = 6;
      
      public static const _bx4680:int = 8;
      
      private var _ju13599:int;
      
      private var _vp454:_bx10683;
      
      private var enterScene:_yc4848;
      
      private var _hl8190:_mg605;
      
      private var _lm11883:_se7088;
      
      private var logs:_qn13596;
      
      private var _wp13295:_je14031;
      
      private var _kv15080:_na10583;
      
      private var _lq631:_ts2991;
      
      private var _rt12440:Boolean;
      
      private var _nd15957:Dictionary;
      
      private var _vk8274:_hl15578;
      
      private var _tj5176:_hl15578;
      
      private var _iu3604:MovieClip;
      
      private var _qh4523:_du9251;
      
      private var _tx14845:Array;
      
      private var _bl11315:_bq10515;
      
      private var _qs1150:XML;
      
      public function _xq2402(param1:_yc4848, param2:MovieClip, param3:MovieClip, param4:_je14031, param5:_rw2740, param6:_tl4091, param7:_bq10515, param8:XML)
      {
         super();
         this.enterScene = param1;
         this._wp13295 = param4;
         this._kv15080 = param4.baseChat;
         this._bl11315 = param7;
         this._qs1150 = param8;
         this.logs = _qn13596.getInstance();
         this._tx14845 = new Array();
         this._nd15957 = new Dictionary();
         this._qh4523 = new _du9251();
         this._jd12664 = _ai7182;
         this._vp454 = new _bx10683();
         this._vp454.addEventListener(_lb754._ym7408,this._bw11981);
         this._lm11883 = new _se7088(param2,param3,this._vp454,this,this._bl11315,param8);
         this._lm11883._ce12925(this._bl11315._wy2643);
         this._hl8190 = _mg605.getInstance();
         this._hl8190._hp13601();
         this._hl8190._fx9854(this._lm11883);
         this._hl8190.setPrivadosMultiuser(this._vp454);
         this._hl8190.setPrivadosModule(this);
         this._hl8190._ce12925(this._bl11315._wy2643);
         this._kv15080.addEventListener(_fi6049._pl11702,this._wt15687);
         this._lq631 = new _ts2991(this._vp454,param6,this._wp13295._dc14886,this,param5,this._bl11315);
         this._qc9913();
      }
      
      public function get _lp469() : _je14031
      {
         return this._wp13295;
      }
      
      public function get editObject() : _se7088
      {
         return this._lm11883;
      }
      
      public function _kd14266() : _bx10683
      {
         return this._vp454;
      }
      
      public function init(param1:Object = null) : void
      {
      }
      
      public function get _jd12664() : int
      {
         return this._ju13599;
      }
      
      public function set _jd12664(param1:int) : void
      {
         this._ju13599 = param1;
      }
      
      public function get _ud1642() : _bi12161
      {
         return this._vp454;
      }
      
      public function set _ud1642(param1:_bi12161) : void
      {
         this._vp454 = _bx10683(param1);
      }
      
      private function _qc9913() : void
      {
         var _loc1_:_hl15578 = null;
         for each(_loc1_ in this._bl11315.objects)
         {
            if(_loc1_._rn2919())
            {
               this._xi10122(_loc1_);
            }
         }
      }
      
      public function _xi10122(param1:_hl15578) : void
      {
         var _loc2_:XML = null;
         var _loc3_:Array = null;
         var _loc4_:String = _yh6510._eo5308["textsObjects"][param1._sl11700._hf10429].toXMLString();
         if(_loc4_.length > 0)
         {
            _loc2_ = new XML(_loc4_);
         }
         else
         {
            _loc2_ = <object />;
         }
         _loc2_["moverObjeto"] = this._lm11883._bx9675()._qn9498;
         var _loc5_:Boolean = Boolean(this._bl11315._xn7478);
         param1._ca5780(_loc5_,param1._cs7497,_loc2_,this._lq631,param1);
         if(param1._uw12896())
         {
            this._xc3554(param1);
         }
         if(param1._rn2919() && param1._gn15451()._BaseObjectsGetReceiveClicks())
         {
            this._hl8190._os15029(param1);
         }
         var _loc6_:Array = this._ex1467(param1._hw14129);
         for each(_loc3_ in _loc6_)
         {
            this._bw11981(new _lb754(_lb754._ym7408,_loc3_));
         }
         param1.graphics.tabEnabled = false;
         param1.graphics.tabChildren = false;
      }
      
      private function _xc3554(param1:_hl15578) : void
      {
         var _loc2_:BaseObjectsMascota = null;
         var _loc3_:MovieClip = null;
         if(this._bl11315._xn7478)
         {
            _loc2_ = param1._hn6442();
            _loc3_ = _loc2_._BaseObjectsMascotaGetMovieClipIconoMascota();
            if(_loc3_ != null)
            {
               param1._uy6526(_loc3_);
               this._wp13295.baseChat._lf5932(_loc3_,param1._hw14129);
            }
         }
      }
      
      public function destroy() : void
      {
         if(this._kv15080 != null)
         {
            this._kv15080.removeEventListener(_fi6049._pl11702,this._wt15687);
            this._kv15080 = null;
         }
         this._wp13295 = null;
         this._hl8190._fx9854(null);
         this._hl8190.setPrivadosMultiuser(null);
         this._hl8190.setPrivadosModule(null);
         this._vp454.removeEventListener(_lb754._ym7408,this._bw11981);
         this._vp454.destroy();
         this._vp454 = null;
         this._tx14845.length = 0;
         this.seleccionarMascota(-1);
         this._lm11883.destroy();
         this._lm11883 = null;
      }
      
      private function _wt15687(param1:_fi6049) : void
      {
         var _loc2_:int = param1._ic8735;
         if(this._vk8274 != null && this._vk8274._hw14129 == _loc2_ && Boolean(this._vk8274._hn6442()._BaseObjectsMascotaGetSeleccionable()))
         {
            this.seleccionarMascota(-1);
         }
         else if(_loc2_ >= 0)
         {
            this.seleccionarMascota(_loc2_);
         }
         else if(this._vk8274 != null)
         {
            this.seleccionarMascota(-1);
         }
      }
      
      public function seleccionarMascota(param1:int) : void
      {
         var _loc2_:BaseObjectsMascota = null;
         if(this._vk8274 != null)
         {
            if(this._wp13295.baseChat != null)
            {
               this._wp13295.baseChat._ew82(this._vk8274._hw14129,false);
            }
            this._vk8274._hn6442()._BaseObjectsMascotaSetMascotaSeleccionada(false);
            this._vk8274 = null;
            this._ck10853();
         }
         var _loc3_:_hl15578 = _hl15578(this._bl11315._yk9656(param1));
         if(_loc3_ != null)
         {
            if(_loc3_._uw12896())
            {
               _loc2_ = _loc3_._hn6442();
               _loc2_._BaseObjectsMascotaOnIconoPresionado();
               if(_loc2_._BaseObjectsMascotaGetSeleccionable())
               {
                  this._wp13295.baseChat._ew82(param1,true);
                  this._vk8274 = _loc3_;
                  _loc2_._BaseObjectsMascotaSetMascotaSeleccionada(true);
                  if(_loc2_._BaseObjectsMascotaGetDesplazaConClick())
                  {
                     this._at10218(_loc2_._BaseObjectsMascotaGetLimitesDesplazamientoConClick(),this._vk8274);
                  }
               }
               if(Boolean(this._bl11315._xn7478) && this._hl8190._do11186() == false)
               {
                  this._lm11883._ah9037(_loc3_);
                  this._it1203();
               }
            }
         }
      }
      
      private function _ck10853() : void
      {
         if(this._iu3604 != null)
         {
            this._iu3604.removeEventListener(MouseEvent.MOUSE_DOWN,this._bd2608);
            this._iu3604.removeEventListener(MouseEvent.MOUSE_DOWN,this._qk9462);
            _xw1367.getInstance()._na10792(this._iu3604,_xw1367._co9468);
            _xw1367.getInstance()._na10792(this._iu3604,_xw1367._jf1741);
            this._iu3604 = null;
         }
         this._tj5176 = null;
      }
      
      private function _at10218(param1:int, param2:_hl15578) : void
      {
         this._ck10853();
         if(this._iu3604 == null)
         {
            this._iu3604 = new MovieClip();
            this._iu3604.graphics.beginFill(16777215);
            this._iu3604.graphics.drawRect(0,0,_cc7688._wc13865,_cc7688._kl10731);
            this._iu3604.graphics.endFill();
            this._iu3604.alpha = 0;
         }
         switch(param1)
         {
            case BaseObjectsMascota.LIMITES_DESPLAZAMIENTO_PANTALLA:
               _xw1367.getInstance()._uc3178(this._iu3604,_xw1367._co9468);
               this._iu3604.mouseEnabled = true;
               this._iu3604.addEventListener(MouseEvent.MOUSE_DOWN,this._bd2608);
               break;
            case BaseObjectsMascota.LIMITES_DESPLAZAMIENTO_GRILLA:
               _xw1367.getInstance()._uc3178(this._iu3604,_xw1367._co9468);
               this._iu3604.mouseEnabled = true;
               this._iu3604.addEventListener(MouseEvent.MOUSE_DOWN,this._qk9462);
               break;
            case BaseObjectsMascota.LIMITES_DESPLAZAMIENTO_PANTALLA_INFERIOR:
               _xw1367.getInstance()._uc3178(this._iu3604,_xw1367._jf1741);
               this._iu3604.mouseEnabled = true;
               this._iu3604.addEventListener(MouseEvent.MOUSE_DOWN,this._bd2608);
         }
         this._tj5176 = param2;
      }
      
      private function _bd2608(param1:MouseEvent) : void
      {
         if(param1.localX > 40 && param1.localX < _cc7688._wc13865 - 40 && param1.localY > 40 && param1.localY < _cc7688._kl10731 - 80)
         {
            if(Boolean(this._vk8274._uw12896()) && this._vk8274._hn6442()._BaseObjectsMascotaGetDesplazaConClickAutomatico() == false)
            {
               this._vk8274._hn6442()._BaseObjectsMascotaDesplazarHacia(param1.localX,param1.localY);
            }
            else
            {
               this._vp454._ov3538(this._vk8274._hw14129,param1.localX,param1.localY);
            }
         }
         param1.stopImmediatePropagation();
      }
      
      private function _qk9462(param1:MouseEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:int = param1.stageX;
         var _loc8_:int = param1.stageY;
         var _loc9_:Point = _il6324._bi7400(new Point(_loc7_,_loc8_));
         if(_loc9_.x < 0 || _loc9_.x >= this._bl11315._ek6850 || _loc9_.y < 0 || _loc9_.y >= this._bl11315._hb91)
         {
            return;
         }
         if(this._bl11315.matrix[_loc9_.y][_loc9_.x] == 1)
         {
            return;
         }
         if(Boolean(this._vk8274._uw12896()) && this._vk8274._hn6442()._BaseObjectsMascotaGetDesplazaConClickAutomatico() == false)
         {
            this._vk8274._hn6442()._BaseObjectsMascotaDesplazarHacia(_loc9_.x,_loc9_.y);
         }
         else
         {
            _loc2_ = this._qh4523._qh4523(this._vk8274._lw13647._ch15801,this._vk8274._lw13647._oc14271,this._vk8274._jl1688,int(_loc9_.x),int(_loc9_.y),this._bl11315);
            if(_loc2_ != null)
            {
               _loc3_ = int(_loc2_.length);
               _loc4_ = "";
               _loc5_ = 0;
               while(_loc5_ < _loc3_)
               {
                  _loc6_ = String(_loc2_[_loc5_]);
                  if(_loc2_[_loc5_] < 10 && _loc5_ % 3 != 2)
                  {
                     _loc6_ = "0" + _loc6_;
                  }
                  _loc4_ += _loc6_;
                  _loc5_++;
               }
               this._vp454._jh13639(this._vk8274._hw14129,_loc4_);
               this._wp13295._mc26(param1.stageX,param1.stageY);
            }
         }
         param1.stopImmediatePropagation();
      }
      
      public function loop() : void
      {
         this._ul14261();
      }
      
      public function _ge9034() : void
      {
         if(this._lm11883 != null)
         {
            this._lm11883._hu12389();
         }
      }
      
      public function _it1203() : void
      {
         this._wp13295._it1203();
      }
      
      private function _ul14261() : void
      {
         var _loc1_:_ko1738 = null;
         var _loc2_:_hl15578 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc8_:int = this._tx14845.length - 1;
         while(_loc8_ >= 0)
         {
            _loc1_ = _ko1738(this._tx14845[_loc8_]);
            _loc2_ = _hl15578(this._bl11315._yk9656(_loc1_._hw14129));
            if(_loc2_ != null)
            {
               _loc3_ = (_loc1_._ta2134 - _loc1_._jo12299) * _loc1_._yx7455;
               _loc4_ = (_loc1_._ql1472 - _loc1_._qu12668) * _loc1_._yx7455;
               _loc5_ = _loc1_._jo12299 + _loc3_;
               _loc6_ = _loc1_._qu12668 + _loc4_;
               if(Math.abs(_loc5_ - _loc1_._ta2134) > 0.8 || Math.abs(_loc6_ - _loc1_._ql1472) > 0.8)
               {
                  if(_loc2_._rn2919() == false || _loc2_._rn2919() == true && _loc2_._gn15451()._BaseObjectsAllowsFlip())
                  {
                     if(_loc3_ < 0)
                     {
                        _loc2_._sr13322(0,[]);
                     }
                     else
                     {
                        _loc2_._sr13322(1,[]);
                     }
                  }
                  _loc1_._jo12299 = _loc5_;
                  _loc1_._qu12668 = _loc6_;
                  _loc2_._ji16036(_loc5_,_loc6_,null);
                  if(_loc1_._ta2134 - _loc1_._ag7290 != 0)
                  {
                     var _loc7_:int = Math.abs((_loc1_._jo12299 - _loc1_._ag7290) * 100 / (_loc1_._ta2134 - _loc1_._ag7290));
                     _loc7_ = int(0 / 10) * 10;
                     if(_loc7_ > _loc1_._xs8094)
                     {
                        _loc1_._xs8094 = 0;
                        if(_loc2_._xn1165())
                        {
                           _loc2_._bl15112()._BaseObjectsAnimadoSetPorcentajeDesplazamientoCompletado(0);
                        }
                     }
                  }
               }
               else
               {
                  if(_loc2_._xn1165())
                  {
                     _loc2_._bl15112()._BaseObjectsAnimadoSetPorcentajeDesplazamientoCompletado(100);
                     _loc2_._bl15112()._BaseObjectsAnimadoSetDesplazando(false);
                  }
                  _loc2_._ji16036(_loc1_._ta2134,_loc1_._ql1472,null);
                  this._tx14845.splice(_loc8_,1);
               }
            }
            else
            {
               this._tx14845.splice(_loc8_,1);
            }
            _loc8_--;
         }
      }
      
      private function _vg6240(param1:int) : void
      {
         var _loc2_:_ko1738 = null;
         var _loc3_:int = this._tx14845.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = _ko1738(this._tx14845[_loc3_]);
            if(_loc2_._hw14129 == param1)
            {
               this._tx14845.splice(_loc3_,1);
               return;
            }
            _loc3_--;
         }
      }
      
      public function showPanelDatosPlanta(param1:int, param2:DatosDePlanta) : void
      {
         this._lp469._jv3334(param1,param2);
      }
      
      public function getCuadroTextosPlantas(param1:int) : MovieClip
      {
         if(this._lp469._ng15349 != null)
         {
            return this._lp469._ng15349._mu8213(param1);
         }
         return null;
      }
      
      public function hidePanelDatosPlanta() : void
      {
         if(this._lp469 == null)
         {
            return;
         }
         this._lp469.hidePanelDatosPlanta();
      }
      
      public function regarPlanta(param1:int) : void
      {
         this._vp454._rk1126(param1);
      }
      
      public function activarPlanta(param1:int) : void
      {
         this._vp454._ht563(param1);
      }
      
      public function enterObject(param1:_hl15578) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:_kn4108 = null;
         if(this._bl11315._ed3523 == false && (Boolean(this._bl11315._xn7478) || param1._al11479()._BaseObjectsEnterGetAbierto() && param1._al11479()._BaseObjectsEnterGetCantidadUsuarios() < param1._al11479()._BaseObjectsEnterGetMaximoUsuarios()))
         {
            if(this._wp13295._mi13335())
            {
               _loc2_ = param1._al11479()._BaseObjectsEnterGetTypeArea();
               _loc3_ = param1._al11479()._BaseObjectsEnterGetChannelType();
               _loc4_ = param1._al11479()._BaseObjectsEnterGetidScene();
               _loc5_ = param1._al11479()._BaseObjectsEnterGetNumeroEscenario();
               _loc6_ = new _kn4108();
               _loc6_._ls5877 = _hj3512._bn928(_loc2_);
               _loc6_._kb5211 = _rj12650._bn928(_loc3_);
               _loc6_._vn12441 = this._bl11315._nr6929._vn12441;
               _loc6_._un6586 = this._bl11315._nr6929._un6586;
               _loc6_._eb11619 = _loc4_;
               _loc6_._fq658 = _loc5_;
               _loc6_.name = "";
               this._wp13295._kw12357(_loc6_,"");
            }
         }
      }
      
      public function _sl775(param1:int, param2:String) : void
      {
         if(this._vp454 != null)
         {
            this._vp454._sl775(param1,param2);
         }
      }
      
      public function _gm8800(param1:int, param2:int) : void
      {
         if(this._vp454 != null)
         {
            this._vp454._gm8800(param1,param2);
         }
      }
      
      public function _pr6590(param1:int) : void
      {
         if(this._vp454 != null)
         {
            this._vp454._pr6590(param1);
         }
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
                  case _bx10683._ex15150:
                     this._ou9065(_loc4_);
                     break;
                  case _bx10683._xu15976:
                     this._go5888(_loc4_);
                     break;
                  case _bx10683._ca2208:
                     this._eo8071(_loc4_);
                     break;
                  case _bx10683._tb58:
                     this._we13686(_loc4_);
                     break;
                  case _bx10683._we10930:
                     this._bs3525(_loc4_);
                     break;
                  case _bx10683._ww2730:
                     this._jf13712(_loc4_);
                     break;
                  case _bx10683._fr12652:
                     this._ko15933(_loc4_);
                     break;
                  case _bx10683._bb12887:
                     this._tk11581(_loc4_);
                     break;
                  case _bx10683._ej10206:
                     this._jv10681(_loc4_);
                     break;
                  case _bx10683._ht6910:
                     this._og13164(_loc4_);
                     break;
                  case _bx10683._hn7274:
                     this._rf10611(_loc4_);
                     break;
                  case _bx10683._sd3498:
                     this._ec5688(_loc4_);
                     break;
                  case _bx10683._dr13052:
                     this._ho5642(_loc4_);
                     break;
                  case _bx10683._sh14839:
                     this._vg11835(_loc4_);
                     break;
                  case _bx10683._tv1361:
                     this._fj3566(_loc4_);
                     break;
                  case _bx10683._oa1054:
                     this._ys14137(_loc4_);
                     break;
                  case _bx10683._yc6766:
                     this._fp6758(_loc4_);
                     break;
                  case _bx10683._sp9236:
                     this._ym10821(_loc4_);
                     break;
                  case _bx10683._tn2046:
                     this._cd8603(_loc4_);
                     break;
                  case _bx10683._xp5025:
                     this._fd4879(_loc4_);
                     break;
                  case _bx10683._ow15031:
                     this._qr12946(_loc4_);
                     break;
                  case _bx10683._al5889:
                     this._ke2126(_loc4_);
                     break;
                  case _bx10683._bu4021:
                     this._dj1537(_loc4_);
                     break;
                  case _bx10683._oa15741:
                     this._ob3737(_loc4_);
                     break;
                  case _bx10683._ya9449:
                     this._uo6701(_loc4_);
                     break;
                  case _bx10683._ff2507:
                     this._lg15549(_loc4_);
                     break;
                  case _bx10683._rg13968:
                     this._td10451(_loc4_);
                     break;
                  case _bx10683._qo3914:
                     this._dt12287(_loc4_);
                     break;
                  case _bx10683._sg8537:
                     this._tw15851(_loc4_);
                     break;
                  case _bx10683._of3819:
                     this._os9519(_loc4_);
                     break;
                  case _bx10683._vk15833:
                     this._bk8711(_loc4_);
                     break;
                  case _te13472._qy2519:
                     this._nt14280(_loc4_);
               }
               return;
            default:
               return;
         }
      }
      
      private function _jd5235(param1:int, param2:Array) : void
      {
         if(this._nd15957[param1] == null)
         {
            this._nd15957[param1] = new Array();
         }
         (this._nd15957[param1] as Array).push(param2);
      }
      
      private function _xw6381(param1:int) : void
      {
         if(this._nd15957[param1] != null)
         {
            delete this._nd15957[param1];
         }
      }
      
      private function _ex1467(param1:int) : Array
      {
         var _loc2_:Array = this._nd15957[param1];
         if(_loc2_ == null)
         {
            _loc2_ = new Array();
         }
         this._xw6381(param1);
         return _loc2_;
      }
      
      private function _tw15851(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaAbrirPuerta",param1.toString()));
            return;
         }
         var _loc3_:int = int(param1[2]);
         switch(_loc3_)
         {
            case 1:
               if(param1.length < 4)
               {
                  this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaAbrirPuerta",param1.toString()));
                  return;
               }
               var _loc2_:int = int(param1[3]);
               this._wp13295._cr11263(0);
               return;
               break;
            case -1:
            case 0:
               this._wp13295._up14749();
               return;
            default:
               return;
         }
      }
      
      private function _go5888(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.moveObject",param1.toString()));
            return;
         }
         var _loc6_:int = int(param1[2]);
         if(_loc6_ > 0)
         {
            if(param1.length < 6)
            {
               this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.moveObject",param1.toString()));
               return;
            }
            var _loc2_:int = int(param1[3]);
            var _loc3_:int = int(param1[4]);
            var _loc4_:int = int(param1[5]);
            var _loc5_:Array = _yq8362.splitInt(String(param1[6]),",");
            this._hl8190._vw7618(_loc6_,0,0,0,new Tile(null[0],null[1]),null,true);
         }
         else
         {
            this._hl8190._lb15133(0);
         }
         this._hl8190._hp13601();
      }
      
      private function _tk11581(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaFlyObject",param1.toString()));
            return;
         }
         var _loc9_:int = int(param1[2]);
         if(_loc9_ > 0)
         {
            if(param1.length < 5)
            {
               this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaFlyObject",param1.toString()));
               return;
            }
            var _loc2_:int = int(param1[3]);
            var _loc3_:int = int(param1[4]);
            var _loc4_:_hl15578 = _hl15578(this._bl11315._yk9656(_loc9_));
            if(_loc4_ != null)
            {
               if(null._xn1165())
               {
                  null._bl15112()._BaseObjectsAnimadoSetDesplazando(true);
                  null._bl15112()._BaseObjectsAnimadoSetPorcentajeDesplazamientoCompletado(0);
               }
               var _loc5_:BaseObjectsAnimado = null;
               if(null._xn1165())
               {
                  _loc5_ = null._bl15112();
               }
               var _loc6_:Boolean = false;
               var _loc7_:* = int(this._tx14845.length - 1);
               while(true)
               {
                  var _loc8_:_ko1738 = _ko1738(this._tx14845[0]);
                  if(_loc8_._hw14129 == _loc9_)
                  {
                     break;
                  }
                  _loc7_ = 0 - 1;
               }
               null._ag7290 = null._jo12299 = null.x;
               null._iv10262 = null._qu12668 = null.y;
               null._ta2134 = 0;
               null._ql1472 = 0;
               null._xs8094 = 0;
               _loc6_ = true;
               this._tx14845.push(new _ko1738(_loc9_,null.x,null.y,0,0));
            }
            else
            {
               this.logs._kp3815(new _sy12041(_qn13596._dj10628,"PrivadosModule.recTramaFlyObj","invalid idPose=" + _loc9_));
            }
         }
      }
      
      private function _jv10681(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaFireObj",param1.toString()));
            return;
         }
         var _loc4_:int = int(param1[2]);
         if(_loc4_ > 0)
         {
            if(param1.length < 4)
            {
               this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaFlyObject",param1.toString()));
               return;
            }
            var _loc2_:int = int(param1[3]);
            var _loc3_:_hl15578 = _hl15578(this._bl11315._yk9656(_loc4_));
         }
      }
      
      private function _og13164(param1:Array) : void
      {
         if(param1.length < 4)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaTopoObj",param1.toString()));
            return;
         }
         var _loc3_:int = int(param1[2]);
         var _loc4_:int = int(param1[3]);
         if(_loc3_ > 0)
         {
            var _loc2_:_hl15578 = _hl15578(this._bl11315._yk9656(_loc3_));
         }
      }
      
      private function _rf10611(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaFroggyObj",param1.toString()));
            return;
         }
         var _loc5_:int = int(param1[2]);
         if(_loc5_ > 0)
         {
            if(param1.length < 5)
            {
               this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaFroggyObj",param1.toString()));
               return;
            }
            var _loc2_:int = int(param1[3]);
            var _loc3_:int = int(param1[4]);
            var _loc4_:_hl15578 = _hl15578(this._bl11315._yk9656(_loc5_));
            if(_loc4_ != null)
            {
               if(Boolean(null._uw12896()) && Boolean(null._ub10189))
               {
                  null._hn6442()._BaseObjectsMascotaSetAccionFroggy(0,0);
               }
               else
               {
                  this._jd5235(_loc5_,_xv14798._vc10061(param1));
               }
            }
         }
      }
      
      private function _ec5688(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaLoroObj",param1.toString()));
            return;
         }
         var _loc4_:int = int(param1[2]);
         if(_loc4_ > 0)
         {
            if(param1.length < 4)
            {
               this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaLoroObj",param1.toString()));
               return;
            }
            var _loc2_:String = String(param1[3]);
            var _loc3_:_hl15578 = _hl15578(this._bl11315._yk9656(_loc4_));
         }
      }
      
      private function _ho5642(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaLoroUpdateObj",param1.toString()));
            return;
         }
         var _loc5_:int = int(param1[2]);
         if(_loc5_ > 0)
         {
            if(param1.length < 5)
            {
               this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaLoroUpdateObj",param1.toString()));
               return;
            }
            var _loc2_:int = int(param1[3]);
            var _loc3_:String = String(param1[4]);
            var _loc4_:_hl15578 = _hl15578(this._bl11315._yk9656(_loc5_));
            if(_loc4_ != null)
            {
               if(Boolean(null._uw12896()) && Boolean(null._ub10189))
               {
                  null._hn6442()._BaseObjectsMascotaSetAccionUpdateLoro(0,null);
               }
               else
               {
                  this._jd5235(_loc5_,_xv14798._vc10061(param1));
               }
            }
         }
      }
      
      private function _fd4879(param1:Array) : void
      {
         if(param1.length < 5)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaActionObject",param1.toString()));
            return;
         }
         var _loc5_:int = int(param1[2]);
         if(_loc5_ > 0)
         {
            var _loc2_:int = int(param1[3]);
            var _loc3_:int = int(param1[4]);
            var _loc4_:_hl15578 = _hl15578(this._bl11315._yk9656(_loc5_));
            if(_loc4_ != null)
            {
               if(Boolean(null._rn2919()) && Boolean(null._ub10189))
               {
                  null._gn15451()._BaseObjectsOnAccionGenerica(0,0);
               }
               else
               {
                  this._jd5235(_loc5_,_xv14798._vc10061(param1));
               }
            }
         }
      }
      
      private function _qr12946(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaPerfumar",param1.toString()));
            return;
         }
         var _loc3_:int = int(param1[2]);
         if(_loc3_ > 0)
         {
            var _loc2_:_hl15578 = _hl15578(this._bl11315._yk9656(_loc3_));
         }
      }
      
      private function _fj3566(param1:Array) : void
      {
         var _loc2_:_hl15578 = null;
         if(param1.length < 9)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaPasswordObject",param1.toString()));
            return;
         }
         var _loc3_:int = int(param1[2]);
         var _loc4_:int = int(param1[3]);
         var _loc5_:int = int(param1[4]);
         var _loc6_:int = int(param1[5]);
         var _loc7_:int = int(param1[6]);
         var _loc8_:int = int(param1[7]);
         var _loc9_:String = param1[8];
         if(_loc7_ > 0)
         {
            for each(_loc2_ in this._bl11315.objects)
            {
               if(_loc2_._sl11700._dv13852 == _uq7753._pc8528 && _loc2_._cs7497.length >= 1)
               {
                  if(_loc2_._id8009() && _loc2_._ub10189)
                  {
                     if(_loc2_._al11479()._BaseObjectsEnterGetidScene() == _loc7_)
                     {
                        _loc2_._al11479()._BaseObjectsEnterSetAbierto(_loc9_ == "");
                        break;
                     }
                  }
                  else
                  {
                     this._jd5235(_loc2_._hw14129,_xv14798._vc10061(param1));
                  }
               }
            }
         }
      }
      
      private function _ys14137(param1:Array) : void
      {
         if(param1.length < 9)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaPasswordScene",param1.toString()));
            return;
         }
         var _loc2_:int = int(param1[2]);
         var _loc3_:int = int(param1[3]);
         var _loc4_:int = int(param1[4]);
         var _loc5_:int = int(param1[5]);
         var _loc6_:int = int(param1[6]);
         var _loc7_:int = int(param1[7]);
         var _loc8_:String = param1[8];
         if(_loc6_ > 0)
         {
            if(this._bl11315._nr6929._eb11619 == _loc6_)
            {
               this._bl11315._xe10855 = _loc8_ != "";
               if(this._wp13295 != null && this._wp13295.baseChat != null)
               {
                  this._wp13295.baseChat._du10593();
               }
            }
         }
      }
      
      private function _fp6758(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaUsersScene",param1.toString()));
            return;
         }
         var _loc4_:int = int(param1[2]);
         if(_loc4_ > 0)
         {
            if(param1.length < 4)
            {
               this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaUsersScene",param1.toString()));
               return;
            }
            var _loc2_:int = int(param1[3]);
            for each(var _loc3_ in this._bl11315.objects)
            {
               if(null._sl11700._dv13852 == _uq7753._pc8528 && null._cs7497.length >= 1 && int(null._cs7497[0]) == _loc4_)
               {
                  if(Boolean(null._id8009()) && Boolean(null._ub10189))
                  {
                     if(null._al11479()._BaseObjectsEnterGetNumeroEscenario() == _loc4_)
                     {
                        null._al11479()._BaseObjectsEnterSetCantidadUsuarios(0);
                        break;
                     }
                  }
                  else
                  {
                     this._jd5235(null._hw14129,_xv14798._vc10061(param1));
                  }
               }
            }
         }
      }
      
      private function _ym10821(param1:Array) : void
      {
         this._wp13295._go7526();
      }
      
      private function _vg11835(param1:Array) : void
      {
         var _loc2_:int = int(String(param1[2]).charCodeAt(0));
         switch(_loc2_)
         {
            case _bx10683._gh8714:
               this._wp9207(param1);
               return;
            case _bx10683._dp14575:
               this._so6436(param1);
               return;
            default:
               return;
         }
      }
      
      private function _wp9207(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:_hl15578 = null;
         param1.splice(0,3);
         var _loc5_:Array = param1.splice(0,2);
         while(_loc5_.length == 2)
         {
            _loc2_ = int(_loc5_[0]);
            _loc3_ = int(_loc5_[1]);
            _loc4_ = _hl15578(this._bl11315._yk9656(_loc2_));
            if(_loc4_ != null)
            {
               if(_loc4_._uw12896())
               {
                  _loc4_._hn6442()._BaseObjectsMascotaSetMascotaAction(_loc3_);
               }
            }
            _loc5_ = param1.splice(0,2);
         }
      }
      
      private function _so6436(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc3_:_hl15578 = null;
         var _loc4_:int = 0;
         var _loc5_:Point = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         param1.splice(0,3);
         var _loc11_:Array = param1.splice(0,1);
         while(_loc11_.length == 1)
         {
            _loc2_ = int(_loc11_[0]);
            _loc3_ = _hl15578(this._bl11315._yk9656(_loc2_));
            if(_loc3_ != null)
            {
               if(_loc3_._uw12896())
               {
                  if(_loc3_._hn6442()._BaseObjectsMascotaGetDesplazaConClick() == true && _loc3_._hn6442()._BaseObjectsMascotaGetLimitesDesplazamientoConClick() == BaseObjectsMascota.LIMITES_DESPLAZAMIENTO_GRILLA)
                  {
                     _loc4_ = 200;
                     _loc5_ = new Point(int(Math.random() * this._bl11315._ek6850),int(Math.random() * this._bl11315._hb91));
                     while(_loc5_.x >= this._bl11315._ek6850 || _loc5_.y >= this._bl11315._hb91 || this._bl11315.matrix[_loc5_.y][_loc5_.x] == 1)
                     {
                        _loc5_ = new Point(int(Math.random() * this._bl11315._ek6850),int(Math.random() * this._bl11315._hb91));
                        if(--_loc4_ <= 0)
                        {
                           return;
                        }
                     }
                     if(_loc5_.x < this._bl11315._ek6850 && _loc5_.y < this._bl11315._hb91 && this._bl11315.matrix[_loc5_.y][_loc5_.x] == 0)
                     {
                        _loc6_ = this._qh4523._qh4523(_loc3_._lw13647._ch15801,_loc3_._lw13647._oc14271,_loc3_._jl1688,int(_loc5_.x),int(_loc5_.y),this._bl11315);
                        if(_loc6_ != null)
                        {
                           _loc7_ = int(_loc6_.length);
                           _loc8_ = "";
                           _loc9_ = 0;
                           while(_loc9_ < _loc7_)
                           {
                              _loc10_ = String(_loc6_[_loc9_]);
                              if(_loc6_[_loc9_] < 10 && _loc9_ % 3 != 2)
                              {
                                 _loc10_ = "0" + _loc10_;
                              }
                              _loc8_ += _loc10_;
                              _loc9_++;
                           }
                           this._vp454._jh13639(_loc3_._hw14129,_loc8_);
                        }
                     }
                  }
               }
            }
            _loc11_ = param1.splice(0,1);
         }
      }
      
      private function _os9519(param1:Array) : void
      {
         param1.shift();
         param1.shift();
         var _loc2_:int = int(param1.shift());
         var _loc3_:int = int(param1.shift());
         var _loc4_:int = int(param1.shift());
         var _loc5_:_hl15578 = _hl15578(this._bl11315._yk9656(_loc2_));
         if(_loc5_ != null)
         {
            if(_loc5_._xn1165())
            {
               _loc5_._bl15112()._BaseObjectsAnimadoSincronizarGift(_loc3_,_loc4_);
            }
         }
      }
      
      private function _bk8711(param1:Array) : void
      {
         param1.shift();
         param1.shift();
         var _loc2_:int = int(param1.shift());
         var _loc3_:_hl15578 = _hl15578(this._bl11315._yk9656(_loc2_));
         if(_loc3_ != null)
         {
            if(_loc3_._xn1165())
            {
               _loc3_._bl15112()._BaseObjectCajitaActivarCajita();
            }
         }
      }
      
      private function _nt14280(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaActivarHeightLevel",param1.toString()));
            return;
         }
         var _loc4_:int = int(param1[2]);
         if(_loc4_ > 0)
         {
            if(param1.length < 5)
            {
               this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaFlipObject",param1.toString()));
               return;
            }
            var _loc2_:int = int(param1[3]);
            var _loc3_:Array = _yq8362.splitInt(String(param1[4]),",");
            this._hl8190._nv9801(_loc4_,0,null);
         }
         this._hl8190._hp13601();
      }
      
      private function _ke2126(param1:Array) : void
      {
         if(param1.length < 4)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaMontableMontarUsuario",param1.toString()));
            return;
         }
         var _loc5_:int = int(param1[2]);
         if(_loc5_ > 0)
         {
            var _loc2_:int = int(param1[3]);
            var _loc3_:int = int(param1[4]);
            var _loc4_:_hl15578 = _hl15578(this._bl11315._yk9656(_loc5_));
            if(_loc4_ != null)
            {
               if(Boolean(null._rn2919()) && Boolean(null._ub10189))
               {
                  if(null._uw12896())
                  {
                     null._hn6442()._BaseObjectsMascotaOnMontableMontar(0,0);
                  }
               }
               else
               {
                  this._jd5235(_loc5_,_xv14798._vc10061(param1));
               }
            }
         }
      }
      
      private function _dj1537(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaMontableDesmontarUsuario",param1.toString()));
            return;
         }
         var _loc3_:int = int(param1[2]);
         var _loc4_:int = int(param1[3]);
         if(_loc3_ > 0)
         {
            var _loc2_:_hl15578 = _hl15578(this._bl11315._yk9656(_loc3_));
         }
      }
      
      private function _ob3737(param1:Array) : void
      {
         if(param1.length < 5)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaMontableMover",param1.toString()));
            return;
         }
         var _loc5_:int = int(param1[2]);
         if(_loc5_ > 0)
         {
            var _loc2_:int = int(param1[3]);
            var _loc3_:int = int(param1[4]);
            var _loc4_:_hl15578 = _hl15578(this._bl11315._yk9656(_loc5_));
            if(_loc4_ != null)
            {
               if(Boolean(null._rn2919()) && Boolean(null._ub10189))
               {
                  if(null._uw12896())
                  {
                     null._hn6442()._BaseObjectsMascotaOnMontableMover(0,0);
                  }
               }
               else
               {
                  this._jd5235(_loc5_,_xv14798._vc10061(param1));
               }
            }
         }
      }
      
      private function _ou9065(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaChgColorObject",param1.toString()));
            return;
         }
         var _loc3_:int = int(param1[2]);
         if(_loc3_ > 0)
         {
            if(param1.length < 5)
            {
               this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaChgColorObject",param1.toString()));
               return;
            }
            var _loc2_:Array = _pn12847._kl14169(param1[3],param1[4]);
            this._hl8190._rf12089(_loc3_,null);
         }
      }
      
      private function _eo8071(param1:Array) : void
      {
         if(param1.length < 5)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaChgLocalization",param1.toString()));
            return;
         }
         var _loc2_:int = int(param1[2]);
         var _loc3_:String = param1[3];
         var _loc4_:String = param1[4];
         var _loc5_:_dh12601 = new _dh12601(_loc3_,_loc4_);
         this._bl11315._dd13470(_loc5_);
      }
      
      private function _we13686(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaFlipObject",param1.toString()));
            return;
         }
         var _loc4_:int = int(param1[2]);
         if(_loc4_ > 0)
         {
            if(param1.length < 5)
            {
               this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaFlipObject",param1.toString()));
               return;
            }
            var _loc2_:int = int(param1[3]);
            var _loc3_:Array = _yq8362.splitInt(String(param1[4]),",");
            this._hl8190._ed8283(_loc4_,0,null);
            if(this._bl11315._xn7478)
            {
               this._lm11883._xu12766(_loc4_);
            }
         }
         this._hl8190._hp13601();
      }
      
      private function _bs3525(param1:Array) : void
      {
         var _loc2_:int = 0;
         if(param1.length < 3)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaAddObjectInScene",param1.toString()));
            return;
         }
         var _loc14_:int = int(param1[2]);
         if(_loc14_ > 0)
         {
            if(param1.length < 14)
            {
               this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaAddObjectInScene",param1.toString()));
               return;
            }
            var _loc3_:int = int(param1[3]);
            var _loc4_:int = int(param1[4]);
            _loc2_ = int(param1[5]);
            var _loc5_:int = int(param1[6]);
            var _loc6_:int = int(param1[7]);
            var _loc7_:int = int(param1[8]);
            var _loc8_:int = int(_uq7753._iw2544(param1[9]));
            var _loc9_:String = param1[10];
            var _loc10_:Array = _yq8362.splitInt(String(param1[11]),",");
            var _loc11_:Array = _pn12847._kl14169(param1[12],param1[13]);
            var _loc12_:Array = _jl5367._go4983(param1[14]);
            if(_loc2_ == _hv12530.getInstance().id)
            {
               if(this._hl8190._lb15133(_loc14_))
               {
                  this._hl8190._hp13601();
               }
            }
            if(this._bl11315._nr6929._eb11619 == 0)
            {
               if(_do5953.activate)
               {
                  _do5953._vo14571(_vk15050._dl8370);
               }
               this._bl11315._qh9465(_loc14_,0,0,0,0,0,null,null,null,null);
               this._bl11315._xu8432(_loc14_);
               var _loc13_:_hl15578 = this._bl11315._yk9656(_loc14_);
               if(_loc13_._rn2919())
               {
                  this._xi10122(null);
               }
            }
         }
         else
         {
            if(param1.length < 6)
            {
               this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaAddObjectInScene",param1.toString()));
               return;
            }
            _loc2_ = int(param1[5]);
            if(_loc2_ == _hv12530.getInstance().id)
            {
               this._hl8190._hp13601();
               this._hl8190._lb15133(0);
            }
         }
      }
      
      private function _jf13712(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaChgTamObj",param1.toString()));
            return;
         }
         var _loc4_:int = int(param1[2]);
         if(_loc4_ > 0)
         {
            if(param1.length < 5)
            {
               this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaChgTamObj",param1.toString()));
               return;
            }
            var _loc2_:int = int(_uq7753._iw2544(param1[3]));
            var _loc3_:Array = _yq8362.splitInt(String(param1[4]),",");
            this._hl8190._bc13845(_loc4_,0,null);
         }
         this._hl8190._hp13601();
      }
      
      private function _gg10340(param1:int) : void
      {
         if(this._vk8274 != null && this._vk8274._hw14129 == param1)
         {
            this.seleccionarMascota(-1);
         }
         this._wp13295.baseChat._nt11501(param1);
         this._hl8190._tf14064(param1);
         this._xw6381(param1);
         this._vg6240(param1);
      }
      
      private function _ko15933(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaRemoveObj",param1.toString()));
            return;
         }
         var _loc2_:int = int(param1[2]);
         if(_loc2_ > 0)
         {
            this._gg10340(_loc2_);
         }
         this._hl8190._hp13601();
      }
      
      private function _cd8603(param1:Array) : void
      {
         if(param1.length < 4)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaDeleteObject",param1.toString()));
            return;
         }
         var _loc2_:int = int(param1[2]);
         var _loc3_:int = int(param1[3]);
         if(_loc2_ > 0)
         {
            this._gg10340(_loc2_);
         }
      }
      
      private function _uo6701(param1:Array) : void
      {
         if(param1.length < 5)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaUpdateNoria",param1.toString()));
            return;
         }
         var _loc2_:int = int(param1[3]);
         var _loc3_:int = int(param1[4]);
         var _loc4_:_hl15578 = _hl15578(this._bl11315._yk9656(_loc2_));
         if(_loc4_ != null)
         {
            if(_loc4_._uw12896() && _loc4_._ub10189)
            {
               switch(String(param1[2]).charCodeAt(0))
               {
                  case _bx10683._vp4650:
                     _loc4_._hn6442()._BaseObjectsMascotaNoriaRotacion(_loc2_,_loc3_);
                     break;
                  case _bx10683._nl13646:
                     _loc4_._hn6442()._BaseObjectsMascotaNoriaVelocidad(_loc2_,_loc3_);
               }
            }
            else
            {
               this._jd5235(_loc2_,_xv14798._vc10061(param1));
            }
         }
      }
      
      private function _lg15549(param1:Array) : void
      {
         if(param1.length < 4)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaUpdateNoria",param1.toString()));
            return;
         }
         var _loc2_:int = int(param1[2]);
         var _loc3_:int = int(param1[3]);
         var _loc4_:_hl15578 = _hl15578(this._bl11315._yk9656(_loc2_));
         if(_loc4_ != null)
         {
            if(_loc4_._uw12896() && _loc4_._ub10189)
            {
               _loc4_._hn6442()._BaseObjectsSetHitsContador(_loc3_);
            }
         }
      }
      
      private function _td10451(param1:Array) : void
      {
         if(param1.length < 4)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaUpdateFichaPlanta",param1.toString()));
            return;
         }
         param1.shift();
         param1.shift();
         var _loc2_:int = int(param1.shift());
         var _loc3_:Number = Number(param1.shift());
         var _loc4_:Number = Number(param1.shift());
         var _loc5_:Number = Number(param1.shift());
         var _loc6_:Number = Number(param1.shift());
         var _loc7_:_hl15578 = _hl15578(this._bl11315._yk9656(_loc2_));
         if(_loc7_ != null)
         {
            if(_loc7_._xn1165() && _loc7_._ub10189)
            {
               _loc7_._bl15112()._BaseObjectsAnimadoUpdateDatosPlata(_loc4_,_loc3_,_loc6_,_loc5_);
            }
         }
      }
      
      private function _dt12287(param1:Array) : void
      {
         if(param1.length < 8)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaChangeSkin",param1.toString()));
            return;
         }
         param1.shift();
         param1.shift();
         var _loc2_:Array = _jl5367._hp13280(param1.shift());
         var _loc3_:Array = _jl5367._hp13280(param1.shift());
         var _loc4_:Array = _jl5367._pa15239(param1.shift(),",");
         var _loc5_:Array = _jl5367._pa15239(param1.shift(),",");
         var _loc6_:Array = _jl5367._pk13466(param1.shift(),",");
         var _loc7_:Array = _jl5367._pk13466(param1.shift(),".");
         var _loc8_:int = int(_loc2_.length);
         if(_loc8_ != _loc3_.length || _loc8_ != _loc4_.length || _loc8_ != _loc5_.length || _loc8_ != _loc6_.length || _loc8_ != _loc7_.length)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"PrivadosModule.recTramaChangeSkin Datos ObjetosSkineables Invalidos",param1.toString()));
            return;
         }
         var _loc9_:_ul219 = new _ul219(_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_);
         if(this._bl11315 is _bq10515)
         {
            _bq10515(this._bl11315)._tv1478(_loc9_);
         }
      }
      
      public function _wp8897(param1:int) : _uq7753
      {
         return this._bl11315._yk9656(param1)._sl11700;
      }
   }
}

class _ko1738
{
   
   public var _hw14129:int;
   
   public var _ag7290:Number;
   
   public var _iv10262:Number;
   
   public var _jo12299:Number;
   
   public var _qu12668:Number;
   
   public var _ta2134:int;
   
   public var _ql1472:int;
   
   public var _yx7455:Number;
   
   public var _xs8094:int;
   
   public function _ko1738(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Number = 0.01)
   {
      super();
      this._hw14129 = param1;
      this._ag7290 = this._jo12299 = param2;
      this._iv10262 = this._qu12668 = param3;
      this._ta2134 = param4;
      this._ql1472 = param5;
      this._yx7455 = param6;
      this._xs8094 = 0;
   }
}
