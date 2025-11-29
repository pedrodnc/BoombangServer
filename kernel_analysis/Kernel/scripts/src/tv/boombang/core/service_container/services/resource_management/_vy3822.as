package src.tv.boombang.core.service_container.services.resource_management
{
   import flash.display.*;
   import flash.events.*;
   import flash.media.*;
   import flash.utils.*;
   import src.org.osflash.thunderbolt.*;
   import src.tv.boombang.commons.loadables.*;
   import src.tv.boombang.core.errors.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.Resources.*;
   
   public class _vy3822 extends EventDispatcher implements _wk782
   {
      
      private var _su10810:Dictionary;
      
      protected var _ku15912:Dictionary;
      
      private var _go14547:Array;
      
      private var _vb4147:Boolean;
      
      public function _vy3822()
      {
         super();
      }
      
      public function start(param1:Object) : Boolean
      {
         if(param1 == null || !param1.hasOwnProperty("filelist") || !(param1["filelist"] is String))
         {
            return false;
         }
         this._ku15912 = new Dictionary();
         this._su10810 = new Dictionary();
         this._go14547 = new Array();
         this._vb4147 = false;
         this._wb11204(param1["filelist"]);
         dispatchEvent(new _vw13249(this,_vw13249._fq14658));
         return true;
      }
      
      public function stop() : Boolean
      {
         var _loc1_:Object = null;
         if(this._ku15912 != null)
         {
            for(_loc1_ in this._ku15912)
            {
               delete this._ku15912[_loc1_];
            }
            this._ku15912 = null;
         }
         this._go14547 = null;
         dispatchEvent(new _vw13249(this,_vw13249._ij6606));
         return true;
      }
      
      public function get _kn5152() : Boolean
      {
         return this._ku15912 != null;
      }
      
      public function _lg3799(param1:String) : void
      {
         (this._ku15912[param1] as _gg3875).destroy();
         delete this._ku15912[param1];
      }
      
      public function _mv15948(param1:Function) : void
      {
         addEventListener(_vw13249._fq14658,param1);
      }
      
      public function _xp10276(param1:Function) : void
      {
         removeEventListener(_vw13249._ij6606,param1);
      }
      
      public function _dc2466(param1:String, param2:Boolean = false) : String
      {
         var _loc3_:int = int(param1.lastIndexOf("/"));
         var _loc4_:_hh10181 = new _hh10181();
         _loc4_._kg3936 = param1.slice(0,_loc3_);
         _loc4_._fa5988 = param1.slice(_loc3_ + 1);
         _loc4_.type = _qs2112._sj14912(_loc4_.extension);
         if(param2)
         {
            _loc4_._vx10703 = "rnd-" + Math.round(Math.random() * 100000);
         }
         this._xo9753(_loc4_);
         return _loc4_.id;
      }
      
      public function _vv13029(param1:Array, param2:Function) : void
      {
         var _loc5_:String = null;
         var _loc6_:RegExp = null;
         var _loc7_:Array = new Array();
         for each(_loc5_ in param1)
         {
            _loc6_ = /(\t|\n|\r)/gi;
            _loc5_ = _loc5_.replace(_loc6_,"");
            if(!this._ku15912.hasOwnProperty(_loc5_))
            {
               var _loc4_:_gg3875 = this._lt13919(_loc5_);
               if(_loc4_ == null)
               {
                  throw new _bc6516("Resource with id " + _loc5_ + " not found. Check that the id is correct and that the filelist is updated.");
               }
               _loc7_.push(null);
            }
         }
         new _ay13187(_loc7_,param2);
         if(_loc7_.length > 0)
         {
            this._go14547 = this._go14547.concat(_loc7_);
            if(!this._vb4147)
            {
               this.flush();
            }
         }
      }
      
      public function _dy7956(param1:String) : Boolean
      {
         return this._ku15912.hasOwnProperty(param1);
      }
      
      public function _oa15287(param1:String, param2:String) : Boolean
      {
         if(Boolean(this._ku15912.hasOwnProperty(param1)) && this._ku15912[param1] is _xo11546)
         {
            return (this._ku15912[param1] as _xo11546).hasDefinition(param2);
         }
         return false;
      }
      
      public function _mi12184(param1:String) : String
      {
         if(this._su10810[param1] != null)
         {
            return (this._su10810[param1] as _hh10181)._lv11027;
         }
         throw new _bc6516("Resource with id " + param1 + " not found. Check that the id is correct and that the filelist is updated.");
      }
      
      public function _mk1240(param1:String) : int
      {
         if(this._su10810[param1] != null)
         {
            return (this._su10810[param1] as _hh10181).size;
         }
         throw new _bc6516("Resource with id " + param1 + " not found. Check that the id is correct and that the filelist is updated.");
      }
      
      public function _eb710(param1:String, param2:Boolean = false, param3:Boolean = false) : String
      {
         var _loc4_:String = null;
         if(Boolean(this._ku15912.hasOwnProperty(param1)) && this._ku15912[param1] is _pk8106)
         {
            if(!param3)
            {
               _loc4_ = (this._ku15912[param1] as _pk8106)._mg5102();
            }
            else
            {
               _loc4_ = (this._ku15912[param1] as _pk8106)._fp2025();
            }
            if(param2)
            {
               this._lg3799(param1);
            }
            return _loc4_;
         }
         return null;
      }
      
      public function _ix8228(param1:String, param2:String, param3:Boolean = false) : Sound
      {
         var _loc4_:Sound = null;
         if(Boolean(this._ku15912.hasOwnProperty(param1)) && this._ku15912[param1] is _xo11546)
         {
            _loc4_ = (this._ku15912[param1] as _xo11546)._ix8228(param2) as Sound;
            if(param3)
            {
               this._lg3799(param1);
            }
            return _loc4_;
         }
         return null;
      }
      
      public function _bn15619(param1:String, param2:String, param3:Boolean = false) : MovieClip
      {
         var _loc4_:MovieClip = null;
         if(Boolean(this._ku15912.hasOwnProperty(param1)) && this._ku15912[param1] is _xo11546)
         {
            _loc4_ = (this._ku15912[param1] as _xo11546)._bn15619(param2) as MovieClip;
            if(param3)
            {
               this._lg3799(param1);
            }
            return _loc4_;
         }
         return null;
      }
      
      public function _at9587(param1:String, param2:String, param3:Boolean = false) : Bitmap
      {
         var _loc4_:Bitmap = null;
         if(Boolean(this._ku15912.hasOwnProperty(param1)) && this._ku15912[param1] is _xo11546)
         {
            _loc4_ = (this._ku15912[param1] as _xo11546)._qy6605(param2);
            if(param3)
            {
               this._lg3799(param1);
            }
            return _loc4_;
         }
         return null;
      }
      
      public function _pf13231(param1:String, param2:Boolean = false) : Bitmap
      {
         var _loc3_:Bitmap = null;
         if(Boolean(this._ku15912.hasOwnProperty(param1)) && this._ku15912[param1] is _ku8086)
         {
            _loc3_ = (this._ku15912[param1] as _ku8086)._yu5186();
            if(param2)
            {
               this._lg3799(param1);
            }
            return _loc3_;
         }
         return null;
      }
      
      public function _if2642(param1:String, param2:Boolean = false) : MovieClip
      {
         var _loc3_:MovieClip = null;
         if(Boolean(this._ku15912.hasOwnProperty(param1)) && this._ku15912[param1] is _xo11546)
         {
            _loc3_ = (this._ku15912[param1] as _xo11546)._dr16162() as MovieClip;
            if(param2)
            {
               this._lg3799(param1);
            }
            return _loc3_;
         }
         return null;
      }
      
      private function _lt13919(param1:String) : _gg3875
      {
         var _loc2_:_hh10181 = null;
         var _loc3_:_gg3875 = null;
         _loc2_ = this._su10810[param1];
         if(_loc2_ != null)
         {
            switch(_loc2_.type)
            {
               case _qs2112._au4855:
                  _loc3_ = new _xo11546(_loc2_._lv11027,param1);
                  break;
               case _qs2112.TEXT:
                  _loc3_ = new _pk8106(_loc2_._lv11027,param1);
                  break;
               case _qs2112._vl3175:
                  _loc3_ = new _ku8086(_loc2_._lv11027,param1);
            }
         }
         return _loc3_;
      }
      
      private function flush() : void
      {
         var _loc1_:_gg3875 = null;
         if(this._go14547.length > 0)
         {
            this._vb4147 = true;
            _loc1_ = this._go14547.shift() as _gg3875;
            _loc1_.addEventListener(Event.COMPLETE,this._st11087,false,1,true);
            _loc1_.load();
         }
         else
         {
            this._vb4147 = false;
         }
      }
      
      protected function _st11087(param1:Event) : void
      {
         var _loc2_:_gg3875 = param1.target as _gg3875;
         this._ku15912[_loc2_.id] = _loc2_;
         this.flush();
      }
      
      private function _wb11204(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:_hh10181 = null;
         var _loc4_:String = null;
         var _loc5_:Array = param1.split(";");
         for each(_loc4_ in _loc5_)
         {
            _loc4_ = _loc4_.replace("\n","");
            _loc4_ = _loc4_.replace("\r","");
            _loc2_ = _loc4_.split(",");
            if(_loc2_.length >= 4)
            {
               _loc3_ = new _hh10181();
               _loc3_._kg3936 = _loc2_[0];
               _loc3_._fa5988 = _loc2_[1];
               _loc3_.type = _qs2112._sj14912(_loc3_.extension);
               _loc3_.size = _loc2_[2];
               _loc3_._vx10703 = _loc2_[3];
               this._xo9753(_loc3_);
            }
         }
      }
      
      private function _xo9753(param1:_hh10181) : void
      {
         if(this._su10810.hasOwnProperty(param1.id))
         {
            _mr16168.warn("Adding duplicated filelist entry with id: " + param1.id,param1);
         }
         this._su10810[param1.id] = param1;
      }
   }
}

