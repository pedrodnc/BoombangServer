package src.allData.mochila
{
   import src.allData.catObjects.*;
   import src.allData.color.*;
   import src.allData.scene.typeEscenarios.SceneType;
   import src.allData.sceneObjects.dataObjects.*;
   import src.logs.*;
   import src.modules.interfaz.mochila.*;
   import src.modules.objetos.*;
   import src.tv.boombang.core.datatypes.objects.*;
   import src.utils.*;
   
   public class MochilaModel
   {
      
      private static var _instance:MochilaModel;
      
      public static const count:int = -2;
      
      public static const count1:int = -1;
      
      public static const count2:int = 0;
      
      public static const count3:int = 11;
      
      public static const count4:int = 12;
      
      public static const count5:int = 13;
      
      public static const count6:int = 14;
      
      public static const count7:int = 15;
      
      public static const count8:int = 16;
      
      public static const count9:int = 17;
      
      public static const count10:int = 18;
      
      public static const count11:int = 19;
      
      public static const count12:int = 20;
      
      public static const count13:int = 21;
      
      public static const count14:int = 22;
      
      public static const count15:int = 1;
      
      public static const count16:int = 2;
      
      public static const count17:int = 2;
      
      private var items:Array;
      
      private var items1:Array;
      
      private var items2:Array;
      
      private var logs:Logger;
      
      private var catalogo:CatalogObject;
      
      private var _jm3064:ObjetosController;
      
      private var _xu4068:MochilaModel;
      
      private var count18:int;
      
      private var count19:int;
      
      private var items3:Array;
      
      public function MochilaModel(param1:_rw9443)
      {
         super();
         this.logs = Logger.getInstance();
         this.items = new Array();
         this.items2 = new Array();
         this.items1 = new Array();
         this.catalogo = CatalogObject.getInstance();
         this.count18 = count1;
      }
      
      public static function getInstance() : MochilaModel
      {
         if(MochilaModel._instance == null)
         {
            MochilaModel._instance = new MochilaModel(new _rw9443());
         }
         return MochilaModel._instance;
      }
      
      public function set _rl15912(param1:MochilaModel) : void
      {
         this._xu4068 = param1;
      }
      
      public function get _rl15912() : MochilaModel
      {
         return this._xu4068;
      }
      
      public function set _rr2446(param1:int) : void
      {
         this.count19 = param1;
      }
      
      public function get _rr2446() : int
      {
         return this.count19;
      }
      
      public function _dy15716() : int
      {
         return this.count18;
      }
      
      public function init(param1:ObjetosController) : void
      {
         this._jm3064 = param1;
         param1.addEventListener(ObjetosEvents.textString,this.authenticateUser);
      }
      
      public function _ll4424(param1:Array) : void
      {
         var count:Array = null;
         var count3:int = 0;
         var count1:int = 0;
         var count7:int = 0;
         var count2:int = param1.length / count17;
         while(count7 < count2)
         {
            count = param1.slice(count7 * count17,(count7 + 1) * count17);
            count3 = int(count[0]);
            count1 = int(count[1]);
            this._ro5810(count3,count1);
            count7++;
         }
      }
      
      private function authenticateUser(param1:ObjetosEvents) : void
      {
         var count7:uint = uint(String(param1.items[1]).charCodeAt(0));
         switch(count7)
         {
            case ObjetosController.count3:
               var count:Array = StringUtils.getList1(param1.items);
               null.splice(0,2);
               var count3:int = int(null[1]);
               this.parseData(null,false);
               if(this._rl15912 != null)
               {
                  this._rl15912._fn11952(0);
               }
               return;
            case ObjetosController.count9:
               count = StringUtils.getList1(param1.items);
               null.splice(0,2);
               this.parseData(null,true);
               return;
            case ObjetosController.count10:
               if(param1.items.length < 3)
               {
                  this.logs._kp3815(new Logs(Logger.count2,"Mochila.reciebeMsg SUBCODE_MSG_ELIMINAR_OBJETO_MOCHILA",param1.items.toString()));
                  return;
               }
               var count1:int = int(param1.items[2]);
               count3 = int(param1.items[3]);
               var count2:int = int(param1.items[4]);
               this._vc3106(0,0,0);
               return;
               break;
            default:
               return;
         }
      }
      
      public function parseData(param1:Array, param2:Boolean) : void
      {
         var count3:ObjectsModel = null;
         var count1:Array = null;
         var count2:CatobjectsController = null;
         var count7:Array = param1.concat();
         while(true)
         {
            count3 = ObjectsModel.parse(count7);
            if(count3 == null)
            {
               break;
            }
            count1 = ColorModel._kl14169(count3._af6638,count3._vw7719);
            count2 = this.catalogo._ms14382(count3.count);
            if(count2 != null)
            {
               if(count3.count2 >= 0)
               {
                  if(!this._ql12595(count3.count2))
                  {
                     if(param2)
                     {
                        this._bu10918(count3.count2,count3.count,count1,count2,count3._mp5283,count3.flip,param2,count3.textString1,count3.items,count3.cant);
                     }
                     else
                     {
                        this._hk14545(count3.count2,count3.count,count1,count2,count3._mp5283,count3.flip,param2,count3.textString1,count3.items,count3.cant);
                     }
                  }
                  else
                  {
                     this.logs._kp3815(new Logs(Logger.count,"Mochila.addObjetosFromTrama","duplicate object id: " + count3.count));
                  }
               }
               else if(count3.count2 == -1 && !count2.isEnabled1)
               {
                  this._bu10918(count3.count2,count3.count,count1,count2,count3._mp5283,count3.flip,param2,count3.textString1,count3.items,count3.cant);
               }
            }
            else
            {
               this.logs._kp3815(new Logs(Logger.count,"Mochila.addObjetosFromTrama","invalid object id: " + count3.count));
            }
         }
      }
      
      private function _ro5810(param1:int, param2:int) : void
      {
         var count1:CatobjectsController = this.catalogo._ms14382(param1);
         if(count1 != null)
         {
            var count3:DataobjectsModel = new DataobjectsModel(-1,param1,0,CatobjectsController.count1,count1.colors,count1,false,"",[],param2);
            this.items1.push(null);
         }
         else
         {
            this.logs._kp3815(new Logs(Logger.count,"Mochila.addObjetoInArrayObjectApilable","invalid object id: " + param1));
         }
      }
      
      private function _hk14545(param1:int, param2:int, param3:Array, param4:CatobjectsController, param5:int, param6:int, param7:Boolean, param8:String, param9:Array, param10:int) : DataobjectsModel
      {
         var count10:DataobjectsModel = new DataobjectsModel(param1,param2,param6,param5,param3,param4,param7,param8,param9,param10);
         this.items.push(count10);
         this._fi5965(count10);
         return count10;
      }
      
      private function _bu10918(param1:int, param2:int, param3:Array, param4:CatobjectsController, param5:int, param6:int, param7:Boolean, param8:String, param9:Array, param10:int) : DataobjectsModel
      {
         var textString12:DataobjectsModel = null;
         var isEnabled:Boolean = this._mw3161(param2);
         if(isEnabled)
         {
            textString12 = this._ou11754(param2);
            if(textString12 == null)
            {
               this.logs._kp3815(new Logs(Logger.count,"Mochila.addObjeto","idObj mochilaApilable not Found: " + param2));
               return null;
            }
            textString12.cant += param10;
            this._hk14545(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
         else
         {
            textString12 = this._ou11754(param2);
            if(textString12 == null)
            {
               this._ro5810(param2,param10);
               if(param4.isEnabled1)
               {
                  this._hk14545(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
               }
            }
            else
            {
               textString12.cant += param10;
            }
         }
         if(this._rl15912 != null)
         {
            this._rl15912._lw9732();
         }
         return null;
      }
      
      private function _vc3106(param1:int, param2:int, param3:int) : void
      {
         if(param1 >= 0)
         {
            this._aq6002(param2,param3);
            this._sw112(param1,param3);
         }
         else
         {
            this._aq6002(param2,param3);
         }
         this._bn3917(param1,param2,param3);
      }
      
      private function _aq6002(param1:int, param2:int) : void
      {
         var count1:DataobjectsModel = this._ou11754(param1);
         if(count1 != null)
         {
            count1.cant -= param2;
            if(count1.cant <= 0)
            {
               var count3:int = int(this.items1.indexOf(count1));
               this.items1.splice(0,1);
            }
         }
      }
      
      private function _sw112(param1:int, param2:int) : void
      {
         var count1:DataobjectsModel = this._sa6792(param1);
         if(count1 != null)
         {
            var count3:int = int(this.items.indexOf(count1));
            this.items.splice(0,1);
         }
      }
      
      public function getList() : Array
      {
         var count2:DataobjectsModel = null;
         var count:int = 0;
         this.items3 = new Array();
         while(count < this.items1.length)
         {
            count2 = this.items1[count];
            this.items3[int(count2.count)] = count2.cant;
            count++;
         }
         return this.items3;
      }
      
      public function _hl8360(param1:int) : Boolean
      {
         var count:DataobjectsModel = null;
         for each(count in this.items1)
         {
            if(count.count == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function _ou11754(param1:int) : DataobjectsModel
      {
         var count:DataobjectsModel = null;
         for each(count in this.items1)
         {
            if(count.count == param1)
            {
               return count;
            }
         }
         return null;
      }
      
      public function _mw3161(param1:int) : Boolean
      {
         var count:DataobjectsModel = null;
         for each(count in this.items)
         {
            if(count.count == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function _ql12595(param1:int) : Boolean
      {
         var count:DataobjectsModel = null;
         for each(count in this.items)
         {
            if(count.count2 == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function _yh8339(param1:int) : DataobjectsModel
      {
         var count:DataobjectsModel = null;
         for each(count in this.items)
         {
            if(count.count == param1)
            {
               return count;
            }
         }
         return null;
      }
      
      public function _sa6792(param1:int) : DataobjectsModel
      {
         var count:DataobjectsModel = null;
         for each(count in this.items)
         {
            if(count.count2 == param1)
            {
               return count;
            }
         }
         return null;
      }
      
      public function getList1(param1:int, param2:int, param3:int, param4:SceneType) : Array
      {
         var count7:DataobjectsModel = null;
         var items:Array = null;
         var count6:Number = NaN;
         this.items2 = new Array();
         items = this.items1.concat();
         switch(param2)
         {
            case Mochila.NORMAL:
               this.count18 = param1;
               var count8:uint = items.length;
               count6 = count8 - 1;
               while(count6 >= 0)
               {
                  count7 = items[count6];
                  var count2:Boolean = param4.isEnabled1 && param4._ie14377(count7._sl11700.items7,count7._sl11700.items8) && !param4.isEnabled2;
                  if(count2)
                  {
                     this._ic6582(count7);
                     items.splice(count6,1);
                  }
                  count6--;
               }
               count8 = items.length;
               count6 = count8 - 1;
               while(count6 >= 0)
               {
                  count7 = items[count6];
                  if(count7._sl11700.count46 == CatobjectsController.count27 || count7._sl11700.count46 == CatobjectsController.count28 || count7._sl11700.count46 == CatobjectsController.count29)
                  {
                     this._ic6582(count7);
                     items.splice(count6,1);
                  }
                  count6--;
               }
               for each(count7 in items)
               {
                  this._ic6582(count7);
               }
               break;
            case Mochila._fh12057:
               for each(count7 in this.items)
               {
                  if(count7.count == param3)
                  {
                     this._ic6582(count7);
                  }
               }
         }
         return this.items2;
      }
      
      private function _ye5693() : void
      {
         var count2:DataobjectsModel = null;
         var count:int = this.items2.length - 1;
         while(count >= 0)
         {
            count2 = DataobjectsModel(this.items2[count]);
            if(count2.cant <= 0)
            {
               this.items2.splice(count,1);
            }
            count--;
         }
      }
      
      private function _bn3917(param1:int, param2:int, param3:int) : void
      {
         var count1:int = 0;
         var count2:int = 0;
         this._ye5693();
         if(param1 >= 0)
         {
            count1 = -1;
            count2 = 0;
            while(count2 < this.items2.length)
            {
               if(DataobjectsModel(this.items2[count2]).count2 == param1)
               {
                  count1 = count2;
               }
               count2++;
            }
            if(count1 >= 0)
            {
               this.items2.splice(count1,1);
            }
         }
         if(this._rl15912 != null)
         {
            if(this.items2.length > 0)
            {
               this._rl15912._am11997();
            }
            else
            {
               this._rl15912._lw9732();
            }
         }
      }
      
      private function _ic6582(param1:DataobjectsModel) : void
      {
         if(this.items2 == null)
         {
            this.items2 = new Array();
         }
         if(this.count18 == count1 || param1._sl11700.items1.indexOf(this.count18) >= 0 || this.count18 == count2 && param1._sl11700._ph8835() || this.count18 == count && param1._ym3380())
         {
            this.items2.push(param1);
         }
      }
      
      private function _fi5965(param1:DataobjectsModel) : void
      {
         var count:int = 0;
         var count3:int = 0;
         var count1:int = 0;
         var count2:DataobjectsModel = null;
         if(this.items2 == null)
         {
            this.items2 = new Array();
         }
         if(this.count18 == count1 || param1._sl11700.items1.indexOf(this.count18) >= 0 || this.count18 == count2 && param1._sl11700._ph8835() || this.count18 == count && param1._ym3380())
         {
            count = int(this.items2.length);
            count3 = count - 1;
            count1 = 0;
            while(count1 < count)
            {
               count2 = DataobjectsModel(this.items2[count1]);
               switch(this._rr2446)
               {
                  case count15:
                     if(!this._jh5921(param1,count2))
                     {
                        count3 = count1;
                     }
                     break;
                  case count16:
                     if(this._jh5921(param1,count2))
                     {
                        count3 = count1;
                     }
               }
               count1++;
            }
            this.items2.splice(count3,0,param1);
         }
      }
      
      private function _tr15207(param1:Array) : void
      {
         var count:int = 0;
         var count3:int = 0;
         var count1:DataobjectsModel = null;
         var count2:DataobjectsModel = null;
         var count7:int = int(param1.length);
         count3 = 0;
         while(count3 < count7)
         {
            count = 0;
            while(count < count7 - 1 - count3)
            {
               count1 = DataobjectsModel(param1[count]);
               count2 = DataobjectsModel(param1[count + 1]);
               switch(this._rr2446)
               {
                  case count15:
                     if(!this._jh5921(count1,count2))
                     {
                        param1[count] = count2;
                        param1[count + 1] = count1;
                     }
                     break;
                  case count16:
                     if(this._jh5921(count1,count2))
                     {
                        param1[count] = count2;
                        param1[count + 1] = count1;
                     }
               }
               count++;
            }
            count3++;
         }
      }
      
      private function _jh5921(param1:DataobjectsModel, param2:DataobjectsModel) : Boolean
      {
         if(param1._sl11700._ph8835() || param2._sl11700._ph8835())
         {
            if(!(param1._sl11700._ph8835() && param2._sl11700._ph8835()))
            {
               if(param1._sl11700._ph8835())
               {
                  return true;
               }
               return false;
            }
            if(param1._sl11700.count47 == param2._sl11700.count47)
            {
               if(param1.count > param2.count)
               {
                  return true;
               }
            }
            else if(param1._sl11700.count47 < param2._sl11700.count47)
            {
               return true;
            }
         }
         else
         {
            if(param1._sl11700.count42 > param2._sl11700.count42)
            {
               return true;
            }
            if(param1._sl11700.count42 == param2._sl11700.count42)
            {
               if(param1.count > param2.count)
               {
                  return true;
               }
            }
         }
         return false;
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
