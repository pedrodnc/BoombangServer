package src.allData.sceneObjects
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.*;
   import src.*;
   import src.allData.catObjects.*;
   import src.allData.scene.*;
   import src.allData.scene.skins.nodeTagsSkins._sy9767;
   import src.allData.scene.typeEscenarios.*;
   import src.allData.sceneObjects.dataObjects.*;
   import src.allData.sceneObjects.loadObject.*;
   import src.logs.*;
   import src.modules.interfaz.fichaKeko.booble.*;
   import src.modules.privados._bx10683;
   import src.modules.privados._xq2402;
   import src.modules.privados.editObject._se7088;
   import src.tv.boombang.application.objects.drag.*;
   import src.tv.boombang.application.tutorial.*;
   import src.tv.boombang.application.tutorial.gui.*;
   import src.tv.boombang.core.datatypes.Tile;
   
   public class _mg605 extends EventDispatcher
   {
      
      private static var _instance:_mg605;
      
      private var _gb3296:Boolean;
      
      private var editObject:_se7088;
      
      private var catalogo:_dp11732;
      
      private var _bn15829:_xw1367;
      
      private var _lh12096:_wp260;
      
      private var logs:_qn13596;
      
      private var _fv4682:_xl11610;
      
      private var _vp454:_bx10683;
      
      private var _tb12411:_xq2402;
      
      private var _wy2643:MovieClip;
      
      private var _bl11315:_il6324;
      
      public function _mg605(param1:_rw9443)
      {
         super();
         this.catalogo = _dp11732.getInstance();
         this._bn15829 = _xw1367.getInstance();
         this.logs = _qn13596.getInstance();
         this._lh12096 = new _wp260();
         this._lh12096.addEventListener(_jj10306._bs1884,this._gm13386);
         this._gb3296 = false;
      }
      
      public static function getInstance() : _mg605
      {
         if(_mg605._instance == null)
         {
            _mg605._instance = new _mg605(new _rw9443());
         }
         return _mg605._instance;
      }
      
      public function _fx9854(param1:_se7088) : void
      {
         this.editObject = param1;
      }
      
      public function setPrivadosMultiuser(param1:_bx10683) : void
      {
         this._vp454 = param1;
      }
      
      public function _ce12925(param1:MovieClip) : void
      {
         this._wy2643 = param1;
      }
      
      public function setPrivadosModule(param1:_xq2402) : void
      {
         this._tb12411 = param1;
      }
      
      public function _pe6003(param1:_il6324) : void
      {
         this._bl11315 = param1;
      }
      
      public function _vq14462() : void
      {
         this._fv4682 = new _xl11610(this._bl11315);
      }
      
      private function _gm13386(param1:_jj10306) : void
      {
         switch(param1.obj.type)
         {
            case _ft6295._dt15459:
               var _loc2_:_px10602 = _px10602(param1.obj.obj);
               var _loc3_:int = int(this._bl11315.objects.length);
               dispatchEvent(new _jj10306(_jj10306._bs1884,param1.obj));
               return;
            case _ft6295._tr9213:
               dispatchEvent(new _jj10306(_jj10306._bs1884,param1.obj));
               return;
            default:
               return;
         }
      }
      
      public function _vu11199(param1:_hl15578) : void
      {
         if(this._tb12411 != null && param1._rn2919())
         {
            this._tb12411._xi10122(param1);
         }
      }
      
      public function _os15029(param1:_hl15578) : void
      {
         if(param1._rn2919())
         {
            param1.graphics.mouseEnabled = true;
            param1.graphics.mouseChildren = true;
            param1._gn15451().addEventListener(MouseEvent.MOUSE_DOWN,this._hh10841);
         }
      }
      
      public function _vq10132(param1:_hl15578) : void
      {
         if(param1._rn2919())
         {
            param1._gn15451().removeEventListener(MouseEvent.MOUSE_DOWN,this._hh10841);
         }
      }
      
      private function _hh10841(param1:MouseEvent) : void
      {
         var _loc2_:_hl15578 = null;
         param1.stopImmediatePropagation();
         for each(_loc2_ in this._bl11315.objects)
         {
            if(_loc2_ != null && _loc2_._rn2919() && _loc2_._ub10189 && _loc2_._gn15451() == param1.currentTarget)
            {
               _loc2_._gn15451()._BaseObjectsOnObjectClick(param1);
               break;
            }
         }
      }
      
      public function _di5973(param1:_hl15578) : void
      {
         if(param1._sl11700._kc6805 == null)
         {
            switch(param1._sl11700._dv13852)
            {
               case _uq7753._pc8528:
               case _uq7753._ro523:
               case _uq7753._tr8404:
               case _uq7753._tx6934:
               case _uq7753._ug16090:
               case _uq7753._jh10992:
               case _uq7753._rm14205:
               case _uq7753._sp10453:
               case _uq7753._id9949:
               case _uq7753._kw6316:
               case _uq7753._of16060:
               case _uq7753._kr1990:
                  this._bn15829._uc3178(param1.graphics,1,true,_xw1367._dq996);
                  break;
               default:
                  this._bn15829._uc3178(param1.graphics,1,false,_xw1367._dq996);
            }
            if(!param1._sl11700._su5362)
            {
               this.loadObject(param1);
            }
         }
         else
         {
            switch(param1._sl11700._dv13852)
            {
               case _uq7753._pc8528:
               case _uq7753._ro523:
               case _uq7753._tr8404:
               case _uq7753._tx6934:
               case _uq7753._ug16090:
               case _uq7753._jh10992:
               case _uq7753._rm14205:
               case _uq7753._sp10453:
               case _uq7753._id9949:
               case _uq7753._kw6316:
               case _uq7753._of16060:
               case _uq7753._kr1990:
                  this._bn15829._uc3178(param1.graphics,1,true,_xw1367._dq996);
                  break;
               default:
                  this._bn15829._uc3178(param1.graphics,1,false,_xw1367._dq996);
            }
            param1._fj8746();
         }
      }
      
      public function _xu10900(param1:_hl15578) : void
      {
         this._vq10132(param1);
         param1._ub10189 = false;
         param1.destroy();
         this._bn15829._na10792(param1.graphics,_xw1367._jf1741);
      }
      
      public function loadObject(param1:_px10602) : void
      {
         if(param1._sl11700._su5362)
         {
            return;
         }
         this._lh12096.addObject(_ft6295._dt15459,param1,"dswmedia/objetos/",false);
         this._lh12096.start();
      }
      
      public function _kc15603(param1:String) : void
      {
      }
      
      public function loop() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:_hl15578 = null;
         if(this._bl11315 != null)
         {
            _loc1_ = this._bl11315.objects;
            _loc2_ = int(_loc1_.length);
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc4_ = _hl15578(_loc1_[_loc3_]);
               if(_loc4_ != null)
               {
                  try
                  {
                     _loc4_.loop();
                  }
                  catch(error:Error)
                  {
                  }
               }
               _loc3_++;
            }
         }
      }
      
      public function _yj15635(param1:_px10602, param2:Point, param3:Point, param4:uint = 0) : void
      {
         this._vp454._ko72(param1._hw14129,param3.x,param3.y,param4);
         this.block();
      }
      
      public function _rv11337(param1:_gl6654) : void
      {
         var _loc2_:_hl15578 = null;
         var _loc3_:int = 0;
         if(!this._bl11315._ih5473())
         {
            return;
         }
         if(!(this._bl11315 is _bq10515))
         {
            return;
         }
         if(this._do11186())
         {
            return;
         }
         if(param1._uw12896())
         {
            for each(_loc2_ in this._bl11315.objects)
            {
               if(_loc2_._uw12896())
               {
                  if(_loc2_._hn6442()._BaseObjectsMascotaGetMovieClipIconoMascota() != null)
                  {
                     _loc3_++;
                  }
               }
               else if(_loc2_._sl11700._kc6805 == null)
               {
                  _loc3_++;
               }
            }
         }
         if(this._bl11315.objects.length - this._bl11315._mx5402 < _iu13688._ks5033)
         {
            if(param1._uw12896() == false || param1._uw12896() == true && _loc3_ < _iu13688._rd14912)
            {
               this._fv4682.startDrag(param1,this._yn1662,_xl11610._iu13042,0,0);
            }
            else
            {
               this._tb12411._lp469._dc14886._uy9428()._ak11554(_vs7032._oy7764);
            }
         }
         else
         {
            this._tb12411._lp469._dc14886._uy9428()._ak11554(_vs7032._qf6437);
         }
      }
      
      public function _yn1662(param1:_px10602, param2:Point, param3:Point, param4:int = 0) : void
      {
         this._vp454._go3532(param1._hw14129,param3.x,param3.y,param4);
         this.block();
      }
      
      public function _lb15133(param1:int) : Boolean
      {
         if(this._fv4682 != null && (param1 == this._fv4682._hw14129 || param1 == 0))
         {
            this._fv4682.destroy();
            return true;
         }
         return false;
      }
      
      public function _ds11773(param1:MovieClip, param2:_xd7248) : void
      {
         this.editObject._dd931(param1,param2);
         this._tb12411._it1203();
      }
      
      public function _sg12039(param1:_xd7248, param2:_sy9767) : void
      {
         this.editObject._ff3307(param1,param2);
         this._tb12411._it1203();
      }
      
      public function _lc1990(param1:MouseEvent, param2:_hl15578) : void
      {
         this.editObject._ah9037(param2);
         this._tb12411._it1203();
         if(_do5953.activate)
         {
            _do5953._vo14571(_vk15050._wg10551);
         }
         if(param2._sl11700._jk15921)
         {
            return;
         }
         if(param2._uw12896() == false || param2._uw12896() == true && param2._hn6442()._BaseObjectsMascotaGetDesplazaConClick() == false)
         {
            this._fv4682.startDrag(param2,this._yj15635,_xl11610._jc11265,param2.graphics.x - param1.stageX,param2.graphics.y - param1.stageY);
         }
      }
      
      public function _dc2044(param1:_uq7753) : void
      {
         if(param1._su5362)
         {
            return;
         }
         var _loc2_:_uk2490 = new _uk2490(param1.id,param1);
         this._lh12096.addObject(_ft6295._tr9213,_loc2_,"dswmedia/objetos/catalog/small/",true);
         this._lh12096.start();
      }
      
      public function _gp13572(param1:_mx198) : void
      {
         this._lh12096._fr14202(_ft6295._dt15459,param1._rm6352);
      }
      
      public function _rf12089(param1:int, param2:Array) : void
      {
         var _loc3_:_px10602 = this._bl11315._yk9656(param1);
         if(_loc3_ != null)
         {
            _loc3_.color = param2;
            _loc3_._rr14459();
         }
         else
         {
            this.logs._kp3815(new _sy12041(_qn13596._dj10628,"ManagerObjects.changeColorObjectScene","idPose=" + param1));
         }
      }
      
      public function _vw7618(param1:int, param2:int, param3:int, param4:int, param5:Tile, param6:Array, param7:Boolean = false) : void
      {
         var _loc8_:_hl15578 = _hl15578(this._bl11315._yk9656(param1));
         if(_loc8_ != null)
         {
            if(_loc8_._sl11700._dv13852 == _uq7753._km4276)
            {
               this._bl11315._ca9348(_loc8_._vf11740,_loc8_);
               _loc8_._dd6502 = param4;
               _loc8_._vf11740 = param6;
            }
            else
            {
               this._bl11315._ca9348(_loc8_._vf11740);
            }
            _loc8_._ji16036(param2,param3,param5);
            this._bl11315._in8371(_loc8_._vf11740,_loc8_._sl11700._vm6245);
         }
         else
         {
            this.logs._kp3815(new _sy12041(_qn13596._dj10628,"ManagerObjects.moveObjectScene","idPose=" + param1));
         }
         if(param7)
         {
            this._fv4682.destroy();
         }
      }
      
      public function _ed8283(param1:int, param2:int, param3:Array) : void
      {
         var _loc4_:_hl15578 = _hl15578(this._bl11315._yk9656(param1));
         if(_loc4_ != null)
         {
            this._bl11315._ca9348(_loc4_._vf11740);
            _loc4_._sr13322(param2,param3);
            this._bl11315._in8371(_loc4_._vf11740,_loc4_._sl11700._vm6245);
         }
         else
         {
            this.logs._kp3815(new _sy12041(_qn13596._dj10628,"ManagerObjects.flipObjectScene","idPose=" + param1));
         }
      }
      
      public function _nv9801(param1:int, param2:int, param3:Array) : void
      {
         var _loc4_:_hl15578 = _hl15578(this._bl11315._yk9656(param1));
         if(_loc4_ != null)
         {
            this._bl11315._ca9348(_loc4_._vf11740,_loc4_);
            _loc4_._dd6502 = param2;
            _loc4_._vf11740 = param3;
            _loc4_._qy6918(param3);
            this._bl11315._in8371(param3,_loc4_._sl11700._vm6245);
         }
         else
         {
            this.logs._kp3815(new _sy12041(_qn13596._dj10628,"ManagerObjects.heightObjectScene","idPose=" + param1));
         }
      }
      
      public function _bc13845(param1:int, param2:int, param3:Array) : void
      {
         var _loc4_:_hl15578 = _hl15578(this._bl11315._yk9656(param1));
         if(_loc4_ != null)
         {
            this._bl11315._ca9348(_loc4_._vf11740);
            _loc4_._ws8711(param2,param3);
            _loc4_._fj8746();
            this._bl11315._in8371(_loc4_._vf11740,_loc4_._sl11700._vm6245);
         }
         else
         {
            this.logs._kp3815(new _sy12041(_qn13596._dj10628,"ManagerObjects.chgTamObjectScene","idPose=" + param1));
         }
      }
      
      public function _tf14064(param1:int) : void
      {
         var _loc2_:_hl15578 = _hl15578(this._bl11315._yk9656(param1));
         if(_loc2_ != null)
         {
            this._bl11315._vt14030(_loc2_);
            this._bl11315._xu10900(_loc2_);
         }
         else
         {
            this.logs._kp3815(new _sy12041(_qn13596._dj10628,"ManagerObjects.removeObject","idPose=" + param1));
         }
      }
      
      public function _hp13601() : void
      {
         this._gb3296 = false;
      }
      
      public function block() : void
      {
         this._gb3296 = true;
      }
      
      public function _do11186() : Boolean
      {
         return this._gb3296;
      }
      
      public function _ic1561(param1:int) : void
      {
         var _loc2_:_hl15578 = _hl15578(this._bl11315._yk9656(param1));
         if(_loc2_ != null)
         {
            _loc2_._sl11700._jk15921 = true;
         }
      }
      
      public function _sq5790(param1:int) : void
      {
         var _loc2_:_hl15578 = _hl15578(this._bl11315._yk9656(param1));
         if(_loc2_ != null)
         {
            _loc2_._sl11700._jk15921 = false;
         }
      }
      
      public function _lc12635(param1:int) : Point
      {
         var _loc2_:_hl15578 = _hl15578(this._bl11315._yk9656(param1));
         return new Point(_loc2_.x,_loc2_.y);
      }
      
      public function _pi14544(param1:int) : Boolean
      {
         return this._bl11315._yk9656(param1) != null;
      }
   }
}

class _rw9443
{
   
   public function _rw9443()
   {
      super();
   }
}
