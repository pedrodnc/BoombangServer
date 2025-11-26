package src.allData.sceneObjects.dataObjects
{
   import flash.display.*;
   import flash.filters.*;
   import flash.geom.*;
   import src.*;
   import src.allData.catObjects.*;
   import src.allData.color.*;
   import src.allData.scene.typeEscenarios.*;
   import src.allData.sceneObjects.*;
   import src.org.osflash.thunderbolt.*;
   import src.tv.boombang.core.datatypes.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class SceneObjectRenderer extends SceneObjectProperties
   {
      
      public static const count:Number = 34;
      
      public var x:int;
      
      public var y:int;
      
      private var _vv13020:uint = 0;
      
      private var items:Array;
      
      private var _props:Array;
      
      public var visible:Boolean;
      
      public var _rc6897:MovieClip;
      
      private var items1:Array;
      
      private var _bk1143:DatatypesModel;
      
      private var items2:Array;
      
      private var _mi11522:Shape;
      
      private var isEnabled:Boolean = false;
      
      private var _bi12870:Point;
      
      private var _cv12788:MovieClip;
      
      private var _lo4103:MovieClip;
      
      private var _bq827:MovieClip;
      
      private var count1:int;
      
      private var count2:Number;
      
      public function SceneObjectRenderer(param1:Number, param2:Number, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:Array, param11:Array, param12:CatobjectsController, param13:String, param14:int)
      {
         this.items1 = new Array();
         super(param3,param4,param7,param8,param10,param12,param13);
         this.items = param11;
         this.visible = false;
         this.count2 = param2;
         this.count1 = param14;
         _ts12318 = param1;
         this._bk1143 = new DatatypesModel(param9[0],param9[1]);
         if(param14 == CatobjectsController.count39)
         {
            this._vv13020 = param11[0];
            this.move();
         }
         this._td6204(param5,param6,this._bk1143,param7,param8,param9);
      }
      
      private static function _yv4030(param1:*, param2:*) : int
      {
         if(param2.y > param1.y)
         {
            return -1;
         }
         if(param2.y < param1.y)
         {
            return 1;
         }
         return 0;
      }
      
      public function set _dd6502(param1:uint) : void
      {
         if(param1 < this.count2 && param1 >= 0)
         {
            this._vv13020 = param1;
            this._td6204(this.x,this.y,this._bk1143,count4,count4,this.items);
         }
      }
      
      public function get _dd6502() : uint
      {
         return this._vv13020;
      }
      
      public function get z() : Number
      {
         return this._vv13020 * count1;
      }
      
      public function get items() : Array
      {
         return this._props;
      }
      
      public function set items(param1:Array) : void
      {
         this._props = param1;
      }
      
      public function get _hc15795() : Number
      {
         return this.count2;
      }
      
      public function get items5() : Array
      {
         var count2:DatatypesModel = null;
         if(this.count == 471 || this.count == 481)
         {
            return new Array();
         }
         var count:Array = new Array();
         for each(count2 in this.items2)
         {
            count.push(count2._ch15801);
            count.push(count2._oc14271);
         }
         return count;
      }
      
      public function set items5(param1:Array) : void
      {
         this.items = param1;
      }
      
      public function get _jl1688() : Array
      {
         return this.items2;
      }
      
      public function get _lw13647() : DatatypesModel
      {
         return this._bk1143;
      }
      
      public function render() : SceneObjectRenderer
      {
         var count2:SceneObjectRenderer = new SceneObjectRenderer(this.count2,_ts12318,count2,count,this.x,this.y,count4,count4,this.items5,color,this.items,_sl11700,textString1,_sl11700.count46);
         if(_pk3182 != null)
         {
            count2.graphics = StringUtils._dx10334(graphics);
         }
         else
         {
            count2.graphics = null;
         }
         count2.visible = false;
         return count2;
      }
      
      private function _nb2638() : void
      {
         var count2:Bitmap = null;
         this._lo4103 = new MovieClip();
         this._bq827 = new MovieClip();
         var count:Number = this.count2 - 1;
         while(count >= 0)
         {
            count2 = this._rd1942(_sl11700.items4[count4] * _ts12318);
            this._bq827.addChild(count2);
            count2.y = -count * count1 - count1 / 2;
            count--;
         }
         this._bq827.alpha = 0.35;
         this._bq827.y = -count1;
         this._lo4103.addChild(this._bq827);
      }
      
      public function _hu6963() : void
      {
         if(this.count1 == CatobjectsController.count39)
         {
            if(!this._lo4103)
            {
               this._nb2638();
               _xw1367.getInstance()._uc3178(this._lo4103,_xw1367.count3,false,_xw1367.count16);
            }
            this._lo4103.y = this.y;
            this._lo4103.x = this.x;
         }
      }
      
      public function _yo15753() : void
      {
         if(this._lo4103)
         {
            _xw1367.getInstance().move2(this._lo4103,_xw1367.count3);
            this._lo4103 = null;
         }
      }
      
      public function _td6204(param1:int, param2:int, param3:DatatypesModel, param4:int, param5:int, param6:Array) : void
      {
         var items:Point = null;
         var count8:Point = null;
         var count6:DatatypesModel = null;
         var count:int = 0;
         this._su14118(param4);
         count4 = param5;
         this.items = param6;
         if(param3 != null)
         {
            this._bk1143.x = param3.x;
            this._bk1143.y = param3.y;
         }
         this.items2 = new Array();
         while(count + 1 < param6.length)
         {
            this.items2.push(new DatatypesModel(param6[count] - param6[0],param6[count + 1] - param6[1],this._bk1143));
            count += 2;
         }
         if(param1 == -1 && param2 == -1)
         {
            this.isEnabled = true;
         }
         var count10:Point = new Point(param1,param2);
         if(this.isEnabled)
         {
            if(!this._bi12870)
            {
               items = new Point(0,0);
               for each(count6 in this.items2)
               {
                  count8 = SceneType.getPlotXY(new Point(count6._ch15801,count6._oc14271));
                  items.x += count8.x / this.items2.length;
                  items.y += count8.y / this.items2.length;
               }
               count10 = count8 = SceneType.getPlotXY(new Point(this._bk1143._ch15801,this._bk1143._oc14271));
               this._bi12870 = new Point();
               this._bi12870.x = count8.x - items.x;
               this._bi12870.y = count8.y - items.y;
            }
            count10.x -= this._bi12870.x;
            count10.y -= this._bi12870.y;
         }
         this.x = count10.x;
         this.y = count10.y;
         _pk3182.x = this.x;
         _pk3182.y = this.y - this.z;
         if(_sl11700.count46 == CatobjectsController.count39)
         {
            _pk3182.locz = this.z + this._dd6502;
            if(this._lo4103)
            {
               this._lo4103.y = this.y;
               this._lo4103.x = this.x;
            }
            this._cv12788.x = this.x;
            this._cv12788.y = this.y;
            this._cv12788.scaleX = this._cv12788.scaleY = 1.2 - this._dd6502 / 7;
            this._cv12788.alpha = 0.7 - this._dd6502 / 12;
         }
         this._rr14459();
      }
      
      private function move() : void
      {
         var _tg9448:Shape;
         var _local_2:*;
         var filter:BitmapFilter;
         var items3:Array;
         this._cv12788 = new MovieClip();
         _xw1367.getInstance()._gv1977(this._cv12788);
         _tg9448 = new Shape();
         _local_2 = _tg9448.graphics;
         with(_local_2)
         {
            beginFill(0);
            moveTo(-count1,0);
            lineTo(0,-count1 / 2);
            lineTo(count1,0);
            lineTo(0,count1 / 2);
            lineTo(-count1,0);
            endFill();
         }
         _tg9448.alpha = 0.3;
         _tg9448.y = 3;
         filter = new BlurFilter(20,20,BitmapFilterQuality.LOW);
         items3 = new Array();
         items3.push(filter);
         this._cv12788.addChild(_tg9448);
         this._cv12788.filters = items3;
      }
      
      override public function destroy() : void
      {
         if(this._cv12788)
         {
            _xw1367.getInstance().move1(this._cv12788);
         }
         super.destroy();
      }
      
      public function _ji16036(param1:int, param2:int, param3:DatatypesModel) : void
      {
         this._td6204(param1,param2,param3,count4,count4,this.items);
      }
      
      public function _sr13322(param1:int, param2:Array) : void
      {
         this._td6204(this.x,this.y,new DatatypesModel(param2[0],param2[1]),param1,count4,param2);
      }
      
      public function _ws8711(param1:int, param2:Array) : void
      {
         this._td6204(this.x,this.y,new DatatypesModel(param2[0],param2[1]),count4,param1,param2);
      }
      
      public function _qy6918(param1:Array) : void
      {
         this._td6204(this.x,this.y,new DatatypesModel(param1[0],param1[1]),count4,count4,param1);
      }
      
      private function _su14118(param1:int) : void
      {
         this.count4 = param1;
         if(param1 == 0)
         {
            _pk3182.scaleX = 1;
         }
         else
         {
            _pk3182.scaleX = -1;
         }
         if(show())
         {
            show1()._BaseObjectsSetFlipped(param1);
         }
      }
      
      public function _ja9923() : void
      {
         var count2:MovieClip = null;
         var count:int = 0;
         var count3:int = 0;
         var count1:int = 0;
         var count2:Object = null;
         var count7:Point = null;
         if(_sl11700._kv11464() && !_sl11700._su5362)
         {
            return;
         }
         this._no8983();
         var items:Array = this.items5;
         var count8:Array = new Array();
         count = 0;
         while(count < int(items.length / 2))
         {
            count3 = int(items[count * 2]);
            count1 = int(items[count * 2 + 1]);
            count8.push({
               "x":count3,
               "y":count1
            });
            count++;
         }
         count8.sort(_yv4030);
         if(count8.length > 0)
         {
            for each(count2 in count8)
            {
               count2 = CatalogObject.getInstance()._ha6275();
               count7 = SceneType.getPlotXY(new Point(count2.x,count2.y));
               count2.x = count7.x;
               count2.y = count7.y;
               this.items1.push(count2);
               _xw1367.getInstance()._uc3178(count2,_xw1367.count3,false,_xw1367.count16);
            }
         }
         else
         {
            count2 = CatalogObject.getInstance()._ha6275();
            count2.x = this.x;
            count2.y = this.y;
            count2.scaleX = 0.4;
            count2.scaleY = 0.4;
            this.items1.push(count2);
            _xw1367.getInstance()._uc3178(count2,_xw1367.count3,false,_xw1367.count16);
         }
         if(_sl11700._su5362)
         {
            if((ServiceLocator.get(ResourceManagementController) as ResourceManagementController).hasPermission(_sl11700.textString17))
            {
               this.show();
            }
            else
            {
               (ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._vv13029([_sl11700.textString17],this.show);
            }
         }
      }
      
      private function show() : void
      {
         this._rr14459();
         this._sr13322(this.count4,this.items);
         _fj8746();
         SceneObjectManager.getInstance()._vu11199(this);
      }
      
      public function _uy6526(param1:MovieClip) : void
      {
         this._rc6897 = param1;
         StringUtils.show1(param1,color);
      }
      
      override public function _rr14459() : void
      {
         if(_sl11700._kc6805 != null)
         {
            super._rr14459();
         }
         else
         {
            this._ja9923();
         }
         if(this._rc6897 != null)
         {
            StringUtils.show1(this._rc6897,color);
         }
      }
      
      override public function _no8983() : void
      {
         var count2:MovieClip = null;
         super._no8983();
         for each(count2 in this.items1)
         {
            _xw1367.getInstance().move2(count2,_xw1367.count3);
         }
         this.items1.length = 0;
      }
      
      public function _eo14750() : void
      {
         var count2:int = 0;
         var count:int = 0;
         var count3:int = 0;
         var count1:int = 0;
         var count2:int = 0;
         var count7:int = int(_sl11700.items5[0].length);
         var items:Array = new Array();
         if(this.items5.length > 0)
         {
            count2 = int(this.items5[0]);
            count = int(this.items5[1]);
            count3 = 0;
            while(count3 < count7)
            {
               count1 = int(_sl11700.items5[0][count3 * 2]);
               count2 = int(_sl11700.items5[0][count3 * 2 + 1]);
               items.push(count2 + count1);
               items.push(count + count2);
               count3++;
            }
         }
         SceneObjectManager.getInstance().render3(count2,0,items);
         SceneObjectManager.getInstance().render5(count2,0,items);
         this._uc14101();
      }
      
      public function _uc14101() : void
      {
         var count2:ColorModel = null;
         var count:Array = new Array();
         for each(count2 in _sl11700.colors)
         {
            count.push(count2.render());
         }
         SceneObjectManager.getInstance()._rf12089(count2,count);
      }
      
      public function _yc2987() : void
      {
         _sl11700._yc2987();
         ThunderboltModel.info("Object Dump",{
            "_rm6352":count,
            "_hw14129":count2,
            "x":this.x,
            "y":this.y,
            "pivote":this._bk1143,
            "ocupa_array":this.items5,
            "propiedades":this.items,
            "_mp5283":count4,
            "flip":count4,
            "colors":color,
            "description":textString1,
            "colorsServerFormat":ColorModel._gl15701(color)
         });
      }
   }
}

