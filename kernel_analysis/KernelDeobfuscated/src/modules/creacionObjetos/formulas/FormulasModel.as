package src.modules.creacionObjetos.formulas
{
   import src.allData.*;
   import src.allData.catObjects.*;
   import src.allData.mochila.*;
   import src.logs.*;
   import src.modules.ModuleLoader;
   import src.modules.creacionObjetos.*;
   import src.multiuser.*;
   
   public class FormulasModel
   {
      
      private static var _instance:FormulasModel;
      
      private static const count:int = 7;
      
      private var catalogo:CatalogObject;
      
      private var items:Array;
      
      private var logs:Logger;
      
      private var _fx11460:CreacionobjetosController;
      
      private var items1:Array;
      
      public function FormulasModel(param1:_rw9443)
      {
         super();
         this._hs11453();
         this.logs = Logger.getInstance();
         this.catalogo = CatalogObject.getInstance();
         this.create();
      }
      
      public static function getInstance() : FormulasModel
      {
         if(FormulasModel._instance == null)
         {
            FormulasModel._instance = new FormulasModel(new _rw9443());
         }
         return FormulasModel._instance;
      }
      
      public function _mo8489(param1:CreacionobjetosController) : void
      {
         this._fx11460 = param1;
         this._fx11460.addEventListener(CreacionobjetosEvents.textString,this.authenticateUser);
      }
      
      public function _hs11453() : void
      {
         var count2:int = 0;
         this.items1 = new Array();
         while(count2 < Formulas.count)
         {
            this.items1.push(false);
            count2++;
         }
      }
      
      public function loadResource2(param1:int) : Boolean
      {
         return this.items1[param1 - 1];
      }
      
      public function _tf11038(param1:int) : void
      {
         this.items1[param1 - 1] = true;
      }
      
      public function _vo4481(param1:int) : void
      {
         if(!this.loadResource2(param1))
         {
            this._fx11460.handleSocket(param1);
         }
      }
      
      public function _st10003(param1:int, param2:int) : void
      {
         this._fx11460.handleSocket1(param1,param2);
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:Array = param1.items;
         var count3:uint = uint(String(count[1]).charCodeAt(0));
         switch(count3)
         {
            case CreacionobjetosController.count:
               this._xc6969(count);
               return;
            default:
               return;
         }
      }
      
      private function create() : void
      {
         this.items = new Array();
      }
      
      public function _xc6969(param1:Array) : void
      {
         var count:int = 0;
         var count3:String = null;
         var count1:int = 0;
         var count2:int = 0;
         var count7:int = 0;
         var items:Array = null;
         var count8:Array = null;
         var count10:int = 0;
         param1.shift();
         param1.shift();
         var count6:int = int(param1.shift());
         this._tf11038(count6);
         var count:int = param1.length / count;
         while(count10 < count)
         {
            count = int(param1[count * count10 + 0]);
            count3 = param1[count * count10 + 1];
            count1 = int(param1[count * count10 + 2]);
            count2 = int(param1[count * count10 + 3]);
            count7 = int(param1[count * count10 + 4]);
            items = SocketManager.getList2(param1[count * count10 + 5]);
            count8 = SocketManager.getList2(param1[count * count10 + 6]);
            this._ug10700(count,count6,count3,count1,count2,count7,items,count8);
            count10++;
         }
      }
      
      private function _ug10700(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:Array, param8:Array) : void
      {
         var count6:CatobjectsController = this.catalogo._ms14382(param6);
         if(count6 == null)
         {
            this.logs._kp3815(new Logs(Logger.count,"ManagerFormula.addFormula","invalid object id: " + param6));
            return;
         }
         this.items.push(new FormulasModel(param1,param2,param3,param4,param5,count6,param6,param7,param8));
      }
      
      public function _mr6114(param1:int) : FormulasModel
      {
         var count3:int = 0;
         var count:int = int(this.items.length);
         while(count3 < count)
         {
            if(FormulasModel(this.items[count3])._ik15119 == param1)
            {
               return FormulasModel(this.items[count3]);
            }
            count3++;
         }
         return null;
      }
      
      public function getList(param1:int) : Array
      {
         var idCat:int = param1;
         return this.items.filter(function(param1:*, param2:int, param3:Array):Boolean
         {
            return param1._uq11060 == idCat;
         });
      }
      
      public function _pq12363(param1:FormulasModel) : Boolean
      {
         var count1:int = 0;
         if(UserSession.getInstance()._dx11054 < param1.count || UserSession.getInstance()._ea4493 < param1.count1)
         {
            return false;
         }
         var count:Array = MochilaModel.getInstance().getList();
         var count3:Boolean = true;
         while(count1 < param1._gj4652.length)
         {
            if(param1._gj4652[count1] == -10001 || param1._gj4652[count1] == -10000 || (count[param1._gj4652[count1]] && count[param1._gj4652[count1]] >= param1._mo6900[count1] || param1._gj4652[count1] == -1))
            {
               count3 = count3;
            }
            else
            {
               count3 &&= false;
            }
            count1++;
         }
         return count3;
      }
      
      public function _og14142(param1:int, param2:int) : Boolean
      {
         var count3:Array = MochilaModel.getInstance().getList();
         if(Boolean(count3[param1]) && count3[param1] >= param2)
         {
            return true;
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
