package src.modules.interfaz.intercambios
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.utils.*;
   import src.allData.*;
   import src.allData.catObjects.*;
   import src.allData.color.*;
   import src.allData.mochila.*;
   import src.allData.sceneObjects.*;
   import src.allData.sceneObjects.dataObjects.*;
   import src.logs.*;
   import src.modules.intercambios.*;
   import src.modules.interfaz.InterfazManager;
   import src.modules.interfaz.fichaKeko.FichakekoModel;
   import src.modules.interfaz.fichaKeko.booble.*;
   import src.modules.interfaz.intercambios.fichas.*;
   import src.modules.interfaz.mochila.MochilaModel;
   import src.multiuser.*;
   import src.person.*;
   import src.utils.*;
   import src.utils.fichas.*;
   
   public class IntercambiosModel
   {
      
      private static const textString:String = "getMovieClip";
      
      private static const textString1:String = "mclIntercambios";
      
      private static const textString2:String = "mclTenCuidado";
      
      private static const textString12:String = "mclAvance";
      
      public static const count6:int = 67;
      
      public static const count7:int = 7;
      
      private static const count2:int = 146;
      
      public static const count3:int = 0;
      
      public static const count4:int = 1;
      
      public static const count5:int = 2;
      
      public static const count6:int = 3;
      
      public static const count7:int = 4;
      
      private var count8:int;
      
      private var _cd5738:MovieClip;
      
      private var _lp469:InterfazManager;
      
      private var _fl10243:IntercambiosController;
      
      private var _ix11826:PersonBase;
      
      private var _dc14886:FichakekoModel;
      
      private var _rl15912:MochilaModel;
      
      private var _dr5118:FichasModel;
      
      private var _fc10878:FichasModel;
      
      private var _op3134:FichasController;
      
      private var _hl8190:SceneObjectManager;
      
      private var _im12039:IntercambiosModel;
      
      private var logs:Logger;
      
      private var count9:int;
      
      private var count10:int;
      
      private var count11:int;
      
      private var _cj15290:PersonAnimation;
      
      private var isEnabled:Boolean;
      
      private var count12:int;
      
      private var isEnabled1:Boolean;
      
      private var _qy512:Timer;
      
      private var _ra4999:MovieClip;
      
      private var _rj10285:MovieClip;
      
      private var _mx2207:MovieClip;
      
      public function IntercambiosModel(param1:MovieClip, param2:InterfazManager, param3:PersonBase, param4:FichakekoModel, param5:MochilaModel)
      {
         super();
         this._cd5738 = param1;
         this._lp469 = param2;
         this._ix11826 = param3;
         this._dc14886 = param4;
         this._rl15912 = param5;
         this._fl10243 = new IntercambiosController();
         this._hl8190 = SceneObjectManager.getInstance();
         this._im12039 = new IntercambiosModel();
         this.logs = Logger.getInstance();
         this._we3167();
         this._fl10243.addEventListener(IntercambiosEvents.textString,this.authenticateUser);
      }
      
      private function _we3167() : void
      {
         var count2:FichasUtils = new FichasUtils(this._im12039._qw11914,[this._im12039._hr3731,this._im12039._uq5612,this._im12039._ae5945]);
         this._op3134 = new FichasView(this._cd5738[textString](textString2),count2,this._im12039._pj2713);
         var count:FichasUtils = new FichasUtils("",[this._im12039._od82,this._im12039._hf13978,this._im12039._do5286]);
         var count3:FichasUtils = new FichasUtils("",[this._im12039._vn3681,this._im12039._hf13978,this._im12039._wp6753]);
         var count1:MovieClip = this._cd5738[textString](textString12);
         this._dr5118 = new FichasUtils(this._cd5738[textString](textString1),count,this._el11828,this._im12039,count1,this._wg330,this._fw12448);
         this._fc10878 = new FichasUtils(this._cd5738[textString](textString1),count3,null,this._im12039,count1);
         FichasUtils(this._dr5118)._fc10878 = this._fc10878;
      }
      
      private function destroy() : void
      {
         if(this._dr5118 != null)
         {
            this._dr5118.destroy();
            this._dr5118 = null;
         }
         if(this._fc10878 != null)
         {
            this._fc10878.destroy();
            this._fc10878 = null;
         }
      }
      
      public function destroy() : void
      {
         this.destroy();
         this.move();
         if(this._op3134 != null)
         {
            this._op3134.destroy();
            this._op3134 = null;
         }
         this._fl10243.removeEventListener(IntercambiosEvents.textString,this.authenticateUser);
         this._fl10243.destroy();
         this._fl10243 = null;
      }
      
      private function show() : void
      {
         this.move();
         this._dr5118._fo13643(UserSession.getInstance());
         this._fc10878._fo13643(this._cj15290);
         this._dr5118.show(count6,count7);
         this._fc10878.show(count6,count7 + count2);
         this._lp469._bv14620(this._cj15290);
         this._fc9456(count3);
         this.isEnabled = false;
         this.count12 = 0;
         this.isEnabled1 = false;
      }
      
      public function authenticateUser2(param1:Boolean = true) : void
      {
         if(param1)
         {
            this._dr5118.authenticateUser2();
            this._fc10878.authenticateUser2();
            this.move();
         }
         else
         {
            this._qy512 = new Timer(3000,1);
            this._qy512.addEventListener(TimerEvent.TIMER,this._qe15387);
            this._qy512.start();
         }
         this._lp469._hl388();
      }
      
      private function move() : void
      {
         if(this._qy512 != null)
         {
            this._qy512.removeEventListener(TimerEvent.TIMER,this._qe15387);
            this._qy512.stop();
            this._qy512 = null;
         }
      }
      
      private function _qe15387(param1:TimerEvent) : void
      {
         this.move();
         this.authenticateUser2();
      }
      
      private function _wg330() : void
      {
         if(this.isEnabled == false && this.count8 == count3)
         {
            this._fl10243.handleSocket4(this.count11,this.count9,this.count10);
         }
      }
      
      private function _fw12448() : void
      {
         if(this.isEnabled == false && this.count8 == count4)
         {
            if(this._op3134.isVisible() == false)
            {
               if(this.isEnabled1 == true || this._ur3894() == true)
               {
                  this._dr5118._rg11676();
                  this._fl10243.handleSocket5(this.count11,this.count9,this.count10);
               }
               else
               {
                  this._op3134.show(this._dr5118._pj8617(),this._dr5118._ew826());
                  this.isEnabled1 = true;
               }
            }
         }
      }
      
      private function _el11828() : void
      {
         this._rc11958();
      }
      
      private function _ur3894() : Boolean
      {
         var count2:int = int(this._dr5118._wj5070());
         var count:int = int(this._fc10878._wj5070());
         var count3:int = int(this._dr5118._ek14044());
         var count1:int = int(this._fc10878._ek14044());
         var count2:int = int(this._dr5118._is6188());
         var count7:int = int(this._fc10878._is6188());
         if(count2 > 0 && count == 0 && count2 > 2000)
         {
            return false;
         }
         if(count3 > 0 && (count1 == 0 && count7 < 10000))
         {
            return false;
         }
         if(count2 > 5 && count2 / 2 > count7)
         {
            return false;
         }
         return true;
      }
      
      public function _ou4685(param1:int) : void
      {
         if(Boolean(this._dr5118.isVisible()) && param1 != this.count9 && param1 != this.count10)
         {
            this._bq10683();
         }
         this._fl10243.handleSocket1(UserSession.getInstance().id,param1);
      }
      
      private function _bq10683() : void
      {
         this._fl10243.handleSocket3(this.count11,this.count9,this.count10);
      }
      
      public function _rc11958() : void
      {
         if(this.isEnabled == false && this.count8 != count6)
         {
            this._bq10683();
         }
         this.authenticateUser2();
      }
      
      public function _ht10080(param1:DataobjectsModel, param2:int) : void
      {
         if(this.count8 == count3 && Boolean(this._dr5118.isVisible()))
         {
            this._da704(param1,param2);
         }
      }
      
      public function _jc12333() : Boolean
      {
         if(this.count8 == count3 && Boolean(this._dr5118.isVisible()))
         {
            return true;
         }
         return false;
      }
      
      private function _da704(param1:DataobjectsModel, param2:int) : void
      {
         this._fl10243.handleSocket2(this.count11,param1.count2,param1.count,param2);
      }
      
      private function _fc9456(param1:int) : void
      {
         switch(param1)
         {
            case count4:
               this._dr5118._gh11749();
               this._fc10878._gh11749();
               this._rl15912._fh8876();
               break;
            case count6:
               this._dr5118._ok8651();
               break;
            case count7:
               this._dr5118._ig2699();
         }
         this.count8 = param1;
      }
      
      private function authenticateUser(param1:IntercambiosEvents) : void
      {
         var count:int = int(String(param1.items[1]).charCodeAt(0));
         switch(count)
         {
            case IntercambiosController.count:
               this.start(param1.items);
               return;
            case IntercambiosController.count1:
               this._vt4711(param1.items);
               return;
            case IntercambiosController.count5:
               this._rp14201(param1.items);
               return;
            case IntercambiosController.count2:
               this._nh6121(param1.items);
               return;
            case IntercambiosController.count3:
               this._jb11938(param1.items);
               return;
            case IntercambiosController.count7:
               this._ro5216(param1.items);
               return;
            case IntercambiosController.count4:
               this._lr6411(param1.items);
               return;
            case IntercambiosController.count9:
            case IntercambiosController.count10:
               this._ml7227(param1.items);
               return;
            default:
               return;
         }
      }
      
      private function start(param1:Array) : void
      {
         if(param1.length < 5)
         {
            this.logs._kp3815(new Logs(Logger.count2,"ManagerIntercambios.recTramaStartIntercambios",param1.toString()));
            return;
         }
         this.count11 = int(param1[2]);
         this.count9 = int(param1[3]);
         this.count10 = int(param1[4]);
         var count:* = this.count9 == UserSession.getInstance().id;
         this._cj15290 = (this._ix11826._xc6184(count ? int(this.count10) : int(this.count9)) as PersonController)._md8722;
         this.show();
      }
      
      private function _vt4711(param1:Array) : void
      {
         if(param1.length < 9)
         {
            this.logs._kp3815(new Logs(Logger.count2,"ManagerIntercambios.recTramaAddObject",param1.toString()));
            return;
         }
         var count:Array = StringUtils.getList1(param1);
         count.splice(0,2);
         var count3:int = int(count[0]);
         var count1:int = int(count[1]);
         var count2:String = count[2];
         var count7:String = count[3];
         var items:int = int(CatobjectsController._iw2544(String(count[4])));
         var count8:int = int(count[5]);
         var count6:String = count[6];
         var count:int = int(count[7]);
         var count10:Array = ColorModel._kl14169(count2,count7);
         var textString12:Array = SocketManager.getList2(count[8]);
         var isEnabled:CatobjectsController = CatalogObject.getInstance()._ms14382(count1);
         var textString14:DataobjectsModel = new DataobjectsModel(count3,count1,count8,items,count10,isEnabled,false,count6,textString12,count);
         this._fc10878.addObject(textString14);
      }
      
      private function _rp14201(param1:Array) : void
      {
         if(param1.length < 4)
         {
            this.logs._kp3815(new Logs(Logger.count2,"ManagerIntercambios.recTramaAddObjectOk",param1.toString()));
            return;
         }
         var count1:int = int(param1[2]);
         var count2:int = int(param1[3]);
         var count7:int = int(param1[4]);
         var items:int = int(param1[5]);
         switch(count1)
         {
            case -1:
               this._dc14886._uy9428()._ak11554(BoobleUtils._bs737);
               this._rl15912._ke4252(count2,count7,items);
               return;
            case 1:
               if(count2 >= 0)
               {
                  var count:DataobjectsModel = MochilaModel.getInstance()._sa6792(count2);
               }
               else
               {
                  count = MochilaModel.getInstance()._ou11754(count7);
               }
               return;
            case 0:
               this._dc14886._uy9428()._ak11554(BoobleUtils._nf3019);
               this._rl15912._ke4252(count2,count7,items);
               return;
            default:
               return;
         }
      }
      
      private function _nh6121(param1:Array) : void
      {
         if(param1.length < 4)
         {
            this.logs._kp3815(new Logs(Logger.count2,"ManagerIntercambios.recTramaPrimerAceptacion",param1.toString()));
            return;
         }
         var count:int = int(param1[2]);
         var count3:int = int(param1[3]);
         if(count == this.count11)
         {
            if(count3 == UserSession.getInstance().id)
            {
               this._dr5118._uh12820();
            }
            else
            {
               this._fc10878._uh12820();
            }
            ++this.count12;
            if(this.count12 == 2)
            {
               this._fc9456(count4);
            }
         }
      }
      
      private function _jb11938(param1:Array) : void
      {
         if(param1.length < 4)
         {
            this.logs._kp3815(new Logs(Logger.count2,"ManagerIntercambios.recTramaSegundaAceptacion",param1.toString()));
            return;
         }
         var count:int = int(param1[2]);
         var count3:int = int(param1[3]);
         if(count == this.count11)
         {
            if(count3 == UserSession.getInstance().id)
            {
               this._dr5118._rg11676();
            }
            else
            {
               this._fc10878._rg11676();
            }
            ++this.count12;
            if(this.count12 == 4)
            {
               this._fc9456(count5);
            }
         }
      }
      
      private function _ro5216(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new Logs(Logger.count2,"ManagerIntercambios.recTramaTransactionOk",param1.toString()));
            return;
         }
         this._dr5118._rg11676();
         this._fc10878._rg11676();
         var count:int = int(param1[2]);
         if(count == UserSession.getInstance().id)
         {
            this._lp469._od7419(0);
            this._fc9456(count6);
            this.authenticateUser2(false);
            if(this._rl15912 != null && Boolean(this._rl15912._lr8283()))
            {
               this._rl15912.authenticateUser2();
            }
         }
      }
      
      private function _ml7227(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new Logs(Logger.count2,"ManagerIntercambios.recTramaTransactionError",param1.toString()));
            return;
         }
         this._dr5118._rg11676();
         this._fc10878._rg11676();
         var count:int = int(param1[2]);
         if(count == UserSession.getInstance().id)
         {
            this._lp469._od7419(0);
            this._fc9456(count7);
            this.authenticateUser2(false);
            if(this._rl15912 != null && Boolean(this._rl15912._lr8283()))
            {
               this._rl15912.authenticateUser2();
            }
         }
      }
      
      private function _lr6411(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new Logs(Logger.count2,"ManagerIntercambios.recTramaCancelaIntercambio",param1.toString()));
            return;
         }
         var count:int = int(param1[2]);
         if(count == this.count11)
         {
            switch(this.count8)
            {
               case count3:
                  this._fc10878._pg5072();
                  break;
               case count4:
                  this._fc10878._he4312();
            }
            this.isEnabled = true;
            this.authenticateUser2(false);
            if(this._rl15912 != null && Boolean(this._rl15912._lr8283()))
            {
               this._rl15912.authenticateUser2();
            }
         }
      }
   }
}

