package src.allData.sceneObjects
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.*;
   import src.*;
   import src.allData.catObjects.*;
   import src.allData.scene.*;
   import src.allData.scene.skins.nodeTagsSkins.NodetagsskinsController;
   import src.allData.scene.typeEscenarios.*;
   import src.allData.sceneObjects.dataObjects.*;
   import src.allData.sceneObjects.loadObject.*;
   import src.logs.*;
   import src.modules.interfaz.fichaKeko.booble.*;
   import src.modules.privados.PrivadosController;
   import src.modules.privados.PrivadosModel;
   import src.modules.privados.editObject.EditobjectModel;
   import src.tv.boombang.application.objects.drag.*;
   import src.tv.boombang.application.tutorial.*;
   import src.tv.boombang.application.tutorial.gui.*;
   import src.tv.boombang.core.datatypes.DatatypesModel;
   
   public class SceneObjectManager extends EventDispatcher
   {
      
      private static var _instance:SceneObjectManager;
      
      private var _gb3296:Boolean;
      
      private var editObject:EditobjectModel;
      
      private var catalogo:CatalogObject;
      
      private var _bn15829:_xw1367;
      
      private var _lh12096:LoadobjectController;
      
      private var logs:Logger;
      
      private var _fv4682:DragModel;
      
      private var _vp454:PrivadosController;
      
      private var _tb12411:PrivadosModel;
      
      private var _wy2643:MovieClip;
      
      private var _bl11315:SceneType;
      
      public function SceneObjectManager(param1:_rw9443)
      {
         super();
         this.catalogo = CatalogObject.getInstance();
         this._bn15829 = _xw1367.getInstance();
         this.logs = Logger.getInstance();
         this._lh12096 = new LoadobjectController();
         this._lh12096.addEventListener(LoadobjectModel._bs1884,this._gm13386);
         this._gb3296 = false;
      }
      
      public static function getInstance() : SceneObjectManager
      {
         if(SceneObjectManager._instance == null)
         {
            SceneObjectManager._instance = new SceneObjectManager(new _rw9443());
         }
         return SceneObjectManager._instance;
      }
      
      public function _fx9854(param1:EditobjectModel) : void
      {
         this.editObject = param1;
      }
      
      public function setPrivadosMultiuser(param1:PrivadosController) : void
      {
         this._vp454 = param1;
      }
      
      public function _ce12925(param1:MovieClip) : void
      {
         this._wy2643 = param1;
      }
      
      public function setPrivadosModule(param1:PrivadosModel) : void
      {
         this._tb12411 = param1;
      }
      
      public function _pe6003(param1:SceneType) : void
      {
         this._bl11315 = param1;
      }
      
      public function _vq14462() : void
      {
         this._fv4682 = new DragModel(this._bl11315);
      }
      
      private function _gm13386(param1:LoadobjectModel) : void
      {
         switch(param1.obj.type)
         {
            case LoadobjectModel._dt15459:
               var _loc2_:SceneObjectProperties = SceneObjectProperties(param1.obj.obj);
               var _loc3_:int = int(this._bl11315.objects.length);
               dispatchEvent(new LoadobjectModel(LoadobjectModel._bs1884,param1.obj));
               return;
            case LoadobjectModel._tr9213:
               dispatchEvent(new LoadobjectModel(LoadobjectModel._bs1884,param1.obj));
               return;
            default:
               return;
         }
      }
      
      public function _vu11199(param1:SceneObjectRenderer) : void
      {
         if(this._tb12411 != null && param1._rn2919())
         {
            this._tb12411._xi10122(param1);
         }
      }
      
      public function _os15029(param1:SceneObjectRenderer) : void
      {
         if(param1._rn2919())
         {
            param1.graphics.mouseEnabled = true;
            param1.graphics.mouseChildren = true;
            param1._gn15451().addEventListener(MouseEvent.MOUSE_DOWN,this._hh10841);
         }
      }
      
      public function _vq10132(param1:SceneObjectRenderer) : void
      {
         if(param1._rn2919())
         {
            param1._gn15451().removeEventListener(MouseEvent.MOUSE_DOWN,this._hh10841);
         }
      }
      
      private function _hh10841(param1:MouseEvent) : void
      {
         var _loc2_:SceneObjectRenderer = null;
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
      
      public function _di5973(param1:SceneObjectRenderer) : void
      {
         if(param1._sl11700._kc6805 == null)
         {
            switch(param1._sl11700._dv13852)
            {
               case CatobjectsController._pc8528:
               case CatobjectsController._ro523:
               case CatobjectsController._tr8404:
               case CatobjectsController._tx6934:
               case CatobjectsController._ug16090:
               case CatobjectsController._jh10992:
               case CatobjectsController._rm14205:
               case CatobjectsController._sp10453:
               case CatobjectsController._id9949:
               case CatobjectsController._kw6316:
               case CatobjectsController._of16060:
               case CatobjectsController._kr1990:
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
               case CatobjectsController._pc8528:
               case CatobjectsController._ro523:
               case CatobjectsController._tr8404:
               case CatobjectsController._tx6934:
               case CatobjectsController._ug16090:
               case CatobjectsController._jh10992:
               case CatobjectsController._rm14205:
               case CatobjectsController._sp10453:
               case CatobjectsController._id9949:
               case CatobjectsController._kw6316:
               case CatobjectsController._of16060:
               case CatobjectsController._kr1990:
                  this._bn15829._uc3178(param1.graphics,1,true,_xw1367._dq996);
                  break;
               default:
                  this._bn15829._uc3178(param1.graphics,1,false,_xw1367._dq996);
            }
            param1._fj8746();
         }
      }
      
      public function _xu10900(param1:SceneObjectRenderer) : void
      {
         this._vq10132(param1);
         param1._ub10189 = false;
         param1.destroy();
         this._bn15829._na10792(param1.graphics,_xw1367._jf1741);
      }
      
      public function loadObject(param1:SceneObjectProperties) : void
      {
         if(param1._sl11700._su5362)
         {
            return;
         }
         this._lh12096.addObject(LoadobjectModel._dt15459,param1,"dswmedia/objetos/",false);
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
         var _loc4_:SceneObjectRenderer = null;
         if(this._bl11315 != null)
         {
            _loc1_ = this._bl11315.objects;
            _loc2_ = int(_loc1_.length);
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc4_ = SceneObjectRenderer(_loc1_[_loc3_]);
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
      
      public function _yj15635(param1:SceneObjectProperties, param2:Point, param3:Point, param4:uint = 0) : void
      {
         this._vp454._ko72(param1._hw14129,param3.x,param3.y,param4);
         this.block();
      }
      
      public function _rv11337(param1:DataobjectsModel) : void
      {
         var _loc2_:SceneObjectRenderer = null;
         var _loc3_:int = 0;
         if(!this._bl11315._ih5473())
         {
            return;
         }
         if(!(this._bl11315 is SceneTypeIsland))
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
         if(this._bl11315.objects.length - this._bl11315._mx5402 < SceneModel._ks5033)
         {
            if(param1._uw12896() == false || param1._uw12896() == true && _loc3_ < SceneModel._rd14912)
            {
               this._fv4682.startDrag(param1,this._yn1662,DragModel._iu13042,0,0);
            }
            else
            {
               this._tb12411._lp469._dc14886._uy9428()._ak11554(BoobleUtils._oy7764);
            }
         }
         else
         {
            this._tb12411._lp469._dc14886._uy9428()._ak11554(BoobleUtils._qf6437);
         }
      }
      
      public function _yn1662(param1:SceneObjectProperties, param2:Point, param3:Point, param4:int = 0) : void
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
      
      public function _ds11773(param1:MovieClip, param2:SceneModel) : void
      {
         this.editObject._dd931(param1,param2);
         this._tb12411._it1203();
      }
      
      public function _sg12039(param1:SceneModel, param2:NodetagsskinsController) : void
      {
         this.editObject._ff3307(param1,param2);
         this._tb12411._it1203();
      }
      
      public function _lc1990(param1:MouseEvent, param2:SceneObjectRenderer) : void
      {
         this.editObject._ah9037(param2);
         this._tb12411._it1203();
         if(TutorialManager.activate)
         {
            TutorialManager._vo14571(TutorialGUI._wg10551);
         }
         if(param2._sl11700._jk15921)
         {
            return;
         }
         if(param2._uw12896() == false || param2._uw12896() == true && param2._hn6442()._BaseObjectsMascotaGetDesplazaConClick() == false)
         {
            this._fv4682.startDrag(param2,this._yj15635,DragModel._jc11265,param2.graphics.x - param1.stageX,param2.graphics.y - param1.stageY);
         }
      }
      
      public function _dc2044(param1:CatobjectsController) : void
      {
         if(param1._su5362)
         {
            return;
         }
         var _loc2_:CatobjectsModel = new CatobjectsModel(param1.id,param1);
         this._lh12096.addObject(LoadobjectModel._tr9213,_loc2_,"dswmedia/objetos/catalog/small/",true);
         this._lh12096.start();
      }
      
      public function _gp13572(param1:SceneObjectData) : void
      {
         this._lh12096._fr14202(LoadobjectModel._dt15459,param1._rm6352);
      }
      
      public function _rf12089(param1:int, param2:Array) : void
      {
         var _loc3_:SceneObjectProperties = this._bl11315._yk9656(param1);
         if(_loc3_ != null)
         {
            _loc3_.color = param2;
            _loc3_._rr14459();
         }
         else
         {
            this.logs._kp3815(new Logs(Logger._dj10628,"ManagerObjects.changeColorObjectScene","idPose=" + param1));
         }
      }
      
      public function _vw7618(param1:int, param2:int, param3:int, param4:int, param5:DatatypesModel, param6:Array, param7:Boolean = false) : void
      {
         var _loc8_:SceneObjectRenderer = SceneObjectRenderer(this._bl11315._yk9656(param1));
         if(_loc8_ != null)
         {
            if(_loc8_._sl11700._dv13852 == CatobjectsController._km4276)
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
            this.logs._kp3815(new Logs(Logger._dj10628,"ManagerObjects.moveObjectScene","idPose=" + param1));
         }
         if(param7)
         {
            this._fv4682.destroy();
         }
      }
      
      public function _ed8283(param1:int, param2:int, param3:Array) : void
      {
         var _loc4_:SceneObjectRenderer = SceneObjectRenderer(this._bl11315._yk9656(param1));
         if(_loc4_ != null)
         {
            this._bl11315._ca9348(_loc4_._vf11740);
            _loc4_._sr13322(param2,param3);
            this._bl11315._in8371(_loc4_._vf11740,_loc4_._sl11700._vm6245);
         }
         else
         {
            this.logs._kp3815(new Logs(Logger._dj10628,"ManagerObjects.flipObjectScene","idPose=" + param1));
         }
      }
      
      public function _nv9801(param1:int, param2:int, param3:Array) : void
      {
         var _loc4_:SceneObjectRenderer = SceneObjectRenderer(this._bl11315._yk9656(param1));
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
            this.logs._kp3815(new Logs(Logger._dj10628,"ManagerObjects.heightObjectScene","idPose=" + param1));
         }
      }
      
      public function _bc13845(param1:int, param2:int, param3:Array) : void
      {
         var _loc4_:SceneObjectRenderer = SceneObjectRenderer(this._bl11315._yk9656(param1));
         if(_loc4_ != null)
         {
            this._bl11315._ca9348(_loc4_._vf11740);
            _loc4_._ws8711(param2,param3);
            _loc4_._fj8746();
            this._bl11315._in8371(_loc4_._vf11740,_loc4_._sl11700._vm6245);
         }
         else
         {
            this.logs._kp3815(new Logs(Logger._dj10628,"ManagerObjects.chgTamObjectScene","idPose=" + param1));
         }
      }
      
      public function _tf14064(param1:int) : void
      {
         var _loc2_:SceneObjectRenderer = SceneObjectRenderer(this._bl11315._yk9656(param1));
         if(_loc2_ != null)
         {
            this._bl11315._vt14030(_loc2_);
            this._bl11315._xu10900(_loc2_);
         }
         else
         {
            this.logs._kp3815(new Logs(Logger._dj10628,"ManagerObjects.removeObject","idPose=" + param1));
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
         var _loc2_:SceneObjectRenderer = SceneObjectRenderer(this._bl11315._yk9656(param1));
         if(_loc2_ != null)
         {
            _loc2_._sl11700._jk15921 = true;
         }
      }
      
      public function _sq5790(param1:int) : void
      {
         var _loc2_:SceneObjectRenderer = SceneObjectRenderer(this._bl11315._yk9656(param1));
         if(_loc2_ != null)
         {
            _loc2_._sl11700._jk15921 = false;
         }
      }
      
      public function _lc12635(param1:int) : Point
      {
         var _loc2_:SceneObjectRenderer = SceneObjectRenderer(this._bl11315._yk9656(param1));
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
