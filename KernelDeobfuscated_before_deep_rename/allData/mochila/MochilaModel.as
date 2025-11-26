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
      
      public static const _rj7684:int = -2;
      
      public static const _mg8184:int = -1;
      
      public static const _ep13336:int = 0;
      
      public static const _vk8921:int = 11;
      
      public static const _kw11590:int = 12;
      
      public static const _rs12407:int = 13;
      
      public static const _oc15894:int = 14;
      
      public static const _ku8543:int = 15;
      
      public static const _ro3505:int = 16;
      
      public static const _ku7782:int = 17;
      
      public static const _jt7417:int = 18;
      
      public static const _qr14554:int = 19;
      
      public static const _yi1411:int = 20;
      
      public static const _do3198:int = 21;
      
      public static const _vf11580:int = 22;
      
      public static const _fy2337:int = 1;
      
      public static const _nd6891:int = 2;
      
      public static const _kd186:int = 2;
      
      private var _ay14363:Array;
      
      private var _ls13847:Array;
      
      private var _hx4876:Array;
      
      private var logs:Logger;
      
      private var catalogo:CatalogObject;
      
      private var _jm3064:ObjetosController;
      
      private var _xu4068:MochilaModel;
      
      private var _ud15536:int;
      
      private var _df7091:int;
      
      private var _cm9087:Array;
      
      public function MochilaModel(param1:_rw9443)
      {
         super();
         this.logs = Logger.getInstance();
         this._ay14363 = new Array();
         this._hx4876 = new Array();
         this._ls13847 = new Array();
         this.catalogo = CatalogObject.getInstance();
         this._ud15536 = _mg8184;
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
         this._df7091 = param1;
      }
      
      public function get _rr2446() : int
      {
         return this._df7091;
      }
      
      public function _dy15716() : int
      {
         return this._ud15536;
      }
      
      public function init(param1:ObjetosController) : void
      {
         this._jm3064 = param1;
         param1.addEventListener(ObjetosEvents._tu12622,this._bw11981);
      }
      
      public function _ll4424(param1:Array) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         var _loc5_:int = param1.length / _kd186;
         while(_loc6_ < _loc5_)
         {
            _loc2_ = param1.slice(_loc6_ * _kd186,(_loc6_ + 1) * _kd186);
            _loc3_ = int(_loc2_[0]);
            _loc4_ = int(_loc2_[1]);
            this._ro5810(_loc3_,_loc4_);
            _loc6_++;
         }
      }
      
      private function _bw11981(param1:ObjetosEvents) : void
      {
         var _loc6_:uint = uint(String(param1._lv9976[1]).charCodeAt(0));
         switch(_loc6_)
         {
            case ObjetosController._yd3055:
               var _loc2_:Array = StringUtils._vc10061(param1._lv9976);
               null.splice(0,2);
               var _loc3_:int = int(null[1]);
               this._cb8720(null,false);
               if(this._rl15912 != null)
               {
                  this._rl15912._fn11952(0);
               }
               return;
            case ObjetosController._oj617:
               _loc2_ = StringUtils._vc10061(param1._lv9976);
               null.splice(0,2);
               this._cb8720(null,true);
               return;
            case ObjetosController._gn8348:
               if(param1._lv9976.length < 3)
               {
                  this.logs._kp3815(new Logs(Logger._ny10327,"Mochila.reciebeMsg SUBCODE_MSG_ELIMINAR_OBJETO_MOCHILA",param1._lv9976.toString()));
                  return;
               }
               var _loc4_:int = int(param1._lv9976[2]);
               _loc3_ = int(param1._lv9976[3]);
               var _loc5_:int = int(param1._lv9976[4]);
               this._vc3106(0,0,0);
               return;
               break;
            default:
               return;
         }
      }
      
      public function _cb8720(param1:Array, param2:Boolean) : void
      {
         var _loc3_:ObjectsModel = null;
         var _loc4_:Array = null;
         var _loc5_:CatobjectsController = null;
         var _loc6_:Array = param1.concat();
         while(true)
         {
            _loc3_ = ObjectsModel.parse(_loc6_);
            if(_loc3_ == null)
            {
               break;
            }
            _loc4_ = ColorModel._kl14169(_loc3_._af6638,_loc3_._vw7719);
            _loc5_ = this.catalogo._ms14382(_loc3_._rm6352);
            if(_loc5_ != null)
            {
               if(_loc3_._hw14129 >= 0)
               {
                  if(!this._ql12595(_loc3_._hw14129))
                  {
                     if(param2)
                     {
                        this._bu10918(_loc3_._hw14129,_loc3_._rm6352,_loc4_,_loc5_,_loc3_._mp5283,_loc3_.flip,param2,_loc3_._uf1803,_loc3_._cs7497,_loc3_.cant);
                     }
                     else
                     {
                        this._hk14545(_loc3_._hw14129,_loc3_._rm6352,_loc4_,_loc5_,_loc3_._mp5283,_loc3_.flip,param2,_loc3_._uf1803,_loc3_._cs7497,_loc3_.cant);
                     }
                  }
                  else
                  {
                     this.logs._kp3815(new Logs(Logger._dj10628,"Mochila.addObjetosFromTrama","duplicate object id: " + _loc3_._rm6352));
                  }
               }
               else if(_loc3_._hw14129 == -1 && !_loc5_._au2864)
               {
                  this._bu10918(_loc3_._hw14129,_loc3_._rm6352,_loc4_,_loc5_,_loc3_._mp5283,_loc3_.flip,param2,_loc3_._uf1803,_loc3_._cs7497,_loc3_.cant);
               }
            }
            else
            {
               this.logs._kp3815(new Logs(Logger._dj10628,"Mochila.addObjetosFromTrama","invalid object id: " + _loc3_._rm6352));
            }
         }
      }
      
      private function _ro5810(param1:int, param2:int) : void
      {
         var _loc4_:CatobjectsController = this.catalogo._ms14382(param1);
         if(_loc4_ != null)
         {
            var _loc3_:DataobjectsModel = new DataobjectsModel(-1,param1,0,CatobjectsController._ww14989,_loc4_.colors,_loc4_,false,"",[],param2);
            this._ls13847.push(null);
         }
         else
         {
            this.logs._kp3815(new Logs(Logger._dj10628,"Mochila.addObjetoInArrayObjectApilable","invalid object id: " + param1));
         }
      }
      
      private function _hk14545(param1:int, param2:int, param3:Array, param4:CatobjectsController, param5:int, param6:int, param7:Boolean, param8:String, param9:Array, param10:int) : DataobjectsModel
      {
         var _loc11_:DataobjectsModel = new DataobjectsModel(param1,param2,param6,param5,param3,param4,param7,param8,param9,param10);
         this._ay14363.push(_loc11_);
         this._fi5965(_loc11_);
         return _loc11_;
      }
      
      private function _bu10918(param1:int, param2:int, param3:Array, param4:CatobjectsController, param5:int, param6:int, param7:Boolean, param8:String, param9:Array, param10:int) : DataobjectsModel
      {
         var _loc12_:DataobjectsModel = null;
         var _loc13_:Boolean = this._mw3161(param2);
         if(_loc13_)
         {
            _loc12_ = this._ou11754(param2);
            if(_loc12_ == null)
            {
               this.logs._kp3815(new Logs(Logger._dj10628,"Mochila.addObjeto","idObj mochilaApilable not Found: " + param2));
               return null;
            }
            _loc12_.cant += param10;
            this._hk14545(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
         else
         {
            _loc12_ = this._ou11754(param2);
            if(_loc12_ == null)
            {
               this._ro5810(param2,param10);
               if(param4._au2864)
               {
                  this._hk14545(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
               }
            }
            else
            {
               _loc12_.cant += param10;
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
         var _loc4_:DataobjectsModel = this._ou11754(param1);
         if(_loc4_ != null)
         {
            _loc4_.cant -= param2;
            if(_loc4_.cant <= 0)
            {
               var _loc3_:int = int(this._ls13847.indexOf(_loc4_));
               this._ls13847.splice(0,1);
            }
         }
      }
      
      private function _sw112(param1:int, param2:int) : void
      {
         var _loc4_:DataobjectsModel = this._sa6792(param1);
         if(_loc4_ != null)
         {
            var _loc3_:int = int(this._ay14363.indexOf(_loc4_));
            this._ay14363.splice(0,1);
         }
      }
      
      public function _ui3214() : Array
      {
         var _loc1_:DataobjectsModel = null;
         var _loc2_:int = 0;
         this._cm9087 = new Array();
         while(_loc2_ < this._ls13847.length)
         {
            _loc1_ = this._ls13847[_loc2_];
            this._cm9087[int(_loc1_._rm6352)] = _loc1_.cant;
            _loc2_++;
         }
         return this._cm9087;
      }
      
      public function _hl8360(param1:int) : Boolean
      {
         var _loc2_:DataobjectsModel = null;
         for each(_loc2_ in this._ls13847)
         {
            if(_loc2_._rm6352 == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function _ou11754(param1:int) : DataobjectsModel
      {
         var _loc2_:DataobjectsModel = null;
         for each(_loc2_ in this._ls13847)
         {
            if(_loc2_._rm6352 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function _mw3161(param1:int) : Boolean
      {
         var _loc2_:DataobjectsModel = null;
         for each(_loc2_ in this._ay14363)
         {
            if(_loc2_._rm6352 == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function _ql12595(param1:int) : Boolean
      {
         var _loc2_:DataobjectsModel = null;
         for each(_loc2_ in this._ay14363)
         {
            if(_loc2_._hw14129 == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function _yh8339(param1:int) : DataobjectsModel
      {
         var _loc2_:DataobjectsModel = null;
         for each(_loc2_ in this._ay14363)
         {
            if(_loc2_._rm6352 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function _sa6792(param1:int) : DataobjectsModel
      {
         var _loc2_:DataobjectsModel = null;
         for each(_loc2_ in this._ay14363)
         {
            if(_loc2_._hw14129 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function _ks8566(param1:int, param2:int, param3:int, param4:SceneType) : Array
      {
         var _loc6_:DataobjectsModel = null;
         var _loc7_:Array = null;
         var _loc9_:Number = NaN;
         this._hx4876 = new Array();
         _loc7_ = this._ls13847.concat();
         switch(param2)
         {
            case Mochila.NORMAL:
               this._ud15536 = param1;
               var _loc8_:uint = _loc7_.length;
               _loc9_ = _loc8_ - 1;
               while(_loc9_ >= 0)
               {
                  _loc6_ = _loc7_[_loc9_];
                  var _loc5_:Boolean = param4._xn7478 && param4._ie14377(_loc6_._sl11700._fv13476,_loc6_._sl11700._ou11620) && !param4._pu4970;
                  if(_loc5_)
                  {
                     this._ic6582(_loc6_);
                     _loc7_.splice(_loc9_,1);
                  }
                  _loc9_--;
               }
               _loc8_ = _loc7_.length;
               _loc9_ = _loc8_ - 1;
               while(_loc9_ >= 0)
               {
                  _loc6_ = _loc7_[_loc9_];
                  if(_loc6_._sl11700._dv13852 == CatobjectsController._fx1727 || _loc6_._sl11700._dv13852 == CatobjectsController._am4910 || _loc6_._sl11700._dv13852 == CatobjectsController._xl121)
                  {
                     this._ic6582(_loc6_);
                     _loc7_.splice(_loc9_,1);
                  }
                  _loc9_--;
               }
               for each(_loc6_ in _loc7_)
               {
                  this._ic6582(_loc6_);
               }
               break;
            case Mochila._fh12057:
               for each(_loc6_ in this._ay14363)
               {
                  if(_loc6_._rm6352 == param3)
                  {
                     this._ic6582(_loc6_);
                  }
               }
         }
         return this._hx4876;
      }
      
      private function _ye5693() : void
      {
         var _loc1_:DataobjectsModel = null;
         var _loc2_:int = this._hx4876.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ = DataobjectsModel(this._hx4876[_loc2_]);
            if(_loc1_.cant <= 0)
            {
               this._hx4876.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      private function _bn3917(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this._ye5693();
         if(param1 >= 0)
         {
            _loc4_ = -1;
            _loc5_ = 0;
            while(_loc5_ < this._hx4876.length)
            {
               if(DataobjectsModel(this._hx4876[_loc5_])._hw14129 == param1)
               {
                  _loc4_ = _loc5_;
               }
               _loc5_++;
            }
            if(_loc4_ >= 0)
            {
               this._hx4876.splice(_loc4_,1);
            }
         }
         if(this._rl15912 != null)
         {
            if(this._hx4876.length > 0)
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
         if(this._hx4876 == null)
         {
            this._hx4876 = new Array();
         }
         if(this._ud15536 == _mg8184 || param1._sl11700._rj14556.indexOf(this._ud15536) >= 0 || this._ud15536 == _ep13336 && param1._sl11700._ph8835() || this._ud15536 == _rj7684 && param1._ym3380())
         {
            this._hx4876.push(param1);
         }
      }
      
      private function _fi5965(param1:DataobjectsModel) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DataobjectsModel = null;
         if(this._hx4876 == null)
         {
            this._hx4876 = new Array();
         }
         if(this._ud15536 == _mg8184 || param1._sl11700._rj14556.indexOf(this._ud15536) >= 0 || this._ud15536 == _ep13336 && param1._sl11700._ph8835() || this._ud15536 == _rj7684 && param1._ym3380())
         {
            _loc2_ = int(this._hx4876.length);
            _loc3_ = _loc2_ - 1;
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               _loc5_ = DataobjectsModel(this._hx4876[_loc4_]);
               switch(this._rr2446)
               {
                  case _fy2337:
                     if(!this._jh5921(param1,_loc5_))
                     {
                        _loc3_ = _loc4_;
                     }
                     break;
                  case _nd6891:
                     if(this._jh5921(param1,_loc5_))
                     {
                        _loc3_ = _loc4_;
                     }
               }
               _loc4_++;
            }
            this._hx4876.splice(_loc3_,0,param1);
         }
      }
      
      private function _tr15207(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:DataobjectsModel = null;
         var _loc5_:DataobjectsModel = null;
         var _loc6_:int = int(param1.length);
         _loc3_ = 0;
         while(_loc3_ < _loc6_)
         {
            _loc2_ = 0;
            while(_loc2_ < _loc6_ - 1 - _loc3_)
            {
               _loc4_ = DataobjectsModel(param1[_loc2_]);
               _loc5_ = DataobjectsModel(param1[_loc2_ + 1]);
               switch(this._rr2446)
               {
                  case _fy2337:
                     if(!this._jh5921(_loc4_,_loc5_))
                     {
                        param1[_loc2_] = _loc5_;
                        param1[_loc2_ + 1] = _loc4_;
                     }
                     break;
                  case _nd6891:
                     if(this._jh5921(_loc4_,_loc5_))
                     {
                        param1[_loc2_] = _loc5_;
                        param1[_loc2_ + 1] = _loc4_;
                     }
               }
               _loc2_++;
            }
            _loc3_++;
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
            if(param1._sl11700._eg3710 == param2._sl11700._eg3710)
            {
               if(param1._rm6352 > param2._rm6352)
               {
                  return true;
               }
            }
            else if(param1._sl11700._eg3710 < param2._sl11700._eg3710)
            {
               return true;
            }
         }
         else
         {
            if(param1._sl11700._hy3311 > param2._sl11700._hy3311)
            {
               return true;
            }
            if(param1._sl11700._hy3311 == param2._sl11700._hy3311)
            {
               if(param1._rm6352 > param2._rm6352)
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
