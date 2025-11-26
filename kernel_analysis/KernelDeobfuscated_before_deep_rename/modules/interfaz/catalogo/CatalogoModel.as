package src.modules.interfaz.catalogo
{
   import flash.display.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.text.*;
   import src.*;
   import src.allData.*;
   import src.allData.catObjects.*;
   import src.allData.sceneObjects.*;
   import src.allData.sceneObjects.dataObjects.*;
   import src.allData.sceneObjects.loadObject.*;
   import src.logs.*;
   import src.modules.interfaz.InterfazManager;
   import src.modules.objetos.*;
   import src.org.osflash.thunderbolt.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class CatalogoModel
   {
      
      private static const _nr2697:String = "mcCompraObjetos";
      
      private static const _yr11243:String = "mcVistaObjeto";
      
      private static const _kn4874:String = "tfCatalogo";
      
      private static const _rj8907:String = "mcFondo";
      
      private static const _kv6582:String = "mcCatalogo";
      
      private static const _do11808:String = "mcObjeto";
      
      private static const _bc8459:String = "mcIconoMember";
      
      private static const _jj4855:String = "mcBotonCerrar";
      
      private static const _rq6229:String = "mcMonedaOro";
      
      private static const _vs14264:String = "mcMonedaPlata";
      
      private static const _wi14285:String = "mcBotonScrollMas";
      
      private static const _bb8496:String = "mcBotonScrollMenos";
      
      private static const _aa1143:String = "mcAvance";
      
      private static const _ln8436:String = "mcContenedorObjeto";
      
      private static const _sy10352:String = "tfTexto";
      
      private static const _cf8940:String = "mcAvisoNoPlata";
      
      private static const _pr8658:String = "mcBotonComprarOro";
      
      private static const _js4696:String = "mcBotonComprarPlata";
      
      private static const _hp9156:String = "mcBotonAceptar";
      
      private static const _sp4856:String = "mcBotonCancelar";
      
      private static const _mx7331:String = "tfNombreObjeto";
      
      private static const _pf3157:String = "tfDescripcionObjeto";
      
      private static const _jj13348:String = "tfCostoObjeto";
      
      private static const _nq13019:String = "mcBotonTamano";
      
      private static const _vx10446:String = "mcSeparadorTamano";
      
      private static const _lj9227:String = "mcFlechaTamano";
      
      private static const _fs6897:String = "mcCargando";
      
      private static const _po1876:String = "mcComprado";
      
      private static const TF_TITULO:String = "tfTitulo";
      
      private static const _gc4231:String = "tfMensaje";
      
      private static const _gc15111:String = "tfComprar";
      
      private static const _sh9298:String = "tfCancelar";
      
      private static const _dn12599:String = "mcVistaMember";
      
      private static const _yg8197:String = "normal";
      
      private static const _sg6807:String = "rollover";
      
      private static const _ck12472:String = "vacio";
      
      private static const _kn10026:String = "vacio";
      
      private static const _cf11733:String = "inicio";
      
      private static const _cv4506:String = "confirmarOro";
      
      private static const _yx14080:String = "confirmarPlata";
      
      private static const _jy6051:String = "comprandoOro";
      
      private static const _kn1619:String = "comprandoPlata";
      
      private static const _hy208:String = "compradoOro";
      
      private static const _rr8177:String = "compradoPlata";
      
      private static const _ii3234:int = -1;
      
      private static const _sh10580:int = 0;
      
      private static const _sp4899:int = 1;
      
      private static const _ij2403:int = 2;
      
      private static const _jy4116:int = 3;
      
      private static const _la5279:int = 4;
      
      private static const _nq5864:int = 5;
      
      private static const _ha675:int = 6;
      
      private static const _no1224:int = 7;
      
      private static const _aj8296:int = 100;
      
      private static const _ji2235:int = 5;
      
      private static const _bh10563:int = 17;
      
      private static const _pc12074:int = 0;
      
      private static const _xs5189:int = 0;
      
      private static const _cq8447:int = 1;
      
      private static const _le7259:int = 2;
      
      private static const _gn14915:Number = 0.5;
      
      private static const _qc1402:int = 1;
      
      private static const _hp5204:int = 2;
      
      private static const _ym12653:int = 5;
      
      private static const _qh11016:int = 76;
      
      private static const _cj11822:int = 6;
      
      private static const _yi11560:int = 320;
      
      private static const _px4135:int = 250;
      
      private var _xd15368:MovieClip;
      
      private var _uk10025:MovieClip;
      
      private var _unidades:TextField;
      
      private var _an7454:int = -1;
      
      private var logs:Logger;
      
      private var _jm3064:ObjetosController;
      
      private var _hy15398:int = -1;
      
      private var _ik4847:Array;
      
      private var _ti490:int;
      
      private var _wu466:int = 0;
      
      private var _no7733:CatobjectsController;
      
      private var _dl3635:MovieClip;
      
      private var _lp469:InterfazManager;
      
      private var _hl8190:SceneObjectManager;
      
      private var _im12039:CatalogoModel;
      
      private var _vc8830:int;
      
      private var _bs5729:MovieClip;
      
      private var _do1698:UIPanel;
      
      private var _jw5977:int = 0;
      
      public function CatalogoModel(param1:MovieClip, param2:InterfazManager, param3:ObjetosController)
      {
         super();
         this._xd15368 = param1[_nr2697];
         this._uk10025 = param1[_yr11243];
         this._unidades = this._uk10025["mcUnidades"].textField.textField;
         this._uk10025["mcUnidades"].addEventListener(Event.CHANGE,this.unidadesFun);
         this._uk10025["mcUnidades"].addEventListener(Event.MOUSE_LEAVE,this.unidadesFun);
         this._uk10025["mcUnidades"].addEventListener(MouseEvent.CLICK,this.unidadesFun);
         this._uk10025["mcUnidades"].addEventListener(TextEvent.TEXT_INPUT,this.unidadesFun);
         this._unidades.addEventListener(Event.CHANGE,this.unidadesFun);
         this._unidades.addEventListener(Event.MOUSE_LEAVE,this.unidadesFun);
         this._unidades.addEventListener(MouseEvent.CLICK,this.unidadesFun);
         this._unidades.addEventListener(TextEvent.TEXT_INPUT,this.unidadesFun);
         this._lp469 = param2;
         this._jm3064 = param3;
         this._hl8190 = SceneObjectManager.getInstance();
         this._im12039 = new CatalogoModel();
         this.logs = Logger.getInstance();
         this._xd15368.visible = false;
         this._uk10025.visible = false;
         this._dl3635 = MovieClip(this._xd15368[_aa1143]);
         this._dl3635.visible = false;
         MovieClip(this._xd15368[_jj4855]).buttonMode = true;
         MovieClip(this._xd15368[_wi14285]).buttonMode = true;
         MovieClip(this._xd15368[_bb8496]).buttonMode = true;
         StringUtils._dp2863(this._uk10025,this._we8238);
         this._xd15368.tabEnabled = false;
         this._xd15368.tabChildren = false;
         this._bs5729 = param1["mcCompraObjetos"]["mcCatalogo0"];
         this._bs5729.visible = CatalogObject.getInstance()._io380().length > 0;
         this._do1698 = new UIPanel();
         this._do1698._xe10297 = UITextField.TOP;
         this._do1698.fontSize = 11;
         this._do1698.visible = false;
         this._do1698.padding = 2;
         param1["mcCompraObjetos"].addChild(this._do1698);
      }
      
      private function unidadesFun(param1:Event) : void
      {
         if(this._no7733._sb8254 > 0)
         {
            UtilsUtils._xl9503(this._uk10025[_pr8658][_jj13348],(this._no7733._sb8254 * parseInt(this._unidades.text)).toString());
         }
         else if(this._no7733._fi8088 > 0)
         {
            UtilsUtils._xl9503(this._uk10025[_js4696][_jj13348],(this._no7733._fi8088 * parseInt(this._unidades.text)).toString());
         }
      }
      
      public function init() : void
      {
      }
      
      public function destroy() : void
      {
         this._hu12389();
         this._jm3064.removeEventListener(ObjetosEvents._tu12622,this._pq11418);
         StringUtils._ff5056(this._uk10025);
      }
      
      public function _db5584() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this._xd15368.visible == false)
         {
            _loc1_ = this._uk10025.x - this._xd15368.x;
            _loc2_ = this._uk10025.y - this._xd15368.y;
            _xw1367.getInstance()._uc3178(this._xd15368,_xw1367._wa4051);
            _xw1367.getInstance()._uc3178(this._uk10025,_xw1367._wa4051);
            this._xd15368.x = _qh11016;
            this._xd15368.y = _cj11822;
            this._uk10025.x = _qh11016 + _loc1_;
            this._uk10025.Y = _cj11822 + _loc2_;
            this._xd15368.visible = true;
            this._qk12131();
            this._hl8190.addEventListener(LoadobjectModel._bs1884,this._hb4573);
            MovieClip(this._xd15368[_rj8907]).addEventListener(MouseEvent.MOUSE_DOWN,this._rf15581);
            MovieClip(this._uk10025[_rj8907]).addEventListener(MouseEvent.MOUSE_DOWN,this._rf15581);
            this._iq9094(_bh10563);
         }
      }
      
      public function _hu12389() : void
      {
         var _loc1_:int = 0;
         var _loc2_:MovieClip = null;
         if(this._xd15368.visible == true)
         {
            this._xd15368.visible = false;
            this._hl8190.removeEventListener(LoadobjectModel._bs1884,this._hb4573);
            this._ub7306();
            this._hx5590();
            MovieClip(this._xd15368[_rj8907]).removeEventListener(MouseEvent.MOUSE_DOWN,this._rf15581);
            MovieClip(this._uk10025[_rj8907]).removeEventListener(MouseEvent.MOUSE_DOWN,this._rf15581);
            _xw1367.getInstance()._na10792(this._xd15368,_xw1367._wa4051);
            _xw1367.getInstance()._na10792(this._uk10025,_xw1367._wa4051);
            _loc1_ = 0;
            while(_loc1_ < _ji2235)
            {
               _loc2_ = this._xd15368[_do11808 + (_loc1_ + 1)];
               StringUtils.cleanChildsMovieclip(_loc2_[_ln8436]);
               _loc1_++;
            }
            this._rk15869(_ii3234);
            this._hy15398 = -1;
            this._no7733 = null;
         }
      }
      
      private function _rf15581(param1:MouseEvent) : void
      {
         ThunderboltModel.info("anulaClick");
         param1.stopImmediatePropagation();
         param1.stopPropagation();
      }
      
      private function _kp15909(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         MovieClip(param1.target).gotoAndStop(_yg8197);
         this._hu12389();
      }
      
      private function _ew4224(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(_sg6807);
      }
      
      private function _ib13309(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(_yg8197);
      }
      
      private function _sl641(param1:MouseEvent) : void
      {
         var _loc2_:int = int(param1.target.idCatalogo);
         MovieClip(param1.target).alpha = 1;
         MovieClip(param1.target).filters = [new GlowFilter(6710886,1,4,4,20)];
         this._do1698.text = "catalog.categories." + _loc2_ + ".name";
         this._do1698.x = (param1.target as MovieClip).x + (param1.target as MovieClip).width * 0.5;
         this._do1698.y = (param1.target as MovieClip).y + (param1.target as MovieClip).height;
         this._do1698._sl14850();
         this._do1698.visible = true;
      }
      
      private function _bt6978(param1:MouseEvent) : void
      {
         var _loc2_:int = int(param1.target.idCatalogo);
         if(_loc2_ != this._hy15398)
         {
            MovieClip(param1.target).alpha = _gn14915;
            MovieClip(param1.target).filters = [];
         }
         this._do1698.visible = false;
      }
      
      private function _gc14960(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         if(param1.target.idCatalogo == 35)
         {
            ExternalInterface.call("showLTD");
            this._hu12389();
            return;
         }
         if(param1.target.idCatalogo == 36)
         {
            ExternalInterface.call("showVIP");
            this._hu12389();
            return;
         }
         if(param1.target.idCatalogo == 37)
         {
            ExternalInterface.call("showMarket");
            this._hu12389();
            return;
         }
         this._iq9094(param1.target.idCatalogo);
      }
      
      private function _lx10670(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         this._ti490 += _ym12653;
         this._xn15715();
         this._fe12100();
      }
      
      private function _fs9791(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         if(this._ti490 - _ym12653 > 0)
         {
            this._ti490 -= _ym12653;
         }
         else
         {
            this._ti490 = 0;
         }
         this._xn15715();
         this._fe12100();
      }
      
      private function _fe12100() : void
      {
         if(this._ik4847.length < _ji2235)
         {
            MovieClip(this._xd15368[_bb8496]).visible = false;
            MovieClip(this._xd15368[_wi14285]).visible = false;
         }
         else
         {
            MovieClip(this._xd15368[_bb8496]).visible = true;
            MovieClip(this._xd15368[_wi14285]).visible = true;
            if(this._ti490 > 0)
            {
               MovieClip(this._xd15368[_bb8496]).mouseEnabled = true;
               MovieClip(this._xd15368[_bb8496]).buttonMode = true;
               MovieClip(this._xd15368[_bb8496]).alpha = 1;
            }
            else
            {
               MovieClip(this._xd15368[_bb8496]).mouseEnabled = false;
               MovieClip(this._xd15368[_bb8496]).buttonMode = false;
               MovieClip(this._xd15368[_bb8496]).alpha = 0.5;
            }
            if(this._ti490 + _ji2235 + 1 <= this._ik4847.length)
            {
               MovieClip(this._xd15368[_wi14285]).mouseEnabled = true;
               MovieClip(this._xd15368[_wi14285]).buttonMode = true;
               MovieClip(this._xd15368[_wi14285]).alpha = 1;
            }
            else
            {
               MovieClip(this._xd15368[_wi14285]).mouseEnabled = false;
               MovieClip(this._xd15368[_wi14285]).buttonMode = false;
               MovieClip(this._xd15368[_wi14285]).alpha = 0.5;
            }
         }
      }
      
      private function _iq9094(param1:int) : void
      {
         if(param1 != this._hy15398)
         {
            this._hy15398 = param1;
            var _loc2_:int = 0;
            while(0 <= _aj8296)
            {
               var _loc4_:MovieClip = this._xd15368[_kv6582 + 0];
               if(_loc4_ != null)
               {
                  if(null.idCatalogo == param1)
                  {
                     null.alpha = 1;
                     null.filters = [new GlowFilter(6710886,1,4,4,20)];
                  }
                  else
                  {
                     null.alpha = _gn14915;
                     null.filters = [];
                  }
               }
               _loc2_++;
            }
            this._ti490 = 0;
            if(param1 == _pc12074)
            {
               this._ik4847 = CatalogObject.getInstance()._io380();
            }
            else
            {
               this._ik4847 = CatalogObject.getInstance()._nx16094(param1);
            }
            var _loc3_:* = "catalog.categories." + param1 + ".name";
            MovieClip(this._xd15368[_kv6582 + param1]).alpha = 1;
            UtilsUtils._xl9503(this._xd15368[_kn4874],null);
            this._xn15715();
            this._fe12100();
            this._uk10025.visible = false;
         }
      }
      
      private function _hb4573(param1:LoadobjectModel) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc5_:CatobjectsController = param1.obj.obj._sl11700;
         if(_loc5_._rj14556.indexOf(this._hy15398) >= 0 || this._hy15398 == 0)
         {
            switch(param1.obj.type)
            {
               case LoadobjectModel._tr9213:
                  _loc2_ = 0;
                  while(_loc2_ < this._vc8830)
                  {
                     _loc3_ = this._xd15368[_do11808 + (_loc2_ + 1)];
                     if(_loc3_.visible == true)
                     {
                        if(_loc3_._iu7542 == param1.obj.obj._rm6352)
                        {
                           StringUtils.cleanChildsMovieclip(_loc3_[_ln8436]);
                           if(_loc5_._su5362)
                           {
                              var _loc4_:MovieClip = (ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._bn15619(_loc5_._le1402,"AssetObject");
                              MovieClip(_loc3_[_ln8436]).addChild(null);
                           }
                           else
                           {
                              _loc4_ = new MovieClip();
                              _loc4_.addChild(_loc5_._nk15832);
                           }
                           null.x = (_loc3_.width - null.width) / 2;
                           null.y = (_loc3_.height - null.height) / 2;
                           null.smoothing = true;
                           MovieClip(_loc3_[_ln8436]).addChild(null);
                           break;
                        }
                     }
                     _loc2_++;
                  }
                  return;
               case LoadobjectModel._dt15459:
                  if(_loc5_ == this._no7733)
                  {
                     if(this._uk10025.currentLabel == _cf11733 && this._an7454 == _sh10580)
                     {
                        this._ag5609();
                     }
                     else
                     {
                        this._kf12698();
                     }
                  }
                  return;
            }
         }
      }
      
      private function _xn15715() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:CatobjectsController = null;
         var _loc3_:Bitmap = null;
         var _loc4_:MovieClip = null;
         var _loc6_:int = 0;
         this._vc8830 = 0;
         var _loc5_:Array = [];
         while(_loc6_ < _ji2235)
         {
            _loc1_ = this._xd15368[_do11808 + (_loc6_ + 1)];
            if(this._ti490 + _loc6_ < this._ik4847.length)
            {
               _loc1_.gotoAndStop(_yg8197);
               UtilsUtils._xl9503(_loc1_[_sy10352],"");
               _loc1_.buttonMode = true;
               ++this._vc8830;
               _loc2_ = CatobjectsController(this._ik4847[this._ti490 + _loc6_]);
               _loc1_._iu7542 = _loc2_.id;
               if(_loc2_.member)
               {
                  _loc1_[_bc8459].visible = true;
               }
               else
               {
                  _loc1_[_bc8459].visible = false;
               }
               _loc1_[_rq6229].visible = false;
               _loc1_[_vs14264].visible = false;
               if(_loc2_._sb8254 > 0)
               {
                  _loc1_[_rq6229].visible = true;
               }
               if(_loc2_._fi8088 > 0)
               {
                  _loc1_[_vs14264].visible = true;
               }
               StringUtils.cleanChildsMovieclip(_loc1_[_ln8436]);
               if(_loc2_._nk15832 != null)
               {
                  _loc3_ = _loc2_._nk15832;
                  _loc3_.x = Math.round((_loc1_.width - _loc3_.width) / 2);
                  _loc3_.y = Math.round((_loc1_.height - _loc3_.height) / 2);
                  MovieClip(_loc1_[_ln8436]).addChild(_loc3_);
               }
               else
               {
                  _loc4_ = StringUtils._so3313(this._dl3635);
                  _loc4_.x = Math.round((_loc1_.width - _loc4_.width) / 2);
                  _loc4_.y = Math.round((_loc1_.height - _loc4_.height) / 2);
                  MovieClip(_loc1_[_ln8436]).addChild(_loc4_);
                  if(_loc2_._su5362)
                  {
                     _loc5_.push(_loc2_._le1402);
                  }
                  else
                  {
                     this._hl8190._dc2044(_loc2_);
                  }
               }
            }
            else
            {
               StringUtils.cleanChildsMovieclip(_loc1_[_ln8436]);
               _loc1_.gotoAndStop(_ck12472);
               _loc1_.buttonMode = false;
               UtilsUtils._xl9503(_loc1_[_sy10352],this._im12039._ra14588);
               _loc1_[_bc8459].visible = false;
               _loc1_[_rq6229].visible = false;
               _loc1_[_vs14264].visible = false;
            }
            _loc6_++;
         }
         if(_loc5_.length > 0)
         {
            (ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._vv13029(_loc5_,this._hj11501);
         }
      }
      
      private function _hj11501() : void
      {
         this._xn15715();
         this._fe12100();
      }
      
      private function _bx14721(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = MovieClip(param1.target);
         var _loc3_:int = int(_loc2_.name.charAt(_loc2_.name.length - 1));
         if(_loc3_ <= this._vc8830)
         {
            MovieClip(param1.target).gotoAndStop(_sg6807);
         }
      }
      
      private function _dq5199(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = MovieClip(param1.target);
         var _loc3_:int = int(_loc2_.name.charAt(_loc2_.name.length - 1));
         if(_loc3_ <= this._vc8830)
         {
            MovieClip(param1.target).gotoAndStop(_yg8197);
         }
      }
      
      private function _oq7158(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         var _loc3_:MovieClip = MovieClip(param1.target);
         var _loc4_:int = int(_loc3_.name.charAt(_loc3_.name.length - 1));
         if(_loc4_ <= this._vc8830)
         {
            _loc2_ = int(param1.currentTarget._iu7542);
            this._ja12969(_loc2_);
         }
         this._unidades.text = "1";
      }
      
      private function _ja12969(param1:int) : void
      {
         var _loc2_:CatobjectsController = null;
         this._uk10025.visible = true;
         this._no7733 = null;
         for each(_loc2_ in this._ik4847)
         {
            if(_loc2_.id == param1)
            {
               this._no7733 = _loc2_;
               if(this._uk10025.currentLabel == _cf11733 && this._an7454 == _sh10580)
               {
                  this._ag5609();
                  break;
               }
               this._rk15869(_sh10580);
               break;
            }
         }
      }
      
      private function _ag5609() : void
      {
         var _loc1_:int = 0;
         var _loc2_:MovieClip = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         UtilsUtils._xl9503(this._uk10025[_mx7331],this._no7733.name);
         UtilsUtils._xl9503(this._uk10025[_pf3157],this._no7733.description);
         UtilsUtils._xl9503(this._uk10025[_pr8658][_jj13348],(this._no7733._sb8254 * parseInt(this._unidades.text)).toString());
         UtilsUtils._xl9503(this._uk10025[_js4696][_jj13348],(this._no7733._fi8088 * parseInt(this._unidades.text)).toString());
         UtilsUtils._xl9503(this._uk10025[_cf8940][_sy10352],this._im12039._qa14188);
         MovieClip(this._uk10025[_cf8940]).visible = false;
         MovieClip(this._uk10025[_cf8940]).mouseChildren = false;
         MovieClip(this._uk10025[_cf8940]).mouseEnabled = false;
         TextField(this._uk10025[_mx7331]).mouseEnabled = false;
         TextField(this._uk10025[_pf3157]).mouseEnabled = false;
         if(this._no7733._fi8088 > 0)
         {
            MovieClip(this._uk10025[_js4696]).visible = true;
         }
         else
         {
            MovieClip(this._uk10025[_js4696]).visible = false;
         }
         if(this._no7733._sb8254 > 0)
         {
            MovieClip(this._uk10025[_pr8658]).visible = true;
         }
         else
         {
            MovieClip(this._uk10025[_pr8658]).visible = false;
         }
         if(!this._no7733.member)
         {
            MovieClip(this._uk10025[_dn12599]).visible = false;
         }
         else
         {
            if(UserSession.getInstance().member)
            {
            }
            MovieClip(this._uk10025[_dn12599]).visible = true;
            UtilsUtils._xl9503(this._uk10025[_dn12599][_sy10352],this._im12039._af14267);
         }
         this._kf12698();
         _loc1_ = 0;
         while(_loc1_ < 3)
         {
            if(this._no7733._cg6545[_loc1_] != 0)
            {
               _loc4_++;
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < 3)
         {
            _loc2_ = MovieClip(this._uk10025[_nq13019 + _loc1_]);
            _loc3_ = MovieClip(this._uk10025[_vx10446 + _loc1_]);
            if(_loc4_ > 1 && this._no7733._cg6545[_loc1_] != 0)
            {
               _loc2_.visible = true;
               _loc3_.visible = true;
            }
            else
            {
               if(this._wu466 == _loc1_)
               {
                  this._wu466 = _xs5189;
               }
               _loc2_.visible = false;
               _loc3_.visible = false;
            }
            _loc1_++;
         }
         if(_loc4_ > 1)
         {
            MovieClip(this._uk10025[_lj9227]).visible = true;
         }
         else
         {
            MovieClip(this._uk10025[_lj9227]).visible = false;
         }
         this._fe10897(this._wu466);
         this._op15399();
      }
      
      private function _kf12698() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:SceneObjectProperties = null;
         var _loc3_:Bitmap = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:MovieClip = null;
         if(this._uk10025 != null && this._uk10025[_ln8436] != null)
         {
            _loc1_ = MovieClip(this._uk10025[_ln8436]);
            StringUtils.cleanChildsMovieclip(_loc1_);
            _loc2_ = new SceneObjectProperties(-1,this._no7733.id,0,0,this._no7733.colors,this._no7733,"");
            if(this._no7733._kc6805 != null)
            {
               _loc3_ = _loc2_._rd1942(1);
               _loc3_.smoothing = true;
               if(_loc3_.width != 0 && _loc3_.height != 0)
               {
                  _loc4_ = _yi11560 / _loc3_.width;
                  _loc5_ = _px4135 / _loc3_.height;
                  _loc6_ = Math.min(_loc4_,_loc5_);
                  if(_loc6_ < 1)
                  {
                     _loc3_.scaleX = _loc3_.scaleY = _loc6_;
                  }
               }
               _loc3_.x = -_loc3_.width / 2;
               _loc3_.y = -_loc3_.height / 2;
               _loc1_.addChild(_loc3_);
            }
            else
            {
               _loc7_ = StringUtils._so3313(this._dl3635);
               _loc7_.x = _loc7_.y = 0;
               _loc7_.x = -_loc7_.width / 2;
               _loc7_.y = -_loc7_.height / 2;
               _loc1_.addChild(_loc7_);
               if(_loc2_._sl11700._su5362)
               {
                  (ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._vv13029([_loc2_._sl11700._le1402],this._kf12698);
               }
               else
               {
                  this._hl8190.loadObject(_loc2_);
               }
            }
            _loc2_.destroy();
            _loc2_ = null;
         }
      }
      
      private function _rk15869(param1:int) : void
      {
         this._hx5590();
         switch(param1)
         {
            case _ii3234:
               UtilsUtils._vt11823(this._uk10025,_kn10026);
               break;
            case _sh10580:
               UtilsUtils._vt11823(this._uk10025,_cf11733);
               break;
            case _sp4899:
               UtilsUtils._vt11823(this._uk10025,_cv4506);
               break;
            case _ij2403:
               UtilsUtils._vt11823(this._uk10025,_yx14080);
               break;
            case _jy4116:
               UtilsUtils._vt11823(this._uk10025,_jy6051);
               break;
            case _la5279:
               UtilsUtils._vt11823(this._uk10025,_kn1619);
               break;
            case _nq5864:
               UtilsUtils._vt11823(this._uk10025,_hy208);
               break;
            case _ha675:
               UtilsUtils._vt11823(this._uk10025,_rr8177);
         }
         this._an7454 = param1;
         this._op15399();
      }
      
      private function _we8238() : void
      {
         switch(this._uk10025.currentLabel)
         {
            case _cf11733:
               this._cs4168();
               this._km15385();
               if(this._no7733 != null)
               {
                  this._ag5609();
               }
               return;
            case _cv4506:
            case _yx14080:
               this._cs4168();
               this._fm5551();
               return;
            case _jy6051:
            case _kn1619:
               this._cs4168();
               this._fu13365();
               return;
            case _hy208:
            case _rr8177:
               this._cs4168();
               this._pf10789();
               return;
            default:
               return;
         }
      }
      
      private function _op15399() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:MovieClip = this._uk10025["discountLabel"];
         _loc4_.visible = false;
         if(Boolean(this._no7733) && Boolean(this._no7733._ob13927))
         {
            _loc1_ = this._no7733._hy3311 > 0 ? int(this._no7733._hy3311) : int(this._no7733._sw10424);
            _loc2_ = this._no7733._sb8254 > 0 ? int(this._no7733._sb8254) : int(this._no7733._fi8088);
            _loc3_ = _loc1_ != 0 ? (_loc1_ - _loc2_) / _loc1_ : 0;
            _loc4_.visible = _loc3_ > 0;
            _loc4_["title"].text = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455("catalog.sale");
            UtilsUtils._xl9503(_loc4_["oldPrice"],_loc1_ + ".-");
            UtilsUtils._xl9503(_loc4_["newPrice"],_loc2_ + ".-");
            UtilsUtils._xl9503(_loc4_["savings"],"-" + Math.ceil(_loc3_ * 100) + "%");
         }
      }
      
      private function _xi655(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(_sg6807);
         TextField(param1.target[_sy10352]).textColor = 16777215;
      }
      
      private function _oh9263(param1:MouseEvent) : void
      {
         var _loc2_:int = int(MovieClip(param1.target).name.charAt(MovieClip(param1.target).name.length - 1));
         if(_loc2_ != this._wu466)
         {
            MovieClip(param1.target).gotoAndStop(_yg8197);
            TextField(param1.target[_sy10352]).textColor = 10066329;
         }
      }
      
      private function _fp1914(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         var _loc2_:int = int(MovieClip(param1.target).name.charAt(MovieClip(param1.target).name.length - 1));
         this._fe10897(_loc2_);
      }
      
      private function _fe10897(param1:int) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         this._wu466 = param1;
         while(_loc3_ < 3)
         {
            _loc2_ = MovieClip(this._uk10025[_nq13019 + _loc3_]);
            if(_loc3_ != this._wu466)
            {
               _loc2_.gotoAndStop(_yg8197);
               TextField(_loc2_[_sy10352]).textColor = 10066329;
            }
            else
            {
               _loc2_.gotoAndStop(_sg6807);
               TextField(_loc2_[_sy10352]).textColor = 16777215;
               this._uk10025[_lj9227].x = _loc2_.x + _loc2_.width / 2;
            }
            _loc3_++;
         }
         var _loc4_:MovieClip = MovieClip(this._uk10025[_ln8436]);
         _loc4_.scaleX = _loc4_.scaleY = this._no7733._cg6545[this._wu466];
      }
      
      private function _su575(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(_sg6807);
      }
      
      private function _mb946(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(_yg8197);
      }
      
      private function _bi9028(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         this._mb946(param1);
         if(UserSession.getInstance().member && this._no7733.member || !this._no7733.member)
         {
            this._rk15869(_sp4899);
         }
         else
         {
            this._hu12389();
            this._lp469._aa3338();
         }
         TextField(this._uk10025[_pr8658][_jj13348]).text = "" + parseInt(TextField(this._uk10025[_pr8658][_jj13348]).text) * parseInt(this._unidades.text);
         UtilsUtils._xl9503(this._uk10025[_pr8658][_jj13348],TextField(this._uk10025[_pr8658][_jj13348]).text);
      }
      
      private function _my13661(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         this._mb946(param1);
         if(UserSession.getInstance().member && this._no7733.member || !this._no7733.member)
         {
            if(UserSession.getInstance()._ea4493 < this._no7733._fi8088)
            {
               MovieClip(this._uk10025[_cf8940]).visible = true;
               return;
            }
            this._rk15869(_ij2403);
         }
         else
         {
            this._hu12389();
            this._lp469._aa3338();
         }
         TextField(this._uk10025[_js4696][_jj13348]).text = "" + parseInt(TextField(this._uk10025[_js4696][_jj13348]).text) * parseInt(this._unidades.text);
         UtilsUtils._xl9503(this._uk10025[_js4696][_jj13348],TextField(this._uk10025[_js4696][_jj13348]).text);
      }
      
      private function _bs15583(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         if(this._no7733._sb8254 * parseInt(this._unidades.text) > UserSession.getInstance()._dx11054)
         {
            this._lp469._uk6277();
         }
         else
         {
            this._rk15869(_jy4116);
            this._uh518(_qc1402);
         }
      }
      
      private function _wn6516(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         if(this._no7733._fi8088 * parseInt(this._unidades.text) > UserSession.getInstance()._ea4493)
         {
            this._lp469._uk6277();
         }
         else
         {
            this._rk15869(_la5279);
            this._uh518(_hp5204);
         }
      }
      
      private function _dl6211(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         this._rk15869(_sh10580);
      }
      
      private function _uh518(param1:int) : void
      {
         if(this._jw5977 == 0)
         {
            this._jm3064.addEventListener(ObjetosEvents._tu12622,this._pq11418);
         }
         ++this._jw5977;
         switch(param1)
         {
            case _qc1402:
               this._jm3064._rf1513(this._no7733.id,CatobjectsController._pd5901(this._wu466),this._unidades.text);
               return;
            case _hp5204:
               this._jm3064._km8391(this._no7733.id,CatobjectsController._pd5901(this._wu466),this._unidades.text);
               return;
            default:
               return;
         }
      }
      
      private function _pq11418(param1:ObjetosEvents) : void
      {
         var _loc2_:uint = uint(String(param1._lv9976[1]).charCodeAt(0));
         switch(_loc2_)
         {
            case ObjetosController._hv11028:
            case ObjetosController._qg305:
               this._ts810(param1._lv9976);
               --this._jw5977;
               if(this._jw5977 == 0)
               {
                  this._jm3064.removeEventListener(ObjetosEvents._tu12622,this._pq11418);
               }
               return;
            default:
               return;
         }
      }
      
      private function _ts810(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new Logs(Logger._ny10327,"FichaCompraObjetos.recTramaBuyObject",param1.toString()));
            return;
         }
         var _loc2_:uint = uint(String(param1[1]).charCodeAt(0));
         var _loc3_:int = int(param1[2]);
         switch(_loc3_)
         {
            case ObjetosController._ko12141:
               if(this._uk10025 != null && this._uk10025.visible == true && (this._an7454 == _jy4116 || this._an7454 == _la5279))
               {
                  this._lp469._uk6277();
               }
               return;
            case ObjetosController._td926:
               this._lp469._od7419(0);
               switch(_loc2_)
               {
                  case ObjetosController._hv11028:
                     if(this._uk10025 != null && this._uk10025.visible == true && this._an7454 == _jy4116)
                     {
                        this._rk15869(_nq5864);
                     }
                     break;
                  case ObjetosController._qg305:
                     if(this._uk10025 != null && this._uk10025.visible == true && this._an7454 == _la5279)
                     {
                        this._rk15869(_ha675);
                     }
               }
               return;
            case ObjetosController._vf4333:
               if(this._uk10025 != null && this._uk10025.visible == true && this._an7454 == _jy4116)
               {
                  this._lp469._uk6277();
               }
               return;
            default:
               this.logs._kp3815(new Logs(Logger._dj10628,"FichaCompraObjetos.recTramaBuyObject","buyObjectResponse invalid=" + _loc3_));
               return;
         }
      }
      
      private function _km15385() : void
      {
         MovieClip(this._uk10025[_pr8658]).mouseChildren = false;
         TextField(this._uk10025[_pr8658][_jj13348]).mouseEnabled = false;
         MovieClip(this._uk10025[_js4696]).mouseChildren = false;
         TextField(this._uk10025[_js4696][_jj13348]).mouseEnabled = false;
         this._cn2704();
      }
      
      private function _fm5551() : void
      {
         UtilsUtils._xl9503(this._uk10025[_gc15111],this._im12039._ps14738);
         TextField(this._uk10025[_gc15111]).mouseEnabled = false;
         UtilsUtils._xl9503(this._uk10025[_sh9298],this._im12039._pe7262);
         TextField(this._uk10025[_sh9298]).mouseEnabled = false;
         MovieClip(this._uk10025[_hp9156]).mouseChildren = false;
         MovieClip(this._uk10025[_sp4856]).mouseChildren = false;
         switch(this._an7454)
         {
            case _sp4899:
               UtilsUtils._xl9503(this._uk10025[_pr8658][_jj13348],(this._no7733._sb8254 * parseInt(this._unidades.text)).toString());
               break;
            case _ij2403:
               UtilsUtils._xl9503(this._uk10025[_js4696][_jj13348],(this._no7733._fi8088 * parseInt(this._unidades.text)).toString());
         }
         this._cn2704();
      }
      
      private function _fu13365() : void
      {
         switch(this._an7454)
         {
            case _jy4116:
               UtilsUtils._xl9503(this._uk10025[_pr8658][_jj13348],(this._no7733._sb8254 * parseInt(this._unidades.text)).toString());
               return;
            case _la5279:
               UtilsUtils._xl9503(this._uk10025[_js4696][_jj13348],(this._no7733._fi8088 * parseInt(this._unidades.text)).toString());
               return;
            default:
               return;
         }
      }
      
      private function _pf10789() : void
      {
         switch(this._an7454)
         {
            case _nq5864:
               UtilsUtils._xl9503(this._uk10025[_pr8658][_jj13348],(this._no7733._sb8254 * parseInt(this._unidades.text)).toString());
               break;
            case _ha675:
               UtilsUtils._xl9503(this._uk10025[_js4696][_jj13348],(this._no7733._fi8088 * parseInt(this._unidades.text)).toString());
         }
         UtilsUtils._xl9503(this._uk10025[TF_TITULO],this._im12039._hy5274);
         UtilsUtils._xl9503(this._uk10025[_gc4231],this._im12039._yt12270);
      }
      
      private function _cn2704() : void
      {
         UtilsUtils._xl9503(this._uk10025[_nq13019 + _xs5189][_sy10352],this._im12039.NORMAL);
         TextField(this._uk10025[_nq13019 + _xs5189][_sy10352]).mouseEnabled = false;
         UtilsUtils._xl9503(this._uk10025[_nq13019 + _le7259][_sy10352],this._im12039._hj14790);
         TextField(this._uk10025[_nq13019 + _le7259][_sy10352]).mouseEnabled = false;
         UtilsUtils._xl9503(this._uk10025[_nq13019 + _cq8447][_sy10352],this._im12039._cw10346);
         TextField(this._uk10025[_nq13019 + _cq8447][_sy10352]).mouseEnabled = false;
      }
      
      private function _kc2267(param1:MovieClip) : void
      {
         param1.addEventListener(MouseEvent.ROLL_OVER,this._ew4224);
         param1.addEventListener(MouseEvent.ROLL_OUT,this._ib13309);
      }
      
      private function _gw9892(param1:MovieClip) : void
      {
         param1.removeEventListener(MouseEvent.ROLL_OVER,this._ew4224);
         param1.removeEventListener(MouseEvent.ROLL_OUT,this._ib13309);
      }
      
      private function _qk12131() : void
      {
         var _loc1_:int = 0;
         var _loc2_:MovieClip = null;
         var _loc3_:MovieClip = null;
         this._kc2267(this._xd15368[_jj4855]);
         MovieClip(this._xd15368[_jj4855]).addEventListener(MouseEvent.MOUSE_DOWN,this._kp15909);
         this._kc2267(this._xd15368[_wi14285]);
         MovieClip(this._xd15368[_wi14285]).addEventListener(MouseEvent.MOUSE_DOWN,this._lx10670);
         this._kc2267(this._xd15368[_bb8496]);
         MovieClip(this._xd15368[_bb8496]).addEventListener(MouseEvent.MOUSE_DOWN,this._fs9791);
         _loc1_ = 0;
         while(_loc1_ < _ji2235)
         {
            _loc2_ = this._xd15368[_do11808 + (_loc1_ + 1)];
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this._oq7158);
            _loc2_.mouseChildren = false;
            _loc2_.addEventListener(MouseEvent.ROLL_OVER,this._bx14721);
            _loc2_.addEventListener(MouseEvent.ROLL_OUT,this._dq5199);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= _aj8296)
         {
            _loc3_ = this._xd15368[_kv6582 + _loc1_];
            if(_loc3_ != null)
            {
               _loc3_.addEventListener(MouseEvent.MOUSE_OVER,this._sl641);
               _loc3_.addEventListener(MouseEvent.MOUSE_OUT,this._bt6978);
               _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this._gc14960);
               _loc3_.alpha = _gn14915;
               _loc3_.buttonMode = true;
               _loc3_.idCatalogo = _loc1_;
            }
            _loc1_++;
         }
      }
      
      private function _ub7306() : void
      {
         var _loc1_:int = 0;
         var _loc2_:MovieClip = null;
         var _loc3_:MovieClip = null;
         this._gw9892(this._xd15368[_jj4855]);
         MovieClip(this._xd15368[_jj4855]).removeEventListener(MouseEvent.MOUSE_DOWN,this._kp15909);
         this._gw9892(this._xd15368[_wi14285]);
         MovieClip(this._xd15368[_wi14285]).removeEventListener(MouseEvent.MOUSE_DOWN,this._lx10670);
         this._gw9892(this._xd15368[_bb8496]);
         MovieClip(this._xd15368[_bb8496]).removeEventListener(MouseEvent.MOUSE_DOWN,this._fs9791);
         _loc1_ = 0;
         while(_loc1_ < _ji2235)
         {
            _loc2_ = this._xd15368[_do11808 + (_loc1_ + 1)];
            _loc2_.removeEventListener(MouseEvent.MOUSE_DOWN,this._oq7158);
            _loc2_.removeEventListener(MouseEvent.ROLL_OVER,this._bx14721);
            _loc2_.removeEventListener(MouseEvent.ROLL_OUT,this._dq5199);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= _aj8296)
         {
            _loc3_ = this._xd15368[_kv6582 + _loc1_];
            if(_loc3_ != null)
            {
               _loc3_.removeEventListener(MouseEvent.MOUSE_OVER,this._sl641);
               _loc3_.removeEventListener(MouseEvent.MOUSE_OUT,this._bt6978);
               _loc3_.removeEventListener(MouseEvent.MOUSE_DOWN,this._gc14960);
            }
            _loc1_++;
         }
      }
      
      public function _cs4168() : void
      {
         switch(this._an7454)
         {
            case _sh10580:
               this._uv4014();
               MovieClip(this._uk10025[_pr8658]).addEventListener(MouseEvent.ROLL_OVER,this._su575);
               MovieClip(this._uk10025[_pr8658]).addEventListener(MouseEvent.ROLL_OUT,this._mb946);
               MovieClip(this._uk10025[_pr8658]).addEventListener(MouseEvent.MOUSE_DOWN,this._bi9028);
               MovieClip(this._uk10025[_pr8658]).buttonMode = true;
               MovieClip(this._uk10025[_js4696]).addEventListener(MouseEvent.ROLL_OVER,this._su575);
               MovieClip(this._uk10025[_js4696]).addEventListener(MouseEvent.ROLL_OUT,this._mb946);
               MovieClip(this._uk10025[_js4696]).addEventListener(MouseEvent.MOUSE_DOWN,this._my13661);
               MovieClip(this._uk10025[_js4696]).buttonMode = true;
               return;
            case _sp4899:
               this._uv4014();
               MovieClip(this._uk10025[_pr8658]).buttonMode = false;
               this._kc2267(this._uk10025[_hp9156]);
               MovieClip(this._uk10025[_hp9156]).addEventListener(MouseEvent.MOUSE_DOWN,this._bs15583);
               MovieClip(this._uk10025[_hp9156]).buttonMode = true;
               this._kc2267(this._uk10025[_sp4856]);
               MovieClip(this._uk10025[_sp4856]).addEventListener(MouseEvent.MOUSE_DOWN,this._dl6211);
               MovieClip(this._uk10025[_sp4856]).buttonMode = true;
               return;
            case _ij2403:
               this._uv4014();
               MovieClip(this._uk10025[_js4696]).buttonMode = false;
               this._kc2267(this._uk10025[_hp9156]);
               MovieClip(this._uk10025[_hp9156]).addEventListener(MouseEvent.MOUSE_DOWN,this._wn6516);
               MovieClip(this._uk10025[_hp9156]).buttonMode = true;
               this._kc2267(this._uk10025[_sp4856]);
               MovieClip(this._uk10025[_sp4856]).addEventListener(MouseEvent.MOUSE_DOWN,this._dl6211);
               MovieClip(this._uk10025[_sp4856]).buttonMode = true;
               return;
            case _jy4116:
               return;
            case _la5279:
               return;
            case _nq5864:
               return;
            case _ha675:
               return;
            case _no1224:
               return;
            default:
               return;
         }
      }
      
      public function _hx5590() : void
      {
         switch(this._an7454)
         {
            case _sh10580:
               this._he14870();
               MovieClip(this._uk10025[_pr8658]).removeEventListener(MouseEvent.ROLL_OVER,this._su575);
               MovieClip(this._uk10025[_pr8658]).removeEventListener(MouseEvent.ROLL_OUT,this._mb946);
               MovieClip(this._uk10025[_pr8658]).removeEventListener(MouseEvent.MOUSE_DOWN,this._bi9028);
               MovieClip(this._uk10025[_js4696]).removeEventListener(MouseEvent.ROLL_OVER,this._su575);
               MovieClip(this._uk10025[_js4696]).removeEventListener(MouseEvent.ROLL_OUT,this._mb946);
               MovieClip(this._uk10025[_js4696]).removeEventListener(MouseEvent.MOUSE_DOWN,this._my13661);
               return;
            case _sp4899:
               this._he14870();
               this._gw9892(this._uk10025[_hp9156]);
               MovieClip(this._uk10025[_hp9156]).removeEventListener(MouseEvent.MOUSE_DOWN,this._bs15583);
               this._gw9892(this._uk10025[_sp4856]);
               MovieClip(this._uk10025[_sp4856]).removeEventListener(MouseEvent.MOUSE_DOWN,this._dl6211);
               return;
            case _ij2403:
               this._he14870();
               this._gw9892(this._uk10025[_hp9156]);
               MovieClip(this._uk10025[_hp9156]).removeEventListener(MouseEvent.MOUSE_DOWN,this._wn6516);
               this._gw9892(this._uk10025[_sp4856]);
               MovieClip(this._uk10025[_sp4856]).removeEventListener(MouseEvent.MOUSE_DOWN,this._dl6211);
               return;
            case _jy4116:
               return;
            case _la5279:
               return;
            case _nq5864:
               return;
            case _ha675:
               return;
            case _no1224:
               return;
            default:
               return;
         }
      }
      
      public function _uv4014() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            MovieClip(this._uk10025[_nq13019 + _loc1_]).addEventListener(MouseEvent.ROLL_OVER,this._xi655);
            MovieClip(this._uk10025[_nq13019 + _loc1_]).addEventListener(MouseEvent.ROLL_OUT,this._oh9263);
            MovieClip(this._uk10025[_nq13019 + _loc1_]).addEventListener(MouseEvent.MOUSE_DOWN,this._fp1914);
            MovieClip(this._uk10025[_nq13019 + _loc1_]).buttonMode = true;
            _loc1_++;
         }
      }
      
      public function _he14870() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            MovieClip(this._uk10025[_nq13019 + _loc1_]).removeEventListener(MouseEvent.ROLL_OVER,this._xi655);
            MovieClip(this._uk10025[_nq13019 + _loc1_]).removeEventListener(MouseEvent.ROLL_OUT,this._oh9263);
            MovieClip(this._uk10025[_nq13019 + _loc1_]).removeEventListener(MouseEvent.MOUSE_DOWN,this._fp1914);
            _loc1_++;
         }
      }
   }
}

