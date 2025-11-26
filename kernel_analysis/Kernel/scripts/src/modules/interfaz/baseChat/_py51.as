package src.modules.interfaz.baseChat
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.text.*;
   import src.org.osflash.thunderbolt.*;
   import src.utils.*;
   
   public class _py51
   {
      
      private static const _rj11281:String = "mcBotonFrase";
      
      private static const _eh9262:String = "mcBotonNodoFrase";
      
      private static const _mb15032:String = "tfFrase";
      
      private static const _jf9689:String = "mcParteEsquina";
      
      private static const _db9571:String = "mcParteBorde";
      
      private static const _sk3445:String = "mcParteMedio";
      
      private static const _mq9169:int = 10;
      
      private static const _ls2346:int = 10;
      
      private static const _sa10756:int = 25;
      
      private static const _yg8197:String = "normal";
      
      private static const _sg6807:String = "rollover";
      
      private var _xt236:Array;
      
      private var _tp2722:Array;
      
      private var _cm2696:Array;
      
      private var _xm267:MovieClip;
      
      private var _oi13754:MovieClip;
      
      private var _fj4277:MovieClip;
      
      private var _fb32:_da11746;
      
      private var _ae5760:MovieClip;
      
      public function _py51(param1:MovieClip)
      {
         super();
         param1.visible = false;
         this._xm267 = param1[_sk3445];
         this._tp2722 = [param1[_jf9689 + 1],param1[_jf9689 + 2],param1[_jf9689 + 3],param1[_jf9689 + 4]];
         this._cm2696 = [param1[_db9571 + 1],param1[_db9571 + 2],param1[_db9571 + 3],param1[_db9571 + 4]];
         this._oi13754 = param1[_rj11281];
         this._fj4277 = param1[_eh9262];
         this._ae5760 = new MovieClip();
         param1.parent.addChild(this._ae5760);
         this._bf2949();
         this._xt236 = new Array();
      }
      
      public function destroy() : void
      {
         this._xq11204();
         this._ae5760.parent.removeChild(this._ae5760);
         this._ae5760 = null;
      }
      
      private function _bf2949() : void
      {
         this._fb32 = new _da11746("Raiz",[new _da11746("Frase 1"),new _da11746("Frase 2"),new _da11746("Otras Frases",[new _da11746("Otra Frase 1"),new _da11746("Otra Frase 2"),new _da11746("Otra Frase 3")]),new _da11746("Frase 4"),new _da11746("Frase 5"),new _da11746("Otras Frases 2",[new _da11746("Otra Frase A"),new _da11746("Otra Frase B"),new _da11746("Otra Frase C")])]);
      }
      
      public function _mi3525(param1:Point) : void
      {
         if(this._xt236.length == 0)
         {
            this._ft3263(this._fb32,0);
            this._ae5760.addChild(this._xt236[0]);
            var _loc2_:Point = this._ae5760.globalToLocal(param1);
            this._xt236[0].visible = true;
            this._xt236[0].x = null.x;
            this._xt236[0].y = null.y - this._xt236[0].height;
         }
      }
      
      private function _ft3263(param1:_da11746, param2:int) : MovieClip
      {
         var _loc3_:_da11746 = null;
         var _loc4_:MovieClip = null;
         var _loc5_:int = 0;
         this._xq11204(param2);
         var _loc6_:MovieClip = new MovieClip();
         var _loc7_:MovieClip = _xv14798._dx10334(this._tp2722[0]);
         var _loc8_:MovieClip = _xv14798._dx10334(this._tp2722[1]);
         var _loc9_:MovieClip = _xv14798._dx10334(this._tp2722[2]);
         var _loc10_:MovieClip = _xv14798._dx10334(this._tp2722[3]);
         var _loc11_:MovieClip = _xv14798._dx10334(this._cm2696[0]);
         var _loc12_:MovieClip = _xv14798._dx10334(this._cm2696[1]);
         var _loc13_:MovieClip = _xv14798._dx10334(this._cm2696[2]);
         var _loc14_:MovieClip = _xv14798._dx10334(this._cm2696[3]);
         var _loc15_:MovieClip = _xv14798._so3313(this._xm267);
         var _loc16_:int = _mq9169 + this._oi13754.width + _mq9169;
         var _loc17_:int = _ls2346 + param1._rw3632.length * _sa10756 + _ls2346;
         _loc7_.x = 0;
         _loc7_.y = 0;
         _loc8_.x = _loc16_;
         _loc8_.y = 0;
         _loc9_.x = _loc16_;
         _loc9_.y = _loc17_;
         _loc10_.x = 0;
         _loc10_.y = _loc17_;
         _loc11_.x = _loc16_ / 2;
         _loc11_.y = 0;
         _loc11_.width = _loc16_;
         _loc12_.x = _loc16_;
         _loc12_.y = _loc17_ / 2;
         _loc12_.scaleX = _loc17_ / _loc12_.height;
         _loc13_.x = _loc16_ / 2;
         _loc13_.y = _loc17_;
         _loc13_.width = _loc16_;
         _loc14_.x = 0;
         _loc14_.y = _loc17_ / 2;
         _loc14_.scaleX = _loc17_ / _loc14_.height;
         _loc15_.x = 5;
         _loc15_.y = 5;
         _loc15_.width = _loc16_ - 10;
         _loc15_.height = _loc17_ - 10;
         _loc6_.addChild(_loc15_);
         _loc6_.addChild(_loc11_);
         _loc6_.addChild(_loc12_);
         _loc6_.addChild(_loc13_);
         _loc6_.addChild(_loc14_);
         _loc6_.addChild(_loc7_);
         _loc6_.addChild(_loc8_);
         _loc6_.addChild(_loc9_);
         _loc6_.addChild(_loc10_);
         var _loc18_:int = int(_ls2346);
         for each(_loc3_ in param1._rw3632)
         {
            if(_loc3_._rw3632 == null)
            {
               _loc4_ = _xv14798._dx10334(this._oi13754);
            }
            else
            {
               _loc4_ = _xv14798._dx10334(this._fj4277);
            }
            _yq8362._xl9503(_loc4_[_mb15032],_loc3_.texto);
            TextField(_loc4_[_mb15032]).mouseEnabled = false;
            _loc4_.gotoAndStop(_yg8197);
            TextField(_loc4_[_mb15032]).textColor = 16777215;
            _loc4_.addEventListener(MouseEvent.ROLL_OVER,this._gu10857);
            _loc4_.addEventListener(MouseEvent.ROLL_OUT,this._ro5774);
            _loc4_.addEventListener(MouseEvent.CLICK,this._hy11541);
            _loc4_.x = _mq9169;
            _loc4_.y = _loc18_;
            _loc4_.name = _rj11281 + _loc5_;
            _loc18_ += _sa10756;
            _loc5_++;
            _loc6_.addChild(_loc4_);
         }
         _loc6_._fb32 = param1;
         _loc6_.profundidad = param2;
         this._xt236.push(_loc6_);
         return _loc6_;
      }
      
      public function _xq11204(param1:int = 0) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc6_:DisplayObject = null;
         while(this._xt236.length - param1 > 0)
         {
            _loc2_ = this._xt236[param1];
            _loc2_.visible = false;
            _loc3_ = new Array();
            _loc4_ = 0;
            while(_loc4_ < _loc2_.numChildren)
            {
               _loc6_ = _loc2_.getChildAt(_loc4_);
               if(_loc6_.name.indexOf(_rj11281) == 0)
               {
                  _loc3_.push(_loc6_);
               }
               _loc4_++;
            }
            for each(_loc5_ in _loc3_)
            {
               _loc5_.removeEventListener(MouseEvent.ROLL_OVER,this._gu10857);
               _loc5_.removeEventListener(MouseEvent.ROLL_OUT,this._ro5774);
               _loc5_.removeEventListener(MouseEvent.CLICK,this._hy11541);
            }
            this._ae5760.removeChild(_loc2_);
            this._xt236.splice(param1,1);
         }
      }
      
      private function _gu10857(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(_sg6807);
         TextField(param1.target[_mb15032]).textColor = 12229462;
      }
      
      private function _ro5774(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(_yg8197);
         TextField(param1.target[_mb15032]).textColor = 16777215;
      }
      
      private function _hy11541(param1:MouseEvent) : void
      {
         if(param1.target is MovieClip)
         {
            var _loc2_:MovieClip = MovieClip(param1.target);
            var _loc7_:int = int(null.name.substr(_rj11281.length));
            var _loc3_:_da11746 = MovieClip(null.parent)._fb32;
            var _loc4_:int = int(MovieClip(null.parent)._ov11704);
            if(_da11746(null._rw3632[-1])._rw3632 == null)
            {
               _mr16168.info("Frase seleccionada: " + -1 + " en el arbol: " + null.texto);
            }
            else
            {
               var _loc5_:MovieClip = this._ft3263(null._rw3632[-1],0 + 1);
               var _loc6_:Point = null.parent.localToGlobal(new Point(null.x + null.width + 10,null.y - _ls2346));
               _loc6_ = this._ae5760.globalToLocal(null);
               if(_loc6_.y + null.height > this._xt236[0].y + this._xt236[0].height)
               {
                  null.y = this._xt236[0].y + this._xt236[0].height - null.height;
               }
               null.x = null.x;
               null.y = null.y;
               this._ae5760.addChild(null);
               _loc7_ = -1;
            }
         }
      }
   }
}

class _da11746
{
   
   public var _rw3632:Array;
   
   public var texto:String;
   
   public function _da11746(param1:String, param2:Array = null)
   {
      super();
      this.texto = param1;
      this._rw3632 = param2;
   }
}
