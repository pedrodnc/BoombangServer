package src.allData.sceneObjects.dataObjects
{
   import flash.display.*;
   import src.allData.catObjects.*;
   import src.allData.sceneObjects.loadObject.*;
   import src.logs.*;
   import src.modules.privados._ts2991;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.objects.*;
   import src.utils.*;
   
   public class _px10602 extends _mx198
   {
      
      protected static const _qn8919:String = "mcColor";
      
      private static const _hi15889:Number = 34;
      
      public var _vo2523:Number = 34;
      
      public var _hw14129:int;
      
      public var _iy10701:int;
      
      public var _vw12711:int;
      
      private var _tu6282:Number;
      
      private var _color:Array;
      
      private var _to14127:Boolean = false;
      
      private var _gb11451:Boolean;
      
      protected var _pk3182:MovieClip;
      
      public var _uf1803:String;
      
      public var _ub10189:Boolean;
      
      private var _we10351:Boolean;
      
      public function _px10602(param1:int, param2:int, param3:int, param4:int, param5:Array, param6:_uq7753, param7:String)
      {
         super(param2,param6);
         this._hw14129 = param1;
         this._iy10701 = param3;
         this._vw12711 = param4;
         this.color = param5;
         this.graphics = new MovieClip();
         this._ub10189 = false;
         this._we10351 = false;
         this._uf1803 = param7;
      }
      
      public function get _ts12318() : Number
      {
         return this._tu6282;
      }
      
      public function set _ts12318(param1:Number) : void
      {
         this._tu6282 = param1;
         if(0 < this._tu6282)
         {
            this._vo2523 = _hi15889 * this._tu6282;
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
         var _loc1_:Number = Number(_sl11700._cg6545[this._vw12711]);
         if(this._ls11954(_loc1_ * this._tu6282) == false)
         {
            _qn13596.getInstance()._kp3815(new _sy12041(_qn13596._dj10628,"InstanciedObject.refreshGraphics","idObj = " + _rm6352 + " name = " + _sl11700._hd7139));
            return;
         }
      }
      
      public function _fj8746() : void
      {
         if(_sl11700._dv13852 != _uq7753._km4276)
         {
            this.graphics.locz = _sl11700._ja12821[this._vw12711] * this._tu6282;
         }
      }
      
      public function _no8983() : void
      {
         _xv14798.cleanChildsMovieclip(this._pk3182);
      }
      
      private function _ls11954(param1:Number) : Boolean
      {
         var _loc2_:MovieClip = null;
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         switch(_sl11700._dv13852)
         {
            case _uq7753._wy6091:
               this._no8983();
               _loc3_ = new MovieClip();
               _loc4_ = new MovieClip();
               _loc4_.addChild(this._rd1942(param1));
               _loc3_.addChild(_loc4_);
               this.graphics.addChild(_loc3_);
               return true;
            default:
               if(this._we10351 == false)
               {
                  this._no8983();
                  _loc2_ = this._qx14888(param1);
                  if(_sl11700._su5362)
                  {
                     _loc2_ = _fk7766._wn4796(_sl11700._hf10429,_loc2_,_sl11700.id);
                  }
                  if(_loc2_ is BaseObjects)
                  {
                     BaseObjects(_loc2_)._BaseObjectsInit();
                     BaseObjects(_loc2_)._BaseObjectsSetFlipped(this._iy10701);
                  }
                  this._ra849(_loc2_);
                  this._we10351 = true;
                  this._pk3182.addChild(_loc2_);
               }
               else
               {
                  _loc2_ = MovieClip(this._pk3182.getChildAt(0));
                  _loc5_ = MovieClip(_loc2_.getChildByName(_ft6295._lk8138));
                  if(!_loc5_)
                  {
                     _loc2_ = MovieClip(this.graphics.getChildAt(1));
                     _loc5_ = MovieClip(_loc2_.getChildByName(_ft6295._lk8138));
                  }
                  _loc5_.scaleX = param1;
                  _loc5_.scaleY = param1;
                  this._ra849(_loc2_);
               }
               return true;
         }
      }
      
      public function destroy() : void
      {
         if(this._we10351)
         {
            if(this._rn2919())
            {
               this._gn15451()._BaseObjectsDestroy();
            }
            this._we10351 = false;
         }
         this._no8983();
      }
      
      public function loop() : void
      {
         var _loc1_:BaseObjects = null;
         if(this._rn2919())
         {
            _loc1_ = this._gn15451();
            if(_loc1_ != null)
            {
               try
               {
                  _loc1_._BaseObjectsLoop();
               }
               catch(error:Error)
               {
               }
            }
         }
      }
      
      public function _ca5780(param1:Boolean, param2:Array, param3:XML, param4:_ts2991, param5:_hl15578) : void
      {
         var _loc6_:BaseObjects = null;
         if(this._rn2919())
         {
            _loc6_ = this._gn15451();
            if(_loc6_ != null)
            {
               _loc6_._BaseObjectsSetIdPose(this._hw14129);
               _loc6_._BaseObjectsSetOwner(param1);
               _loc6_._BaseObjectsSetXMLTexts(param3);
               _loc6_._BaseObjectsSetProps(param2);
               _loc6_._BaseObjectsSetIntegracionObjects(param4);
               _loc6_._BaseObjectsSetPropiedadObjetc(param5._uf1803);
               _loc6_._BaseObjectsSetNombreObject(param5._sl11700.name);
               _loc6_._BaseObjectsSetFlipObject(param5._iy10701);
               this._ub10189 = true;
            }
         }
      }
      
      public function _rn2919() : Boolean
      {
         var _loc1_:DisplayObject = null;
         if(this._pk3182 != null && this._pk3182.numChildren == 1)
         {
            _loc1_ = this._pk3182.getChildAt(0);
            if(_loc1_ is BaseObjects)
            {
               return true;
            }
         }
         return false;
      }
      
      public function _gn15451() : BaseObjects
      {
         var _loc1_:DisplayObject = null;
         if(this._pk3182 != null && this._pk3182.numChildren == 1)
         {
            _loc1_ = this._pk3182.getChildAt(0);
            if(_loc1_ is BaseObjects)
            {
               return BaseObjects(_loc1_);
            }
         }
         return null;
      }
      
      public function _xn1165() : Boolean
      {
         var _loc1_:DisplayObject = null;
         if(this._pk3182 != null && this._pk3182.numChildren == 1)
         {
            _loc1_ = this._pk3182.getChildAt(0);
            if(_loc1_ is BaseObjectsAnimado)
            {
               return true;
            }
         }
         return false;
      }
      
      public function _bl15112() : BaseObjectsAnimado
      {
         var _loc1_:DisplayObject = null;
         if(this.graphics != null && this.graphics.numChildren == 1)
         {
            _loc1_ = this.graphics.getChildAt(0);
            if(_loc1_ is BaseObjectsAnimado)
            {
               return BaseObjectsAnimado(_loc1_);
            }
         }
         return null;
      }
      
      public function _id8009() : Boolean
      {
         var _loc1_:DisplayObject = null;
         if(this.graphics != null && this.graphics.numChildren == 1)
         {
            _loc1_ = this.graphics.getChildAt(0);
            if(_loc1_ is BaseObjectsEnter)
            {
               return true;
            }
         }
         return false;
      }
      
      public function _al11479() : BaseObjectsEnter
      {
         var _loc1_:DisplayObject = null;
         if(this.graphics != null && this.graphics.numChildren == 1)
         {
            _loc1_ = this.graphics.getChildAt(0);
            if(_loc1_ is BaseObjectsEnter)
            {
               return BaseObjectsEnter(_loc1_);
            }
         }
         return null;
      }
      
      public function _uw12896() : Boolean
      {
         var _loc1_:DisplayObject = null;
         if(this._pk3182 != null && this._pk3182.numChildren == 1)
         {
            _loc1_ = this._pk3182.getChildAt(0);
            if(_loc1_ is BaseObjectsMascota)
            {
               return true;
            }
         }
         return false;
      }
      
      public function _hn6442() : BaseObjectsMascota
      {
         var _loc1_:DisplayObject = null;
         if(this.graphics != null && this.graphics.numChildren == 1)
         {
            _loc1_ = this.graphics.getChildAt(0);
            if(_loc1_ is BaseObjectsMascota)
            {
               return BaseObjectsMascota(_loc1_);
            }
         }
         return null;
      }
      
      public function _ka6441() : Boolean
      {
         var _loc1_:DisplayObject = null;
         if(this.graphics != null && this.graphics.numChildren == 1)
         {
            _loc1_ = this.graphics.getChildAt(0);
            if(_loc1_ is BaseObjectsCajitaSorpresa)
            {
               return true;
            }
         }
         return false;
      }
      
      public function _ws8542() : BaseObjectsCajitaSorpresa
      {
         var _loc1_:DisplayObject = null;
         if(this.graphics != null && this.graphics.numChildren == 1)
         {
            _loc1_ = this.graphics.getChildAt(0);
            if(_loc1_ is BaseObjectsCajitaSorpresa)
            {
               return BaseObjectsCajitaSorpresa(_loc1_);
            }
         }
         return null;
      }
      
      public function _rd1942(param1:Number) : Bitmap
      {
         var _loc2_:MovieClip = null;
         var _loc3_:MovieClip = null;
         if(_sl11700._kc6805 == null)
         {
            return null;
         }
         if(_sl11700._su5362)
         {
            _loc2_ = (_lh7543.get(_hc11274) as _hc11274)._bn15619(_sl11700._le1402,"AssetObject");
            this._ra849(_loc2_);
            return _xv14798._oe11080(_loc2_,param1);
         }
         _loc3_ = MovieClip(_xv14798._dx10334(_sl11700._kc6805));
         this._ra849(_loc3_);
         return _xv14798._oe11080(_loc3_,param1);
      }
      
      private function _qx14888(param1:Number) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(_sl11700._kc6805 == null)
         {
            return null;
         }
         if(_sl11700._su5362)
         {
            _loc2_ = (_lh7543.get(_hc11274) as _hc11274)._bn15619(_sl11700._le1402,"AssetObject");
            _loc2_.mcObject.x = 0;
            _loc2_.mcObject.y = 0;
            _loc2_.mcObject.scaleX = param1;
            _loc2_.mcObject.scaleY = param1;
            return _loc2_;
         }
         _loc3_ = MovieClip(_xv14798._dx10334(_sl11700._kc6805));
         _loc4_ = MovieClip(_xv14798._dx10334(MovieClip(_sl11700._kc6805).getChildByName(_ft6295._lk8138)));
         _loc3_.removeChild(_loc3_.getChildByName(_ft6295._lk8138));
         _loc3_.addChild(_loc4_);
         _loc3_.mcObject = _loc4_;
         _loc5_ = MovieClip(_loc3_.getChildByName(_ft6295._lk8138));
         _loc5_.x = 0;
         _loc5_.y = 0;
         _loc5_.scaleX = param1;
         _loc5_.scaleY = param1;
         return _loc3_;
      }
      
      public function _vd13151(param1:int) : Bitmap
      {
         if(_sl11700._kc6805 == null)
         {
            return null;
         }
         var _loc2_:MovieClip = MovieClip(_xv14798._dx10334(_sl11700._kc6805));
         this._ra849(_loc2_);
         return this._xm1056(_loc2_,param1);
      }
      
      public function _ah1673(param1:MovieClip) : Bitmap
      {
         _xv14798._xw3757(param1,this.color);
         return _xv14798._wl6502(param1);
      }
      
      private function _xm1056(param1:MovieClip, param2:int) : Bitmap
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = 1;
         if(param1.width != 0 && param1.height != 0)
         {
            _loc3_ = param2 / param1.width;
            _loc4_ = param2 / param1.height;
            _loc5_ = Math.min(_loc4_,_loc3_);
         }
         if(_loc5_ > 1)
         {
            _loc5_ = 1;
         }
         var _loc6_:Bitmap = _xv14798._oe11080(param1,_loc5_);
         _loc6_.x = Math.round(-_loc6_.width / 2);
         _loc6_.y = Math.round(-_loc6_.height / 2);
         return _loc6_;
      }
      
      private function _ra849(param1:MovieClip) : void
      {
         var _loc2_:MovieClip = MovieClip(param1.getChildByName(_ft6295._lk8138));
         var _loc3_:MovieClip = MovieClip(_loc2_.getChildByName(_ft6295._fb189));
         _xv14798._xw3757(_loc3_,this.color);
      }
      
      public function _pc2090(param1:int) : void
      {
         this._no8983();
         var _loc2_:Bitmap = this._vd13151(param1);
         if(_loc2_ != null)
         {
            this.graphics.addChild(_loc2_);
            return;
         }
         _qn13596.getInstance()._kp3815(new _sy12041(_qn13596._dj10628,"InstanciedObject.refreshGraphicsMaxSize","idObj = " + _rm6352 + " name = " + _sl11700._hd7139));
      }
   }
}

