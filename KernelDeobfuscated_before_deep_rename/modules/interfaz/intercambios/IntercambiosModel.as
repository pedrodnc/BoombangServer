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
      
      private static const _ue3469:String = "getMovieClip";
      
      private static const _al10118:String = "mclIntercambios";
      
      private static const _cs14294:String = "mclTenCuidado";
      
      private static const _aa1143:String = "mclAvance";
      
      public static const _qh11016:int = 67;
      
      public static const _cj11822:int = 7;
      
      private static const _io12148:int = 146;
      
      public static const _te11552:int = 0;
      
      public static const _xu12928:int = 1;
      
      public static const _od15476:int = 2;
      
      public static const _et8009:int = 3;
      
      public static const _ng9873:int = 4;
      
      private var _tg4175:int;
      
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
      
      private var _hp10687:int;
      
      private var _hy2049:int;
      
      private var _ob14685:int;
      
      private var _cj15290:PersonAnimation;
      
      private var _qu5376:Boolean;
      
      private var _xh13571:int;
      
      private var _ii8150:Boolean;
      
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
         this._fl10243.addEventListener(IntercambiosEvents._gl14183,this._bw11981);
      }
      
      private function _we3167() : void
      {
         var _loc1_:FichasUtils = new FichasUtils(this._im12039._qw11914,[this._im12039._hr3731,this._im12039._uq5612,this._im12039._ae5945]);
         this._op3134 = new FichasView(this._cd5738[_ue3469](_cs14294),_loc1_,this._im12039._pj2713);
         var _loc2_:FichasUtils = new FichasUtils("",[this._im12039._od82,this._im12039._hf13978,this._im12039._do5286]);
         var _loc3_:FichasUtils = new FichasUtils("",[this._im12039._vn3681,this._im12039._hf13978,this._im12039._wp6753]);
         var _loc4_:MovieClip = this._cd5738[_ue3469](_aa1143);
         this._dr5118 = new FichasUtils(this._cd5738[_ue3469](_al10118),_loc2_,this._el11828,this._im12039,_loc4_,this._wg330,this._fw12448);
         this._fc10878 = new FichasUtils(this._cd5738[_ue3469](_al10118),_loc3_,null,this._im12039,_loc4_);
         FichasUtils(this._dr5118)._fc10878 = this._fc10878;
      }
      
      private function _tu12901() : void
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
         this._tu12901();
         this._xv8949();
         if(this._op3134 != null)
         {
            this._op3134.destroy();
            this._op3134 = null;
         }
         this._fl10243.removeEventListener(IntercambiosEvents._gl14183,this._bw11981);
         this._fl10243.destroy();
         this._fl10243 = null;
      }
      
      private function _db5584() : void
      {
         this._xv8949();
         this._dr5118._fo13643(UserSession.getInstance());
         this._fc10878._fo13643(this._cj15290);
         this._dr5118._db5584(_qh11016,_cj11822);
         this._fc10878._db5584(_qh11016,_cj11822 + _io12148);
         this._lp469._bv14620(this._cj15290);
         this._fc9456(_te11552);
         this._qu5376 = false;
         this._xh13571 = 0;
         this._ii8150 = false;
      }
      
      public function _hu12389(param1:Boolean = true) : void
      {
         if(param1)
         {
            this._dr5118._hu12389();
            this._fc10878._hu12389();
            this._xv8949();
         }
         else
         {
            this._qy512 = new Timer(3000,1);
            this._qy512.addEventListener(TimerEvent.TIMER,this._qe15387);
            this._qy512.start();
         }
         this._lp469._hl388();
      }
      
      private function _xv8949() : void
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
         this._xv8949();
         this._hu12389();
      }
      
      private function _wg330() : void
      {
         if(this._qu5376 == false && this._tg4175 == _te11552)
         {
            this._fl10243._sp891(this._ob14685,this._hp10687,this._hy2049);
         }
      }
      
      private function _fw12448() : void
      {
         if(this._qu5376 == false && this._tg4175 == _xu12928)
         {
            if(this._op3134.isVisible() == false)
            {
               if(this._ii8150 == true || this._ur3894() == true)
               {
                  this._dr5118._rg11676();
                  this._fl10243._nf8409(this._ob14685,this._hp10687,this._hy2049);
               }
               else
               {
                  this._op3134._db5584(this._dr5118._pj8617(),this._dr5118._ew826());
                  this._ii8150 = true;
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
         var _loc1_:int = int(this._dr5118._wj5070());
         var _loc2_:int = int(this._fc10878._wj5070());
         var _loc3_:int = int(this._dr5118._ek14044());
         var _loc4_:int = int(this._fc10878._ek14044());
         var _loc5_:int = int(this._dr5118._is6188());
         var _loc6_:int = int(this._fc10878._is6188());
         if(_loc1_ > 0 && _loc2_ == 0 && _loc5_ > 2000)
         {
            return false;
         }
         if(_loc3_ > 0 && (_loc4_ == 0 && _loc6_ < 10000))
         {
            return false;
         }
         if(_loc1_ > 5 && _loc5_ / 2 > _loc6_)
         {
            return false;
         }
         return true;
      }
      
      public function _ou4685(param1:int) : void
      {
         if(Boolean(this._dr5118.isVisible()) && param1 != this._hp10687 && param1 != this._hy2049)
         {
            this._bq10683();
         }
         this._fl10243._yu843(UserSession.getInstance().id,param1);
      }
      
      private function _bq10683() : void
      {
         this._fl10243._pq10662(this._ob14685,this._hp10687,this._hy2049);
      }
      
      public function _rc11958() : void
      {
         if(this._qu5376 == false && this._tg4175 != _et8009)
         {
            this._bq10683();
         }
         this._hu12389();
      }
      
      public function _ht10080(param1:DataobjectsModel, param2:int) : void
      {
         if(this._tg4175 == _te11552 && Boolean(this._dr5118.isVisible()))
         {
            this._da704(param1,param2);
         }
      }
      
      public function _jc12333() : Boolean
      {
         if(this._tg4175 == _te11552 && Boolean(this._dr5118.isVisible()))
         {
            return true;
         }
         return false;
      }
      
      private function _da704(param1:DataobjectsModel, param2:int) : void
      {
         this._fl10243._lq10211(this._ob14685,param1._hw14129,param1._rm6352,param2);
      }
      
      private function _fc9456(param1:int) : void
      {
         switch(param1)
         {
            case _xu12928:
               this._dr5118._gh11749();
               this._fc10878._gh11749();
               this._rl15912._fh8876();
               break;
            case _et8009:
               this._dr5118._ok8651();
               break;
            case _ng9873:
               this._dr5118._ig2699();
         }
         this._tg4175 = param1;
      }
      
      private function _bw11981(param1:IntercambiosEvents) : void
      {
         var _loc2_:int = int(String(param1._lv9976[1]).charCodeAt(0));
         switch(_loc2_)
         {
            case IntercambiosController._gi11862:
               this._yf14728(param1._lv9976);
               return;
            case IntercambiosController._xi4203:
               this._vt4711(param1._lv9976);
               return;
            case IntercambiosController._dm1321:
               this._rp14201(param1._lv9976);
               return;
            case IntercambiosController._cg12445:
               this._nh6121(param1._lv9976);
               return;
            case IntercambiosController._ab2884:
               this._jb11938(param1._lv9976);
               return;
            case IntercambiosController._kk11006:
               this._ro5216(param1._lv9976);
               return;
            case IntercambiosController._om9335:
               this._lr6411(param1._lv9976);
               return;
            case IntercambiosController._ky10948:
            case IntercambiosController._ss14231:
               this._ml7227(param1._lv9976);
               return;
            default:
               return;
         }
      }
      
      private function _yf14728(param1:Array) : void
      {
         if(param1.length < 5)
         {
            this.logs._kp3815(new Logs(Logger._ny10327,"ManagerIntercambios.recTramaStartIntercambios",param1.toString()));
            return;
         }
         this._ob14685 = int(param1[2]);
         this._hp10687 = int(param1[3]);
         this._hy2049 = int(param1[4]);
         var _loc2_:* = this._hp10687 == UserSession.getInstance().id;
         this._cj15290 = (this._ix11826._xc6184(_loc2_ ? int(this._hy2049) : int(this._hp10687)) as PersonController)._md8722;
         this._db5584();
      }
      
      private function _vt4711(param1:Array) : void
      {
         if(param1.length < 9)
         {
            this.logs._kp3815(new Logs(Logger._ny10327,"ManagerIntercambios.recTramaAddObject",param1.toString()));
            return;
         }
         var _loc2_:Array = StringUtils._vc10061(param1);
         _loc2_.splice(0,2);
         var _loc3_:int = int(_loc2_[0]);
         var _loc4_:int = int(_loc2_[1]);
         var _loc5_:String = _loc2_[2];
         var _loc6_:String = _loc2_[3];
         var _loc7_:int = int(CatobjectsController._iw2544(String(_loc2_[4])));
         var _loc8_:int = int(_loc2_[5]);
         var _loc9_:String = _loc2_[6];
         var _loc10_:int = int(_loc2_[7]);
         var _loc11_:Array = ColorModel._kl14169(_loc5_,_loc6_);
         var _loc12_:Array = SocketManager._hp13280(_loc2_[8]);
         var _loc13_:CatobjectsController = CatalogObject.getInstance()._ms14382(_loc4_);
         var _loc14_:DataobjectsModel = new DataobjectsModel(_loc3_,_loc4_,_loc8_,_loc7_,_loc11_,_loc13_,false,_loc9_,_loc12_,_loc10_);
         this._fc10878.addObject(_loc14_);
      }
      
      private function _rp14201(param1:Array) : void
      {
         if(param1.length < 4)
         {
            this.logs._kp3815(new Logs(Logger._ny10327,"ManagerIntercambios.recTramaAddObjectOk",param1.toString()));
            return;
         }
         var _loc4_:int = int(param1[2]);
         var _loc5_:int = int(param1[3]);
         var _loc6_:int = int(param1[4]);
         var _loc7_:int = int(param1[5]);
         switch(_loc4_)
         {
            case -1:
               this._dc14886._uy9428()._ak11554(BoobleUtils._bs737);
               this._rl15912._ke4252(_loc5_,_loc6_,_loc7_);
               return;
            case 1:
               if(_loc5_ >= 0)
               {
                  var _loc2_:DataobjectsModel = MochilaModel.getInstance()._sa6792(_loc5_);
               }
               else
               {
                  _loc2_ = MochilaModel.getInstance()._ou11754(_loc6_);
               }
               return;
            case 0:
               this._dc14886._uy9428()._ak11554(BoobleUtils._nf3019);
               this._rl15912._ke4252(_loc5_,_loc6_,_loc7_);
               return;
            default:
               return;
         }
      }
      
      private function _nh6121(param1:Array) : void
      {
         if(param1.length < 4)
         {
            this.logs._kp3815(new Logs(Logger._ny10327,"ManagerIntercambios.recTramaPrimerAceptacion",param1.toString()));
            return;
         }
         var _loc2_:int = int(param1[2]);
         var _loc3_:int = int(param1[3]);
         if(_loc2_ == this._ob14685)
         {
            if(_loc3_ == UserSession.getInstance().id)
            {
               this._dr5118._uh12820();
            }
            else
            {
               this._fc10878._uh12820();
            }
            ++this._xh13571;
            if(this._xh13571 == 2)
            {
               this._fc9456(_xu12928);
            }
         }
      }
      
      private function _jb11938(param1:Array) : void
      {
         if(param1.length < 4)
         {
            this.logs._kp3815(new Logs(Logger._ny10327,"ManagerIntercambios.recTramaSegundaAceptacion",param1.toString()));
            return;
         }
         var _loc2_:int = int(param1[2]);
         var _loc3_:int = int(param1[3]);
         if(_loc2_ == this._ob14685)
         {
            if(_loc3_ == UserSession.getInstance().id)
            {
               this._dr5118._rg11676();
            }
            else
            {
               this._fc10878._rg11676();
            }
            ++this._xh13571;
            if(this._xh13571 == 4)
            {
               this._fc9456(_od15476);
            }
         }
      }
      
      private function _ro5216(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new Logs(Logger._ny10327,"ManagerIntercambios.recTramaTransactionOk",param1.toString()));
            return;
         }
         this._dr5118._rg11676();
         this._fc10878._rg11676();
         var _loc2_:int = int(param1[2]);
         if(_loc2_ == UserSession.getInstance().id)
         {
            this._lp469._od7419(0);
            this._fc9456(_et8009);
            this._hu12389(false);
            if(this._rl15912 != null && Boolean(this._rl15912._lr8283()))
            {
               this._rl15912._hu12389();
            }
         }
      }
      
      private function _ml7227(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new Logs(Logger._ny10327,"ManagerIntercambios.recTramaTransactionError",param1.toString()));
            return;
         }
         this._dr5118._rg11676();
         this._fc10878._rg11676();
         var _loc2_:int = int(param1[2]);
         if(_loc2_ == UserSession.getInstance().id)
         {
            this._lp469._od7419(0);
            this._fc9456(_ng9873);
            this._hu12389(false);
            if(this._rl15912 != null && Boolean(this._rl15912._lr8283()))
            {
               this._rl15912._hu12389();
            }
         }
      }
      
      private function _lr6411(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new Logs(Logger._ny10327,"ManagerIntercambios.recTramaCancelaIntercambio",param1.toString()));
            return;
         }
         var _loc2_:int = int(param1[2]);
         if(_loc2_ == this._ob14685)
         {
            switch(this._tg4175)
            {
               case _te11552:
                  this._fc10878._pg5072();
                  break;
               case _xu12928:
                  this._fc10878._he4312();
            }
            this._qu5376 = true;
            this._hu12389(false);
            if(this._rl15912 != null && Boolean(this._rl15912._lr8283()))
            {
               this._rl15912._hu12389();
            }
         }
      }
   }
}

