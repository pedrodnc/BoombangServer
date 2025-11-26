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
      
      public static const count:int = -1;
      
      public static const count1:int = 0;
      
      public static const count2:int = 1;
      
      public static const count3:int = 2;
      
      public static const count4:int = 1;
      
      public static const count5:int = 2;
      
      public static const count6:int = 3;
      
      public static const count7:int = 4;
      
      public static const count8:int = 5;
      
      public static const count9:int = 6;
      
      public static const count10:int = 7;
      
      public static const count11:int = 8;
      
      public static const count12:int = 9;
      
      public static const count13:int = 10;
      
      public static const count14:int = 11;
      
      public static const count15:int = 12;
      
      public static const count16:int = 13;
      
      public static const count17:int = 14;
      
      public static const count18:int = 15;
      
      public static const count19:int = 18;
      
      public static const count20:int = 19;
      
      public static const count21:int = 20;
      
      public static const count22:int = 22;
      
      public static const count23:int = 23;
      
      public static const count24:int = 24;
      
      public static const count25:int = 26;
      
      public static const count26:int = 27;
      
      public static const count27:int = 28;
      
      public static const count28:int = 29;
      
      public static const count29:int = 30;
      
      public static const count30:int = 31;
      
      public static const count31:int = 32;
      
      public static const count32:int = 33;
      
      public static const count33:int = 34;
      
      public static const count34:int = 35;
      
      public static const count35:int = 36;
      
      public static const count36:int = 37;
      
      public static const count37:int = 38;
      
      public static const count38:int = 39;
      
      public static const count39:int = 35;
      
      public static const count40:int = 33;
      
      public static const count41:int = 0;
      
      public static const _unicouq:int = 1;
      
      public static const _casiunicouq:int = 2;
      
      public static const _ltduq:int = 3;
      
      public static const _muyrareuq:int = 4;
      
      public static const _rareuq:int = 5;
      
      public static const _eventouq:int = 6;
      
      public static const items:Array = [count11,count13,count7];
      
      public var id:int;
      
      public var textString:String;
      
      public var name:String;
      
      public var description:String;
      
      private var textString1:String;
      
      public var count42:int;
      
      public var count43:int;
      
      public var count44:int = -1;
      
      public var count45:int = -1;
      
      public var items1:Array;
      
      private var items2:Array;
      
      public var items3:Array;
      
      public var items4:Array;
      
      public var items5:Array;
      
      public var items6:Array;
      
      public var count46:int;
      
      public var items7:Array;
      
      public var isEnabled:Boolean;
      
      private var _xu9865:MovieClip;
      
      private var _mk9295:Bitmap;
      
      public var count47:int;
      
      public var isEnabled1:Boolean;
      
      public var isEnabled2:Boolean;
      
      public var items8:Array;
      
      public var member:Boolean;
      
      public var isEnabled3:Boolean;
      
      public var count48:int;
      
      private var textString2:String;
      
      private var isEnabled4:Boolean;
      
      public var isEnabled5:Boolean = false;
      
      public function CatobjectsController(param1:int, param2:String, param3:String, param4:String, param5:int, param6:int, param7:Array, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String, param14:Number, param15:Number, param16:Number, param17:String, param18:String, param19:String, param20:int, param21:int, param22:int, param23:int, param24:Array, param25:Boolean, param26:int, param27:Boolean, param28:Boolean, param29:Array, param30:Boolean, param31:Boolean, param32:Boolean)
      {
         super();
         this.id = param1;
         this.name = param2;
         this.description = param3;
         this._hf10429 = param4;
         this.count42 = param5;
         this.count43 = param6;
         this.items1 = param7;
         this.colors = ColorModel._kl14169(param8,param9);
         this.items3 = [param10,param11,param12,param13];
         this.items4 = [param14,param15,param16];
         this.items5 = [UtilsUtils.splitInt(param17,","),UtilsUtils.splitInt(param18,","),UtilsUtils.splitInt(param19,",")];
         this.items6 = [param20,param21,param22];
         this.count46 = param23;
         this.items7 = param24;
         this.items8 = param29;
         this.isEnabled = param25;
         this._xu9865 = null;
         this._nk15832 = null;
         this.count47 = param26;
         this.isEnabled1 = param27;
         this.isEnabled2 = param28;
         this.member = param30;
         this.isEnabled3 = param31;
         this.isEnabled4 = param32;
         if(param23 == count39)
         {
            this.count48 = SceneModel.count3;
         }
         else
         {
            this.count48 = SceneModel.count;
         }
         this._ky6447 = this._hf10429;
         if(this._kv11464())
         {
            this.items6 = [1000,1000,1000];
         }
      }
      
      public static function _iw2544(param1:String) : int
      {
         switch(param1)
         {
            case "tam_n":
               return count1;
            case "tam_b":
               return count2;
            case "tam_s":
               return count3;
            default:
               return count;
         }
      }
      
      public static function getString(param1:int) : String
      {
         switch(param1)
         {
            case count1:
               return "tam_n";
            case count2:
               return "tam_b";
            case count3:
               return "tam_s";
            default:
               return "tam_n";
         }
      }
      
      public function get colors() : Array
      {
         return this.items2;
      }
      
      public function set colors(param1:Array) : void
      {
         this.items2 = param1;
      }
      
      public function get _nk15832() : Bitmap
      {
         var count2:Bitmap = null;
         var count:MovieClip = null;
         var count3:Number = NaN;
         if(this._su5362)
         {
            if((ServiceLocator.get(ResourceManagementController) as ResourceManagementController).hasPermission(this.textString17))
            {
               if((ServiceLocator.get(ResourceManagementController) as ResourceManagementController).initialize(this.textString17,"AssetIcon"))
               {
                  count2 = (ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._at9587(this.textString17,"AssetIcon");
               }
               else
               {
                  count = (ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._bn15619(this.textString17,"AssetObject");
                  count3 = 1;
                  if(count.width > count.height && count.width > 65)
                  {
                     count.width = 65;
                     count3 = count.scaleX;
                  }
                  else if(count.height > 65)
                  {
                     count.height = 65;
                     count3 = count.scaleY;
                  }
                  var _temp_2:* = count;
                  count.scaleY = 1;
                  _temp_2.scaleX = 1;
                  StringUtils.show1(count.mcObject.mcObjectRef,this.colors);
                  count2 = StringUtils.render2(count,count3);
                  count2.smoothing = true;
               }
               return count2;
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
            if((ServiceLocator.get(ResourceManagementController) as ResourceManagementController).hasPermission(this.textString17))
            {
               return (ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._bn15619(this.textString17,"AssetObject");
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
         return this.isEnabled4;
      }
      
      public function get textString17() : String
      {
         return this._hf10429 + ".swf";
      }
      
      public function get _hf10429() : String
      {
         return this.textString1;
      }
      
      public function set _hf10429(param1:String) : void
      {
         this.textString1 = param1;
      }
      
      public function get _sb8254() : int
      {
         return this.count44 != -1 ? this.count44 : this.count42;
      }
      
      public function get _fi8088() : int
      {
         return this.count45 != -1 ? this.count45 : this.count43;
      }
      
      public function get _ob13927() : Boolean
      {
         return this.count44 != -1 || this.count45 != -1;
      }
      
      public function get _ky6447() : String
      {
         return this.textString2;
      }
      
      public function set _ky6447(param1:String) : void
      {
         this.textString2 = "dswmedia/objetos/catalog/small/" + param1 + "Catalog.png";
      }
      
      public function _kb7753(param1:int) : Boolean
      {
         if(this.items1.indexOf(param1) >= 0)
         {
            return true;
         }
         return false;
      }
      
      public function _ph8835() : Boolean
      {
         return this.count47 != count41;
      }
      
      public function _kv11464() : Boolean
      {
         if(items.indexOf(this.count46) >= 0)
         {
            return true;
         }
         return false;
      }
      
      public function _yc2987() : void
      {
         ThunderboltModel.info("Object Category Dump",{
            "ID":this.id,
            "member_name":this.textString,
            "cast_name":this._hf10429,
            "_hs9331":this.name,
            "_uf1803":this.description,
            "price":this.count42,
            "codigo_categoria":this.items1,
            "_iy10918":this.colors,
            "colores_server":ColorModel._gl15701(this.colors),
            "nombre_partes":this.items3,
            "sizes":this.items4,
            "array_ocupa":this.items5,
            "loc_z":this.items6,
            "type_obj":this.count46,
            "cod_ubicar":this.items7,
            "is_active":this.isEnabled,
            "type_rare":this.count47,
            "is_layable":this.isEnabled1,
            "is_exchangeable":this.isEnabled2,
            "cod_ubicar":this.items8,
            "is_flipable":this.isEnabled3
         });
      }
   }
}

