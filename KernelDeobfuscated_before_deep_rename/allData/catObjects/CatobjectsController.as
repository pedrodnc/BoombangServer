package src.allData.catObjects
{
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import src.allData.color.*;
   import src.allData.scene.*;
   import src.org.osflash.thunderbolt.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class CatobjectsController
   {
      
      public static const _tq1895:int = -1;
      
      public static const _ww14989:int = 0;
      
      public static const _wl5344:int = 1;
      
      public static const _ji11043:int = 2;
      
      public static const _wy6091:int = 1;
      
      public static const _pc8528:int = 2;
      
      public static const _ru10879:int = 3;
      
      public static const _sr6196:int = 4;
      
      public static const _dp8191:int = 5;
      
      public static const _ld3901:int = 6;
      
      public static const _uj9800:int = 7;
      
      public static const _fc8359:int = 8;
      
      public static const _ei5929:int = 9;
      
      public static const _dt8554:int = 10;
      
      public static const _ro523:int = 11;
      
      public static const _bd2364:int = 12;
      
      public static const _tp8413:int = 13;
      
      public static const _tr8404:int = 14;
      
      public static const _oo2837:int = 15;
      
      public static const _wd10297:int = 18;
      
      public static const _op7653:int = 19;
      
      public static const _cf11573:int = 20;
      
      public static const _ec15103:int = 22;
      
      public static const _tx6934:int = 23;
      
      public static const _ug16090:int = 24;
      
      public static const _jh10992:int = 26;
      
      public static const _rm14205:int = 27;
      
      public static const _fx1727:int = 28;
      
      public static const _am4910:int = 29;
      
      public static const _xl121:int = 30;
      
      public static const _id9949:int = 31;
      
      public static const _sp10453:int = 32;
      
      public static const _jx4096:int = 33;
      
      public static const _oy8288:int = 34;
      
      public static const _kk774:int = 35;
      
      public static const _pe7569:int = 36;
      
      public static const _xh14623:int = 37;
      
      public static const _of16060:int = 38;
      
      public static const _kr1990:int = 39;
      
      public static const _km4276:int = 35;
      
      public static const _kw6316:int = 33;
      
      public static const _nt6489:int = 0;
      
      public static const _unicouq:int = 1;
      
      public static const _casiunicouq:int = 2;
      
      public static const _ltduq:int = 3;
      
      public static const _muyrareuq:int = 4;
      
      public static const _rareuq:int = 5;
      
      public static const _eventouq:int = 6;
      
      public static const _vv8298:Array = [_fc8359,_dt8554,_sr6196];
      
      public var id:int;
      
      public var _hd7139:String;
      
      public var name:String;
      
      public var description:String;
      
      private var _pf5372:String;
      
      public var _hy3311:int;
      
      public var _sw10424:int;
      
      public var _ea12413:int = -1;
      
      public var _do11526:int = -1;
      
      public var _rj14556:Array;
      
      private var _aq8665:Array;
      
      public var _mj5951:Array;
      
      public var _cg6545:Array;
      
      public var _vf11740:Array;
      
      public var _ja12821:Array;
      
      public var _dv13852:int;
      
      public var _fv13476:Array;
      
      public var _td12337:Boolean;
      
      private var _xu9865:MovieClip;
      
      private var _mk9295:Bitmap;
      
      public var _eg3710:int;
      
      public var _au2864:Boolean;
      
      public var _jq9004:Boolean;
      
      public var _ou11620:Array;
      
      public var member:Boolean;
      
      public var _oj14094:Boolean;
      
      public var _vm6245:int;
      
      private var _jr11143:String;
      
      private var _xa13470:Boolean;
      
      public var _jk15921:Boolean = false;
      
      public function CatobjectsController(param1:int, param2:String, param3:String, param4:String, param5:int, param6:int, param7:Array, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String, param14:Number, param15:Number, param16:Number, param17:String, param18:String, param19:String, param20:int, param21:int, param22:int, param23:int, param24:Array, param25:Boolean, param26:int, param27:Boolean, param28:Boolean, param29:Array, param30:Boolean, param31:Boolean, param32:Boolean)
      {
         super();
         this.id = param1;
         this.name = param2;
         this.description = param3;
         this._hf10429 = param4;
         this._hy3311 = param5;
         this._sw10424 = param6;
         this._rj14556 = param7;
         this.colors = ColorModel._kl14169(param8,param9);
         this._mj5951 = [param10,param11,param12,param13];
         this._cg6545 = [param14,param15,param16];
         this._vf11740 = [UtilsUtils.splitInt(param17,","),UtilsUtils.splitInt(param18,","),UtilsUtils.splitInt(param19,",")];
         this._ja12821 = [param20,param21,param22];
         this._dv13852 = param23;
         this._fv13476 = param24;
         this._ou11620 = param29;
         this._td12337 = param25;
         this._xu9865 = null;
         this._nk15832 = null;
         this._eg3710 = param26;
         this._au2864 = param27;
         this._jq9004 = param28;
         this.member = param30;
         this._oj14094 = param31;
         this._xa13470 = param32;
         if(param23 == _km4276)
         {
            this._vm6245 = SceneModel._jw12491;
         }
         else
         {
            this._vm6245 = SceneModel._ew12008;
         }
         this._ky6447 = this._hf10429;
         if(this._kv11464())
         {
            this._ja12821 = [1000,1000,1000];
         }
      }
      
      public static function _iw2544(param1:String) : int
      {
         switch(param1)
         {
            case "tam_n":
               return _ww14989;
            case "tam_b":
               return _wl5344;
            case "tam_s":
               return _ji11043;
            default:
               return _tq1895;
         }
      }
      
      public static function _pd5901(param1:int) : String
      {
         switch(param1)
         {
            case _ww14989:
               return "tam_n";
            case _wl5344:
               return "tam_b";
            case _ji11043:
               return "tam_s";
            default:
               return "tam_n";
         }
      }
      
      public function get colors() : Array
      {
         return this._aq8665;
      }
      
      public function set colors(param1:Array) : void
      {
         this._aq8665 = param1;
      }
      
      public function get _nk15832() : Bitmap
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         if(this._su5362)
         {
            if((ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._dy7956(this._le1402))
            {
               if((ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._oa15287(this._le1402,"AssetIcon"))
               {
                  _loc1_ = (ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._at9587(this._le1402,"AssetIcon");
               }
               else
               {
                  _loc2_ = (ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._bn15619(this._le1402,"AssetObject");
                  _loc3_ = 1;
                  if(_loc2_.width > _loc2_.height && _loc2_.width > 65)
                  {
                     _loc2_.width = 65;
                     _loc3_ = _loc2_.scaleX;
                  }
                  else if(_loc2_.height > 65)
                  {
                     _loc2_.height = 65;
                     _loc3_ = _loc2_.scaleY;
                  }
                  var _temp_2:* = _loc2_;
                  _loc2_.scaleY = 1;
                  _temp_2.scaleX = 1;
                  StringUtils._xw3757(_loc2_.mcObject.mcObjectRef,this.colors);
                  _loc1_ = StringUtils._oe11080(_loc2_,_loc3_);
                  _loc1_.smoothing = true;
               }
               return _loc1_;
            }
            return null;
         }
         return this._mk9295;
      }
      
      public function set _nk15832(param1:Bitmap) : void
      {
         this._mk9295 = param1;
      }
      
      public function get _kc6805() : MovieClip
      {
         if(this._su5362)
         {
            if((ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._dy7956(this._le1402))
            {
               return (ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._bn15619(this._le1402,"AssetObject");
            }
            return null;
         }
         return this._xu9865;
      }
      
      public function set _kc6805(param1:MovieClip) : void
      {
         this._xu9865 = param1;
      }
      
      public function get _su5362() : Boolean
      {
         return this._xa13470;
      }
      
      public function get _le1402() : String
      {
         return this._hf10429 + ".swf";
      }
      
      public function get _hf10429() : String
      {
         return this._pf5372;
      }
      
      public function set _hf10429(param1:String) : void
      {
         this._pf5372 = param1;
      }
      
      public function get _sb8254() : int
      {
         return this._ea12413 != -1 ? this._ea12413 : this._hy3311;
      }
      
      public function get _fi8088() : int
      {
         return this._do11526 != -1 ? this._do11526 : this._sw10424;
      }
      
      public function get _ob13927() : Boolean
      {
         return this._ea12413 != -1 || this._do11526 != -1;
      }
      
      public function get _ky6447() : String
      {
         return this._jr11143;
      }
      
      public function set _ky6447(param1:String) : void
      {
         this._jr11143 = "dswmedia/objetos/catalog/small/" + param1 + "Catalog.png";
      }
      
      public function _kb7753(param1:int) : Boolean
      {
         if(this._rj14556.indexOf(param1) >= 0)
         {
            return true;
         }
         return false;
      }
      
      public function _ph8835() : Boolean
      {
         return this._eg3710 != _nt6489;
      }
      
      public function _kv11464() : Boolean
      {
         if(_vv8298.indexOf(this._dv13852) >= 0)
         {
            return true;
         }
         return false;
      }
      
      public function _yc2987() : void
      {
         ThunderboltModel.info("Object Category Dump",{
            "ID":this.id,
            "member_name":this._hd7139,
            "cast_name":this._hf10429,
            "_hs9331":this.name,
            "_uf1803":this.description,
            "price":this._hy3311,
            "codigo_categoria":this._rj14556,
            "_iy10918":this.colors,
            "colores_server":ColorModel._gl15701(this.colors),
            "nombre_partes":this._mj5951,
            "sizes":this._cg6545,
            "array_ocupa":this._vf11740,
            "loc_z":this._ja12821,
            "type_obj":this._dv13852,
            "cod_ubicar":this._fv13476,
            "is_active":this._td12337,
            "type_rare":this._eg3710,
            "is_layable":this._au2864,
            "is_exchangeable":this._jq9004,
            "cod_ubicar":this._ou11620,
            "is_flipable":this._oj14094
         });
      }
   }
}

