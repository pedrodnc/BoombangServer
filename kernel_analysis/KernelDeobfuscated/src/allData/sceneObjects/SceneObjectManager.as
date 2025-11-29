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
      
      private var isEnabled:Boolean;
      
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
         this._lh12096.addEventListener(LoadobjectModel._bs1884,this.loadResource);
         this.isEnabled = false;
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
      
      private function loadResource(param1:LoadobjectModel) : void
      {
         switch(param1.obj.type)
         {
            case LoadobjectModel.count2:
               var count:SceneObjectProperties = SceneObjectProperties(param1.obj.obj);
               var count3:int = int(this._bl11315.objects.length);
               dispatchEvent(new LoadobjectModel(LoadobjectModel._bs1884,param1.obj));
               return;
            case LoadobjectModel.count3:
               dispatchEvent(new LoadobjectModel(LoadobjectModel._bs1884,param1.obj));
               return;
            default:
               return;
         }
      }
      
      public function _vu11199(param1:SceneObjectRenderer) : void
      {
         if(this._tb12411 != null && param1.show())
         {
            this._tb12411._xi10122(param1);
         }
      }
      
      public function _os15029(param1:SceneObjectRenderer) : void
      {
         if(param1.show())
         {
            param1.graphics.mouseEnabled = true;
            param1.graphics.mouseChildren = true;
            param1.show1().addEventListener(MouseEvent.MOUSE_DOWN,this.render);
         }
      }
      
      public function move(param1:SceneObjectRenderer) : void
      {
         if(param1.show())
         {
            param1.show1().removeEventListener(MouseEvent.MOUSE_DOWN,this.render);
         }
      }
      
      private function render(param1:MouseEvent) : void
      {
         var count:SceneObjectRenderer = null;
         param1.stopImmediatePropagation();
         for each(count in this._bl11315.objects)
         {
            if(count != null && count.show() && count.isEnabled2 && count.show1() == param1.currentTarget)
            {
               count.show1()._BaseObjectsOnObjectClick(param1);
               break;
            }
         }
      }
      
      public function _di5973(param1:SceneObjectRenderer) : void
      {
         if(param1._sl11700._kc6805 == null)
         {
            switch(param1._sl11700.count46)
            {
               case CatobjectsController.count5:
               case CatobjectsController.count14:
               case CatobjectsController.count17:
               case CatobjectsController.count23:
               case CatobjectsController.count24:
               case CatobjectsController.count25:
               case CatobjectsController.count26:
               case CatobjectsController.count31:
               case CatobjectsController.count30:
               case CatobjectsController.count40:
               case CatobjectsController.count37:
               case CatobjectsController.count38:
                  this._bn15829._uc3178(param1.graphics,1,true,_xw1367.count13);
                  break;
               default:
                  this._bn15829._uc3178(param1.graphics,1,false,_xw1367.count13);
            }
            if(!param1._sl11700._su5362)
            {
               this.loadObject(param1);
            }
         }
         else
         {
            switch(param1._sl11700.count46)
            {
               case CatobjectsController.count5:
               case CatobjectsController.count14:
               case CatobjectsController.count17:
               case CatobjectsController.count23:
               case CatobjectsController.count24:
               case CatobjectsController.count25:
               case CatobjectsController.count26:
               case CatobjectsController.count31:
               case CatobjectsController.count30:
               case CatobjectsController.count40:
               case CatobjectsController.count37:
               case CatobjectsController.count38:
                  this._bn15829._uc3178(param1.graphics,1,true,_xw1367.count13);
                  break;
               default:
                  this._bn15829._uc3178(param1.graphics,1,false,_xw1367.count13);
            }
            param1._fj8746();
         }
      }
      
      public function destroy(param1:SceneObjectRenderer) : void
      {
         this.move(param1);
         param1.isEnabled2 = false;
         param1.destroy();
         this._bn15829.move2(param1.graphics,_xw1367.count3);
      }
      
      public function loadObject(param1:SceneObjectProperties) : void
      {
         if(param1._sl11700._su5362)
         {
            return;
         }
         this._lh12096.addObject(LoadobjectModel.count2,param1,"dswmedia/objetos/",false);
         this._lh12096.start();
      }
      
      public function _kc15603(param1:String) : void
      {
      }
      
      public function loop() : void
      {
         var count2:Array = null;
         var count:int = 0;
         var count3:int = 0;
         var count1:SceneObjectRenderer = null;
         if(this._bl11315 != null)
         {
            count2 = this._bl11315.objects;
            count = int(count2.length);
            count3 = 0;
            while(count3 < count)
            {
               count1 = SceneObjectRenderer(count2[count3]);
               if(count1 != null)
               {
                  try
                  {
                     count1.loop();
                  }
                  catch(error:Error)
                  {
                  }
               }
               count3++;
            }
         }
      }
      
      public function _yj15635(param1:SceneObjectProperties, param2:Point, param3:Point, param4:uint = 0) : void
      {
         this._vp454.handleSocket7(param1.count2,param3.x,param3.y,param4);
         this.block();
      }
      
      public function render1(param1:DataobjectsModel) : void
      {
         var count:SceneObjectRenderer = null;
         var count3:int = 0;
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
         if(param1.show6())
         {
            for each(count in this._bl11315.objects)
            {
               if(count.show6())
               {
                  if(count.show7()._BaseObjectsMascotaGetMovieClipIconoMascota() != null)
                  {
                     count3++;
                  }
               }
               else if(count._sl11700._kc6805 == null)
               {
                  count3++;
               }
            }
         }
         if(this._bl11315.objects.length - this._bl11315._mx5402 < SceneModel._ks5033)
         {
            if(param1.show6() == false || param1.show6() == true && count3 < SceneModel._rd14912)
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
         this._vp454.handleSocket8(param1.count2,param3.x,param3.y,param4);
         this.block();
      }
      
      public function destroy1(param1:int) : Boolean
      {
         if(this._fv4682 != null && (param1 == this._fv4682.count2 || param1 == 0))
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
            TutorialManager._vo14571(TutorialGUI.textString4);
         }
         if(param2._sl11700.isEnabled5)
         {
            return;
         }
         if(param2.show6() == false || param2.show6() == true && param2.show7()._BaseObjectsMascotaGetDesplazaConClick() == false)
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
         var count:CatobjectsModel = new CatobjectsModel(param1.id,param1);
         this._lh12096.addObject(LoadobjectModel.count3,count,"dswmedia/objetos/catalog/small/",true);
         this._lh12096.start();
      }
      
      public function loadResource1(param1:SceneObjectData) : void
      {
         this._lh12096.loadResource(LoadobjectModel.count2,param1.count);
      }
      
      public function _rf12089(param1:int, param2:Array) : void
      {
         var count3:SceneObjectProperties = this._bl11315.render5(param1);
         if(count3 != null)
         {
            count3.color = param2;
            count3._rr14459();
         }
         else
         {
            this.logs._kp3815(new Logs(Logger.count,"ManagerObjects.changeColorObjectScene","idPose=" + param1));
         }
      }
      
      public function render2(param1:int, param2:int, param3:int, param4:int, param5:DatatypesModel, param6:Array, param7:Boolean = false) : void
      {
         var count8:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(param1));
         if(count8 != null)
         {
            if(count8._sl11700.count46 == CatobjectsController.count39)
            {
               this._bl11315.render6(count8.items5,count8);
               count8._dd6502 = param4;
               count8.items5 = param6;
            }
            else
            {
               this._bl11315.render6(count8.items5);
            }
            count8._ji16036(param2,param3,param5);
            this._bl11315._in8371(count8.items5,count8._sl11700.count48);
         }
         else
         {
            this.logs._kp3815(new Logs(Logger.count,"ManagerObjects.moveObjectScene","idPose=" + param1));
         }
         if(param7)
         {
            this._fv4682.destroy();
         }
      }
      
      public function render3(param1:int, param2:int, param3:Array) : void
      {
         var count1:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(param1));
         if(count1 != null)
         {
            this._bl11315.render6(count1.items5);
            count1._sr13322(param2,param3);
            this._bl11315._in8371(count1.items5,count1._sl11700.count48);
         }
         else
         {
            this.logs._kp3815(new Logs(Logger.count,"ManagerObjects.flipObjectScene","idPose=" + param1));
         }
      }
      
      public function render4(param1:int, param2:int, param3:Array) : void
      {
         var count1:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(param1));
         if(count1 != null)
         {
            this._bl11315.render6(count1.items5,count1);
            count1._dd6502 = param2;
            count1.items5 = param3;
            count1._qy6918(param3);
            this._bl11315._in8371(param3,count1._sl11700.count48);
         }
         else
         {
            this.logs._kp3815(new Logs(Logger.count,"ManagerObjects.heightObjectScene","idPose=" + param1));
         }
      }
      
      public function render5(param1:int, param2:int, param3:Array) : void
      {
         var count1:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(param1));
         if(count1 != null)
         {
            this._bl11315.render6(count1.items5);
            count1._ws8711(param2,param3);
            count1._fj8746();
            this._bl11315._in8371(count1.items5,count1._sl11700.count48);
         }
         else
         {
            this.logs._kp3815(new Logs(Logger.count,"ManagerObjects.chgTamObjectScene","idPose=" + param1));
         }
      }
      
      public function render6(param1:int) : void
      {
         var count:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(param1));
         if(count != null)
         {
            this._bl11315.render1(count);
            this._bl11315.destroy(count);
         }
         else
         {
            this.logs._kp3815(new Logs(Logger.count,"ManagerObjects.removeObject","idPose=" + param1));
         }
      }
      
      public function _hp13601() : void
      {
         this.isEnabled = false;
      }
      
      public function block() : void
      {
         this.isEnabled = true;
      }
      
      public function _do11186() : Boolean
      {
         return this.isEnabled;
      }
      
      public function render7(param1:int) : void
      {
         var count:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(param1));
         if(count != null)
         {
            count._sl11700.isEnabled5 = true;
         }
      }
      
      public function render8(param1:int) : void
      {
         var count:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(param1));
         if(count != null)
         {
            count._sl11700.isEnabled5 = false;
         }
      }
      
      public function render9(param1:int) : Point
      {
         var count:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(param1));
         return new Point(count.x,count.y);
      }
      
      public function _pi14544(param1:int) : Boolean
      {
         return this._bl11315.render5(param1) != null;
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
