package src.allData.scene.typeEscenarios
{
   import flash.display.MovieClip;
   import flash.geom.*;
   import src.allData.catObjects.*;
   import src.allData.color.*;
   import src.allData.scene.*;
   import src.allData.sceneObjects.*;
   import src.allData.sceneObjects.dataObjects.*;
   import src.modules.doors.*;
   import src.modules.interfaz.InterfazManager;
   import src.multiuser.*;
   import src.person.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   import src.utils.*;
   
   public class SceneType extends MovieClip
   {
      
      public static var count:int;
      
      public static var y0:int;
      
      public static var scale:Number;
      
      public static var count1:int;
      
      public static var count2:int;
      
      public static var count3:int = 80;
      
      public static var count4:int = 40;
      
      public var _nr6929:NavigationmenuModel;
      
      public var matrix:Array;
      
      public var items:Array;
      
      public var items1:Array;
      
      public var isEnabled:Boolean;
      
      public var count5:Number;
      
      public var count6:int;
      
      public var count7:int;
      
      public var isEnabled1:Boolean;
      
      public var _ir13656:XML;
      
      public var _wy2643:MovieClip;
      
      public var count8:Number;
      
      public var objects:Array;
      
      public var _mx5402:uint;
      
      public var items2:Array;
      
      public var isEnabled2:Boolean;
      
      public var isEnabled3:Boolean;
      
      public var isEnabled4:Boolean;
      
      public var isEnabled5:Boolean;
      
      public var items3:Array;
      
      public var count9:int;
      
      public var items4:Array;
      
      public var items5:Array;
      
      public var _cp8442:InterfazManager;
      
      protected var _hl8190:SceneObjectManager;
      
      private var items6:Array;
      
      public var count2:Number;
      
      public function SceneType(param1:NavigationmenuModel, param2:int, param3:MovieClip, param4:XML)
      {
         super();
         this._nr6929 = param1;
         this._wy2643 = param3;
         this._ir13656 = param4;
         this.count9 = param2;
         this.init();
      }
      
      public static function getPlotXY(param1:Point) : Point
      {
         var count:Number = SceneType.count + SceneType.count1 / 2 * param1.x + SceneType.count1 / 2 * param1.y;
         var count3:Number = SceneType.y0 - SceneType.count2 / 2 * param1.x + SceneType.count2 / 2 * param1.y;
         return new Point(count,count3);
      }
      
      public static function _bi7400(param1:Point) : Point
      {
         var count:int = Math.round((param1.x - SceneType.count) / SceneType.count1 + (SceneType.y0 - param1.y) / SceneType.count2);
         var count3:int = Math.round((param1.y - SceneType.y0) / SceneType.count2 + (param1.x - SceneType.count) / SceneType.count1);
         return new Point(count,count3);
      }
      
      public static function _as10446() : Number
      {
         return scale;
      }
      
      public function init() : void
      {
         this._hl8190 = SceneObjectManager.getInstance();
         this.matrix = SceneModel._jv3843(this._ir13656);
         if(this.matrix == null || this.matrix.length == 0)
         {
            this.matrix = new Array();
            this.items = new Array();
            this.items1 = new Array();
         }
         else
         {
            this.items = StringUtils.getList(this.matrix);
            this.items1 = StringUtils.getList(this.matrix);
         }
         this.isEnabled2 = false;
         this.isEnabled = true;
         var count2:Point = SceneModel._ic5429(this._ir13656);
         SceneType.count = count2.x;
         SceneType.y0 = count2.y;
         this.items2 = SceneModel._qg10619(this._ir13656);
         this.count8 = SceneModel._bn14023(this._ir13656);
         this.count2 = SceneModel._ja1725(this._ir13656);
         this._mx5402 = 0;
         if(this.count8 < 0.3 || this.count8 > 1)
         {
            this.count8 = 1;
         }
         this.count6 = this.matrix[0].length;
         this.count7 = this.matrix.length;
         this.isEnabled1 = false;
         scale = this.count8;
         SceneType.count1 = count3 * this.count8;
         SceneType.count2 = count4 * this.count8;
         PersonModel.getInstance()._ur2050(this.count8);
         this.isEnabled4 = SceneModel._vn7285(this._ir13656);
         this.isEnabled3 = SceneModel._lx8005(this._ir13656);
         this.isEnabled5 = SceneModel._ed171(this._ir13656);
         this.items3 = null;
         this.objects = new Array();
         this.items5 = new Array();
         this._kd2897();
         this._ph8598();
         this._fw9577();
      }
      
      private function _fw9577() : void
      {
         var count2:int = 0;
         this.items6 = SceneModel._xk2967(this._ir13656);
         if(this._wy2643 as BaseEscenario)
         {
            count2 = 0;
            while(count2 < this.items6.length)
            {
               this._wy2643.addSound(this.items6[count2]);
               count2++;
            }
            this._wy2643.playSounds();
         }
      }
      
      public function _pr4733() : void
      {
      }
      
      public function _qk13047() : void
      {
      }
      
      public function destroy() : void
      {
         this.destroy();
         this._qk13047();
      }
      
      public function _gs5509(param1:Array) : void
      {
         if(param1.length >= 6)
         {
            this.items3 = param1.splice(0,6);
            var count:Array = param1.splice(0,param1.length);
            while(null.length >= 2)
            {
               var count3:Array = null.splice(0,2);
               var count1:int = int(null[0]);
               var count2:int = int(null[1]);
               for each(var count7 in this.objects)
               {
                  if(count7._sl11700.count46 == CatobjectsController.count5)
                  {
                     if(null.items.length >= 1)
                     {
                        if(int(null.items[0]) == 0)
                        {
                           null.items.push(0);
                           break;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function _kw13142(param1:PersonBase) : void
      {
         var count3:int = 0;
         this.items = StringUtils.getList(this.matrix);
         while(count3 < PersonModel._sj2270)
         {
            if(param1.items[count3] != null)
            {
               var count:Point = PersonController(param1.items[count3])._md8722._gn15250;
               this.items[null.y][null.x] = count3 + 1000;
            }
            count3++;
         }
      }
      
      public function _hc2542(param1:int) : int
      {
         var count:SceneModel = null;
         for each(count in this.items2)
         {
            if(param1 >= count.xFrom && param1 < count.xTo)
            {
               return count._gl10041;
            }
         }
         return 0;
      }
      
      public function _ih5473() : Boolean
      {
         return false;
      }
      
      public function _co7364() : Boolean
      {
         return false;
      }
      
      public function _qo15934(param1:Boolean) : void
      {
         this.isEnabled = param1;
      }
      
      public function _kd2897() : void
      {
         this.count5 = SceneModel._ms15992(this._ir13656);
      }
      
      public function get _lg6512() : Object
      {
         return SceneModel._vh1503(this._ir13656);
      }
      
      public function getString() : String
      {
         return "";
      }
      
      public function _ja1725() : Number
      {
         return this.count2;
      }
      
      public function render(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:Array, param9:Array, param10:String) : void
      {
         var count10:CatobjectsController = CatalogObject.getInstance()._ms14382(param2);
         this.objects.push(new SceneObjectRenderer(this.count8,this.count2,param1,param2,param3,param4,param5,param6,param7,param8,param9,count10,param10,count10.count46));
         if(count10.count46 == CatobjectsController.count39)
         {
            ++this._mx5402;
         }
      }
      
      public function render1(param1:SceneObjectRenderer) : void
      {
         var count3:int = 0;
         var count:int = int(this.objects.length);
         while(count3 < count)
         {
            if(SceneObjectRenderer(this.objects[count3]) == param1)
            {
               if((this.objects[count3] as SceneObjectRenderer)._sl11700.count46 == CatobjectsController.count39)
               {
                  --this._mx5402;
               }
               this.objects.splice(count3,1);
               return;
            }
            count3++;
         }
      }
      
      public function _ju14482(param1:SceneType, param2:Array) : void
      {
         var count3:int = int(param2[0]);
         var count1:int = int(param2[1]);
         var count2:int = int(param2[2]);
         var count7:int = int(param2[3]);
         var items:int = int(param2[4]);
         var count8:int = int(CatobjectsController._iw2544(param2[5]));
         var count6:String = param2[6];
         var count:Array = UtilsUtils.splitInt(String(param2[7]),",");
         var count10:Array = ColorModel._kl14169(param2[8],param2[9]);
         var textString12:Array = SocketManager.getList1(param2[10]);
         this.render(count3,count1,count2,count7,items,count8,count,count10,textString12,count6);
      }
      
      public function _dc11123(param1:Array) : void
      {
         var count:int = 0;
         var count3:int = 0;
         var count1:DoorsModel = null;
         var isEnabled:int = 0;
         if(param1[0] == null)
         {
            return;
         }
         while(isEnabled < param1[0].length)
         {
            count = int(param1[0][isEnabled]);
            count3 = 0;
            while(count3 < this.items5.length)
            {
               count1 = DoorsModel(this.items5[count3]);
               if(count1.count == count)
               {
                  var count2:int = int(param1[1][isEnabled]);
                  var count7:int = int(param1[2][isEnabled]);
                  var items:int = int(param1[3][isEnabled]);
                  var count8:int = int(param1[4][isEnabled]);
                  var count6:Boolean = Boolean(0 != -1);
                  var count:int = int(param1[5][isEnabled]);
                  var count10:int = int(param1[6][isEnabled]);
                  var textString12:NavigationmenuModel = count1._ol8098();
                  textString12.count2 = NavigationmenuModel._bn928(0);
                  null._eb11619 = 0;
                  null._fq658 = 0;
                  count1._cj15551(false,null,0,0);
               }
               count3++;
            }
            isEnabled++;
         }
      }
      
      public function _mg3593(param1:Array) : void
      {
         var count:NavigationmenuModel = null;
         var count3:Boolean = false;
         var count1:int = 0;
         var textString14:int = 0;
         this.items5 = [];
         if(param1[0] == [])
         {
            return;
         }
         if(param1[0][0] == "")
         {
            return;
         }
         if(param1[0][0] == -1)
         {
            return;
         }
         var isEnabled:Array = SceneModel._xw9881(this._ir13656);
         while(textString14 < isEnabled.length)
         {
            count3 = false;
            count1 = 0;
            while(count1 < param1[0].length)
            {
               if(Doors(isEnabled[textString14]).id == param1[0][count1])
               {
                  var count2:int = int(param1[0][count1]);
                  var count7:int = int(param1[1][count1]);
                  var items:int = int(param1[2][count1]);
                  var count8:int = int(param1[3][count1]);
                  var count6:int = int(param1[4][count1]);
                  var count:Boolean = Boolean(0 != -1);
                  var count10:int = int(param1[5][count1]);
                  var textString12:int = int(param1[6][count1]);
                  count = new NavigationmenuModel();
                  count._ls5877 = NavigationmenuModel._bn928(0);
                  count.count2 = NavigationmenuModel._bn928(0);
                  count._vn12441 = 0;
                  count._un6586 = 0;
                  count._eb11619 = 0;
                  count._fq658 = 0;
                  count.name = "";
                  if(isEnabled[textString14].isEnabled)
                  {
                     this.items5.unshift(new DoorsModel(0,count,Doors(isEnabled[textString14]),this._cp8442,false,0,0,true));
                  }
                  else
                  {
                     this.items5.push(new DoorsModel(0,count,Doors(isEnabled[textString14]),this._cp8442,false,0,0));
                  }
                  count3 = true;
               }
               count1++;
            }
            if(!count3)
            {
               count = new NavigationmenuModel();
               this.items5.push(new DoorsModel(Doors(isEnabled[textString14]).id,count,Doors(isEnabled[textString14]),this._cp8442,false,0,0));
            }
            textString14++;
         }
      }
      
      public function _do10975() : void
      {
         var count2:int = 0;
         while(count2 < this.items5.length)
         {
            DoorsModel(this.items5[count2]).destroy();
            count2++;
         }
      }
      
      public function _cy13400() : void
      {
         var count2:int = 0;
         while(count2 < this.items5.length)
         {
            DoorsModel(this.items5[count2])._lq897();
            count2++;
         }
      }
      
      public function destroy() : void
      {
         var count2:int = 0;
         while(count2 < this.items5.length)
         {
            DoorsModel(this.items5[count2]).destroy();
            count2++;
         }
         this.items5 = new Array();
      }
      
      private function _ph8598() : void
      {
         var count2:Array = null;
         var count:int = 0;
         var count3:int = 0;
         var count1:int = 0;
         this.items4 = new Array();
         while(count1 < this.matrix.length)
         {
            count2 = this.matrix[count1];
            count = 0;
            while(count < count2.length)
            {
               count3 = int(count2[count]);
               if(!this._gy7472(count3))
               {
                  this.items4.push(count3);
               }
               count++;
            }
            count1++;
         }
      }
      
      private function _gy7472(param1:int) : Boolean
      {
         var count:int = 0;
         while(count < this.items4.length)
         {
            if(param1 == this.items4[count])
            {
               return true;
            }
            count++;
         }
         return false;
      }
      
      public function _ie14377(param1:Array, param2:Array) : Boolean
      {
         var count3:int = 0;
         if(param2.indexOf(this.count9) == -1)
         {
            return false;
         }
         while(count3 < this.items4.length)
         {
            if(param1.indexOf(this.items4[count3]) != -1)
            {
               return true;
            }
            count3++;
         }
         return false;
      }
      
      public function render2(param1:int) : void
      {
         var count:SceneObjectRenderer = this.render5(param1);
         if(count != null)
         {
            this._di5973(count);
         }
      }
      
      public function render3() : void
      {
         var count:int = 0;
         var count2:int = int(this.objects.length);
         while(count < count2)
         {
            this._di5973(SceneObjectRenderer(this.objects[count]));
            count++;
         }
      }
      
      public function _di5973(param1:SceneObjectRenderer) : void
      {
         this._hl8190._di5973(param1);
         this._in8371(param1.items5,param1._sl11700.count48);
      }
      
      public function render4() : void
      {
         var count2:int = 0;
         var count:int = 0;
         if(this.objects != null)
         {
            count2 = int(this.objects.length);
            count = 0;
            while(count < count2)
            {
               if(this.objects[count] != null)
               {
                  this.destroy(SceneObjectRenderer(this.objects[count]));
               }
               count++;
            }
            this.objects = new Array();
         }
         if(this._hl8190 != null)
         {
            this._hl8190.destroy1(0);
         }
      }
      
      public function destroy(param1:SceneObjectRenderer) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._hl8190.destroy(param1);
         if(param1.items5 != null)
         {
            this.render6(param1.items5);
         }
      }
      
      public function render5(param1:int) : SceneObjectRenderer
      {
         var count:int = 0;
         var count3:int = 0;
         if(this.objects != null)
         {
            count = int(this.objects.length);
            count3 = 0;
            while(count3 < count)
            {
               if(SceneObjectRenderer(this.objects[count3]).count2 == param1)
               {
                  return SceneObjectRenderer(this.objects[count3]);
               }
               count3++;
            }
         }
         return null;
      }
      
      public function _in8371(param1:Array, param2:int = 1) : void
      {
         var count3:int = 0;
         var count1:int = 0;
         var count7:int = 0;
         if(this.items1 == null)
         {
            return;
         }
         if(param1 == null || param1.length == 0)
         {
            return;
         }
         var count2:int = param1.length / 2;
         while(count7 < count2)
         {
            count3 = int(param1[count7 * 2 + 1]);
            count1 = int(param1[count7 * 2]);
            if(count3 >= 0 && count3 < this.items1.length && this.items1[count3] != null && count1 >= 0 && count1 < this.items1[count3].length)
            {
               this.items1[count3][count1] = param2;
            }
            count7++;
         }
      }
      
      public function render6(param1:Array, param2:SceneObjectRenderer = null) : void
      {
         var count3:SceneObjectRenderer = null;
         var count2:int = 0;
         var count7:int = 0;
         var items:int = 0;
         if(this.items1 == null || this.matrix == null)
         {
            return;
         }
         if(param1 == null || param1.length == 0)
         {
            return;
         }
         if(Boolean(param2) && this.objects != null)
         {
            for each(count3 in this.objects)
            {
               if(count3.x == param2.x && count3.y == param2.y && count3 != param2)
               {
                  if(count3._dd6502 < 3)
                  {
                     return;
                  }
               }
            }
         }
         var count1:int = param1.length / 2;
         while(count2 < count1)
         {
            count7 = int(param1[count2 * 2 + 1]);
            items = int(param1[count2 * 2]);
            if(count7 >= 0 && count7 < this.items1.length && this.items1[count7] != null && items >= 0 && items < this.items1[count7].length && count7 >= 0 && count7 < this.matrix.length && this.matrix[count7] != null && items >= 0 && items < this.matrix[count7].length)
            {
               this.items1[count7][items] = this.matrix[count7][items];
            }
            count2++;
         }
      }
      
      public function _qe12871(param1:Array, param2:Point, param3:int, param4:Array) : Boolean
      {
         var count2:int = 0;
         var count7:int = 0;
         var count6:int = 0;
         var count8:int = param1.length / 2;
         while(count6 < count8)
         {
            if(param3 == 0)
            {
               count2 = int(param1[count6 * 2]);
               count7 = int(param1[count6 * 2 + 1]);
            }
            else
            {
               count2 = -param1[count6 * 2 + 1];
               count7 = -param1[count6 * 2];
            }
            if(this.items1[param2.y + count7])
            {
               var items:int = int(this.items1[param2.y + count7][param2.x + count2]);
               if(param4.indexOf(0) == -1)
               {
                  return false;
               }
            }
            count6++;
         }
         if(count8 == 0)
         {
            items = int(this.items1[param2.y][param2.x]);
            if(param4.indexOf(0) == -1)
            {
               return false;
            }
         }
         return true;
      }
      
      public function getString1(param1:Point, param2:Array, param3:int) : String
      {
         var count1:int = 0;
         var count2:int = 0;
         var count8:int = 0;
         var count7:int = param2.length / 2;
         var items:* = "";
         while(count8 < count7)
         {
            if(param3 == 0)
            {
               count1 = int(param2[count8 * 2]);
               count2 = int(param2[count8 * 2 + 1]);
            }
            else
            {
               count1 = -param2[count8 * 2 + 1];
               count2 = -param2[count8 * 2];
            }
            items += param1.x + count1 + "," + (param1.y + count2);
            if(count8 < count7 - 1)
            {
               items += ",";
            }
            count8++;
         }
         return items;
      }
      
      public function _jc1693(param1:Point) : int
      {
         if(this.matrix == null)
         {
            return -1;
         }
         var count:int = int((this.matrix[0] as Array).length);
         var count3:int = int((this.matrix as Array).length);
         if(param1.x < count && param1.y < count3)
         {
            return this.matrix[param1.y][param1.x];
         }
         return -1;
      }
   }
}

