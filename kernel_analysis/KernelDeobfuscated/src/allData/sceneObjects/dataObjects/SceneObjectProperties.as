package src.allData.sceneObjects.dataObjects
{
   import flash.display.*;
   import src.allData.catObjects.*;
   import src.allData.sceneObjects.loadObject.*;
   import src.logs.*;
   import src.modules.privados.PrivadosModel;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.objects.*;
   import src.utils.*;
   
   public class SceneObjectProperties extends SceneObjectData
   {
      
      protected static const textString:String = "mcColor";
      
      private static const count:Number = 34;
      
      public var count1:Number = 34;
      
      public var count2:int;
      
      public var count4:int;
      
      public var count4:int;
      
      private var count5:Number;
      
      private var _color:Array;
      
      private var isEnabled:Boolean = false;
      
      private var isEnabled1:Boolean;
      
      protected var _pk3182:MovieClip;
      
      public var textString1:String;
      
      public var isEnabled2:Boolean;
      
      private var isEnabled3:Boolean;
      
      public function SceneObjectProperties(param1:int, param2:int, param3:int, param4:int, param5:Array, param6:CatobjectsController, param7:String)
      {
         super(param2,param6);
         this.count2 = param1;
         this.count4 = param3;
         this.count4 = param4;
         this.color = param5;
         this.graphics = new MovieClip();
         this.isEnabled2 = false;
         this.isEnabled3 = false;
         this.textString1 = param7;
      }
      
      public function get _ts12318() : Number
      {
         return this.count5;
      }
      
      public function set _ts12318(param1:Number) : void
      {
         this.count5 = param1;
         if(0 < this.count5)
         {
            this.count1 = count * this.count5;
         }
      }
      
      public function get color() : Array
      {
         return this._color;
      }
      
      public function set color(param1:Array) : void
      {
         this._color = param1;
      }
      
      public function get graphics() : MovieClip
      {
         return this._pk3182;
      }
      
      public function set graphics(param1:MovieClip) : void
      {
         this._pk3182 = param1;
      }
      
      public function _rr14459() : void
      {
         if(_sl11700._kc6805 == null)
         {
            return;
         }
         var count2:Number = Number(_sl11700.items4[this.count4]);
         if(this._ls11954(count2 * this.count5) == false)
         {
            Logger.getInstance()._kp3815(new Logs(Logger.count,"InstanciedObject.refreshGraphics","idObj = " + count + " name = " + _sl11700.textString));
            return;
         }
      }
      
      public function _fj8746() : void
      {
         if(_sl11700.count46 != CatobjectsController.count39)
         {
            this.graphics.locz = _sl11700.items6[this.count4] * this.count5;
         }
      }
      
      public function _no8983() : void
      {
         StringUtils.cleanChildsMovieclip(this._pk3182);
      }
      
      private function _ls11954(param1:Number) : Boolean
      {
         var count:MovieClip = null;
         var count3:MovieClip = null;
         var count1:MovieClip = null;
         var count2:MovieClip = null;
         switch(_sl11700.count46)
         {
            case CatobjectsController.count4:
               this._no8983();
               count3 = new MovieClip();
               count1 = new MovieClip();
               count1.addChild(this._rd1942(param1));
               count3.addChild(count1);
               this.graphics.addChild(count3);
               return true;
            default:
               if(this.isEnabled3 == false)
               {
                  this._no8983();
                  count = this._qx14888(param1);
                  if(_sl11700._su5362)
                  {
                     count = GameObject._wn4796(_sl11700._hf10429,count,_sl11700.id);
                  }
                  if(count is BaseObjects)
                  {
                     BaseObjects(count)._BaseObjectsInit();
                     BaseObjects(count)._BaseObjectsSetFlipped(this.count4);
                  }
                  this.loadResource(count);
                  this.isEnabled3 = true;
                  this._pk3182.addChild(count);
               }
               else
               {
                  count = MovieClip(this._pk3182.getChildAt(0));
                  count2 = MovieClip(count.getChildByName(LoadobjectModel.urlString));
                  if(!count2)
                  {
                     count = MovieClip(this.graphics.getChildAt(1));
                     count2 = MovieClip(count.getChildByName(LoadobjectModel.urlString));
                  }
                  count2.scaleX = param1;
                  count2.scaleY = param1;
                  this.loadResource(count);
               }
               return true;
         }
      }
      
      public function destroy() : void
      {
         if(this.isEnabled3)
         {
            if(this.show())
            {
               this.show1()._BaseObjectsDestroy();
            }
            this.isEnabled3 = false;
         }
         this._no8983();
      }
      
      public function loop() : void
      {
         var count2:BaseObjects = null;
         if(this.show())
         {
            count2 = this.show1();
            if(count2 != null)
            {
               try
               {
                  count2._BaseObjectsLoop();
               }
               catch(error:Error)
               {
               }
            }
         }
      }
      
      public function _ca5780(param1:Boolean, param2:Array, param3:XML, param4:PrivadosModel, param5:SceneObjectRenderer) : void
      {
         var count7:BaseObjects = null;
         if(this.show())
         {
            count7 = this.show1();
            if(count7 != null)
            {
               count7._BaseObjectsSetIdPose(this.count2);
               count7._BaseObjectsSetOwner(param1);
               count7._BaseObjectsSetXMLTexts(param3);
               count7._BaseObjectsSetProps(param2);
               count7._BaseObjectsSetIntegracionObjects(param4);
               count7._BaseObjectsSetPropiedadObjetc(param5.textString1);
               count7._BaseObjectsSetNombreObject(param5._sl11700.name);
               count7._BaseObjectsSetFlipObject(param5.count4);
               this.isEnabled2 = true;
            }
         }
      }
      
      public function show() : Boolean
      {
         var count2:DisplayObject = null;
         if(this._pk3182 != null && this._pk3182.numChildren == 1)
         {
            count2 = this._pk3182.getChildAt(0);
            if(count2 is BaseObjects)
            {
               return true;
            }
         }
         return false;
      }
      
      public function show1() : BaseObjects
      {
         var count2:DisplayObject = null;
         if(this._pk3182 != null && this._pk3182.numChildren == 1)
         {
            count2 = this._pk3182.getChildAt(0);
            if(count2 is BaseObjects)
            {
               return BaseObjects(count2);
            }
         }
         return null;
      }
      
      public function show2() : Boolean
      {
         var count2:DisplayObject = null;
         if(this._pk3182 != null && this._pk3182.numChildren == 1)
         {
            count2 = this._pk3182.getChildAt(0);
            if(count2 is BaseObjectsAnimado)
            {
               return true;
            }
         }
         return false;
      }
      
      public function show3() : BaseObjectsAnimado
      {
         var count2:DisplayObject = null;
         if(this.graphics != null && this.graphics.numChildren == 1)
         {
            count2 = this.graphics.getChildAt(0);
            if(count2 is BaseObjectsAnimado)
            {
               return BaseObjectsAnimado(count2);
            }
         }
         return null;
      }
      
      public function show4() : Boolean
      {
         var count2:DisplayObject = null;
         if(this.graphics != null && this.graphics.numChildren == 1)
         {
            count2 = this.graphics.getChildAt(0);
            if(count2 is BaseObjectsEnter)
            {
               return true;
            }
         }
         return false;
      }
      
      public function show5() : BaseObjectsEnter
      {
         var count2:DisplayObject = null;
         if(this.graphics != null && this.graphics.numChildren == 1)
         {
            count2 = this.graphics.getChildAt(0);
            if(count2 is BaseObjectsEnter)
            {
               return BaseObjectsEnter(count2);
            }
         }
         return null;
      }
      
      public function show6() : Boolean
      {
         var count2:DisplayObject = null;
         if(this._pk3182 != null && this._pk3182.numChildren == 1)
         {
            count2 = this._pk3182.getChildAt(0);
            if(count2 is BaseObjectsMascota)
            {
               return true;
            }
         }
         return false;
      }
      
      public function show7() : BaseObjectsMascota
      {
         var count2:DisplayObject = null;
         if(this.graphics != null && this.graphics.numChildren == 1)
         {
            count2 = this.graphics.getChildAt(0);
            if(count2 is BaseObjectsMascota)
            {
               return BaseObjectsMascota(count2);
            }
         }
         return null;
      }
      
      public function show8() : Boolean
      {
         var count2:DisplayObject = null;
         if(this.graphics != null && this.graphics.numChildren == 1)
         {
            count2 = this.graphics.getChildAt(0);
            if(count2 is BaseObjectsCajitaSorpresa)
            {
               return true;
            }
         }
         return false;
      }
      
      public function show9() : BaseObjectsCajitaSorpresa
      {
         var count2:DisplayObject = null;
         if(this.graphics != null && this.graphics.numChildren == 1)
         {
            count2 = this.graphics.getChildAt(0);
            if(count2 is BaseObjectsCajitaSorpresa)
            {
               return BaseObjectsCajitaSorpresa(count2);
            }
         }
         return null;
      }
      
      public function _rd1942(param1:Number) : Bitmap
      {
         var count:MovieClip = null;
         var count3:MovieClip = null;
         if(_sl11700._kc6805 == null)
         {
            return null;
         }
         if(_sl11700._su5362)
         {
            count = (ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._bn15619(_sl11700.textString17,"AssetObject");
            this.loadResource(count);
            return StringUtils.render2(count,param1);
         }
         count3 = MovieClip(StringUtils._dx10334(_sl11700._kc6805));
         this.loadResource(count3);
         return StringUtils.render2(count3,param1);
      }
      
      private function _qx14888(param1:Number) : MovieClip
      {
         var count:MovieClip = null;
         var count3:MovieClip = null;
         var count1:MovieClip = null;
         var count2:MovieClip = null;
         if(_sl11700._kc6805 == null)
         {
            return null;
         }
         if(_sl11700._su5362)
         {
            count = (ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._bn15619(_sl11700.textString17,"AssetObject");
            count.mcObject.x = 0;
            count.mcObject.y = 0;
            count.mcObject.scaleX = param1;
            count.mcObject.scaleY = param1;
            return count;
         }
         count3 = MovieClip(StringUtils._dx10334(_sl11700._kc6805));
         count1 = MovieClip(StringUtils._dx10334(MovieClip(_sl11700._kc6805).getChildByName(LoadobjectModel.urlString)));
         count3.removeChild(count3.getChildByName(LoadobjectModel.urlString));
         count3.addChild(count1);
         count3.mcObject = count1;
         count2 = MovieClip(count3.getChildByName(LoadobjectModel.urlString));
         count2.x = 0;
         count2.y = 0;
         count2.scaleX = param1;
         count2.scaleY = param1;
         return count3;
      }
      
      public function _vd13151(param1:int) : Bitmap
      {
         if(_sl11700._kc6805 == null)
         {
            return null;
         }
         var count:MovieClip = MovieClip(StringUtils._dx10334(_sl11700._kc6805));
         this.loadResource(count);
         return this._xm1056(count,param1);
      }
      
      public function _ah1673(param1:MovieClip) : Bitmap
      {
         StringUtils.show1(param1,this.color);
         return StringUtils.render1(param1);
      }
      
      private function _xm1056(param1:MovieClip, param2:int) : Bitmap
      {
         var count3:Number = NaN;
         var count1:Number = NaN;
         var count2:Number = 1;
         if(param1.width != 0 && param1.height != 0)
         {
            count3 = param2 / param1.width;
            count1 = param2 / param1.height;
            count2 = Math.min(count1,count3);
         }
         if(count2 > 1)
         {
            count2 = 1;
         }
         var count7:Bitmap = StringUtils.render2(param1,count2);
         count7.x = Math.round(-count7.width / 2);
         count7.y = Math.round(-count7.height / 2);
         return count7;
      }
      
      private function loadResource(param1:MovieClip) : void
      {
         var count:MovieClip = MovieClip(param1.getChildByName(LoadobjectModel.urlString));
         var count3:MovieClip = MovieClip(count.getChildByName(LoadobjectModel.urlString1));
         StringUtils.show1(count3,this.color);
      }
      
      public function _pc2090(param1:int) : void
      {
         this._no8983();
         var count:Bitmap = this._vd13151(param1);
         if(count != null)
         {
            this.graphics.addChild(count);
            return;
         }
         Logger.getInstance()._kp3815(new Logs(Logger.count,"InstanciedObject.refreshGraphicsMaxSize","idObj = " + count + " name = " + _sl11700.textString));
      }
   }
}

