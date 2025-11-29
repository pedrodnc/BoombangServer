package src.modules.interfaz.intercambios.fichas
{
   import flash.display.MovieClip;
   import src.allData.sceneObjects.dataObjects.*;
   import src.modules.interfaz.intercambios._to7430;
   import src.modules.interfaz.intercambios.boobles.*;
   import src.person.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   import src.utils.fichas._ox15379;
   import src.utils.fichas._wq1414;
   
   public class _qi6762 extends _wq1414
   {
      
      private static const _fc9617:String = "mcTooltip";
      
      private static const _tq9206:String = "mcTooltipValor";
      
      private static const _nt5163:String = "mcTooltipRare";
      
      private static const _hp9156:String = "mcBotonAceptar";
      
      private static const _qo2010:String = "mcBotonCambiar";
      
      private static const _sp4856:String = "mcBotonCancelar";
      
      private static const _wi14285:String = "mcBotonScrollMas";
      
      private static const _bb8496:String = "mcBotonScrollMenos";
      
      private static const _by13686:String = "tfCantidadObjetos";
      
      private static const _gm9608:String = "tfName";
      
      private static const _bf957:String = "mcCaraKeko";
      
      protected static const _rj8907:String = "mcFondo";
      
      private static const _do11808:String = "mcObjeto";
      
      private static const _uo15281:int = 3;
      
      protected var _gd5603:_gx10790;
      
      protected var _vx11551:_gx10790;
      
      protected var _wi14966:_gx10790;
      
      protected var _ip5122:_kg183;
      
      protected var _as14930:_kg183;
      
      protected var _iw10440:Array;
      
      protected var _af7534:Array;
      
      protected var offset:int;
      
      protected var _im12039:_to7430;
      
      protected var _dl3635:MovieClip;
      
      protected var _kn15197:MovieClip;
      
      protected var _ra4999:MovieClip;
      
      protected var _rj10285:MovieClip;
      
      protected var _mx2207:MovieClip;
      
      public function _qi6762(param1:MovieClip, param2:_ox15379, param3:Function, param4:_to7430, param5:MovieClip)
      {
         super(param1,param2,param3);
         this._im12039 = param4;
         this._dl3635 = param5;
         this._kn15197 = param1[_bf957];
         this._gd5603 = new _gx10790(param1[_hp9156],this._if13516,param4._yn5032);
         this._vx11551 = new _gx10790(param1[_qo2010],this._bb14211,param4._im13843);
         this._wi14966 = new _gx10790(param1[_sp4856],this._oe1126,param4._pe7262);
         this._ip5122 = new _kg183(param1[_wi14285],this._by2486);
         this._as14930 = new _kg183(param1[_bb8496],this._aj2155);
         this._ra4999 = param1[_fc9617];
         this._rj10285 = param1[_tq9206];
         this._mx2207 = param1[_nt5163];
         this._ra4999.visible = false;
         this._rj10285.visible = false;
         this._mx2207.visible = false;
      }
      
      override public function _db5584(param1:int, param2:int) : Boolean
      {
         var _loc3_:Boolean = super._db5584(param1,param2);
         this._iw10440 = new Array();
         this._af7534 = new Array();
         this.offset = 0;
         this._bk31();
         return _loc3_;
      }
      
      override public function _hu12389() : Boolean
      {
         this._rd497();
         return super._hu12389();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._gd5603 != null)
         {
            this._gd5603.destroy();
            this._gd5603 = null;
         }
         if(this._vx11551 != null)
         {
            this._vx11551.destroy();
            this._vx11551 = null;
         }
         if(this._wi14966 != null)
         {
            this._wi14966.destroy();
            this._wi14966 = null;
         }
         if(this._ip5122 != null)
         {
            this._ip5122.destroy();
            this._ip5122 = null;
         }
         if(this._as14930 != null)
         {
            this._as14930.destroy();
            this._as14930 = null;
         }
         this._rd497();
      }
      
      private function _rd497() : void
      {
         var _loc1_:int = 0;
         var _loc2_:_vx12186 = null;
         if(this._af7534 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this._af7534.length)
            {
               _loc2_ = _vx12186(this._af7534[_loc1_]);
               if(_loc2_ != null)
               {
                  _loc2_.destroy();
                  _loc2_ = null;
               }
               _loc1_++;
            }
            this._af7534.length = 0;
         }
      }
      
      protected function _bk31() : void
      {
         var _loc1_:int = 0;
         var _loc2_:MovieClip = null;
         var _loc3_:Boolean = false;
         var _loc4_:_vx12186 = null;
         var _loc5_:_gl6654 = null;
         var _loc6_:int = 0;
         this._rd497();
         this._af7534 = new Array();
         while(_loc6_ < _uo15281)
         {
            _loc1_ = _loc6_ + this.offset;
            _loc2_ = _cw11838[_do11808 + _loc6_];
            _loc3_ = this._iw10440 != null && _loc1_ < this._iw10440.length;
            if(_loc3_)
            {
               _loc5_ = _gl6654(this._iw10440[_loc1_]);
               _loc4_ = new _oy3679(_loc2_,null,_loc5_,this._dl3635,this._ra4999,this._rj10285,this._mx2207,this._im12039);
            }
            else
            {
               _loc4_ = new _rs4615(_loc2_,null,this._im12039._ra14588);
            }
            this._af7534.push(_loc4_);
            _loc6_++;
         }
         this._yh6926();
      }
      
      public function addObject(param1:_gl6654) : void
      {
         var _loc2_:_gl6654 = null;
         if(param1._sl11700._au2864)
         {
            this._iw10440.push(param1);
         }
         else
         {
            _loc2_ = this.getObject(param1._rm6352);
            if(_loc2_ == null)
            {
               this._iw10440.push(param1);
            }
            else
            {
               _loc2_.cant += param1.cant;
            }
         }
         this._bk31();
      }
      
      protected function _if13516() : void
      {
      }
      
      protected function _bb14211() : void
      {
      }
      
      protected function _oe1126() : void
      {
      }
      
      public function _uh12820() : void
      {
         this._gd5603.setState(_gx10790._vx16058);
      }
      
      public function _rg11676() : void
      {
         this._vx11551.setState(_gx10790._vx16058);
      }
      
      public function _gh11749() : void
      {
         this._vx11551._db5584();
      }
      
      public function _ok8651() : void
      {
         this._wi14966._db5584();
         this._wi14966._qx2504(this._im12039._iq3045);
         this._wi14966.setState(_gx10790._ig5666);
      }
      
      public function _ig2699() : void
      {
         this._wi14966._db5584();
         this._wi14966._qx2504(this._im12039.ERROR);
         this._wi14966.setState(_gx10790._ih899);
      }
      
      public function _pg5072() : void
      {
         this._gd5603._db5584();
         this._gd5603._qx2504(this._im12039._ao8380);
         this._gd5603.setState(_gx10790._fw5940);
      }
      
      public function _he4312() : void
      {
         this._vx11551._db5584();
         this._vx11551._qx2504(this._im12039._ao8380);
         this._vx11551.setState(_gx10790._fw5940);
      }
      
      public function _kd11412() : void
      {
         this._gd5603._db5584();
         this._gd5603._qx2504(this._im12039._yn5032);
         this._gd5603.setState(_gx10790._ob15171);
      }
      
      public function _ng13807() : void
      {
         this._vx11551._db5584();
         this._vx11551._qx2504(this._im12039._im13843);
         this._vx11551.setState(_gx10790._ob15171);
      }
      
      public function _yd2370() : void
      {
         this._wi14966._db5584();
         this._wi14966._qx2504(this._im12039._pe7262);
         this._wi14966.setState(_gx10790._ob15171);
      }
      
      public function _wj5070() : int
      {
         if(this._iw10440 != null)
         {
            return this._iw10440.length;
         }
         return 0;
      }
      
      public function _ek14044() : int
      {
         var _loc1_:_gl6654 = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this._iw10440)
         {
            if(_loc1_._sl11700._ph8835())
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function _is6188() : int
      {
         var _loc1_:_gl6654 = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this._iw10440)
         {
            _loc2_ += _loc1_._sl11700._hy3311;
         }
         return _loc2_;
      }
      
      public function getObject(param1:int) : _gl6654
      {
         var _loc2_:_gl6654 = null;
         for each(_loc2_ in this._iw10440)
         {
            if(_loc2_._rm6352 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function _fo13643(param1:_um8624) : void
      {
         _yq8362._xl9503(_cw11838[_gm9608],param1.name);
         var _loc2_:MovieClip = _xr3315._ku11706(param1,"cara_mediana");
         _loc2_.x = -_loc2_.width / 2;
         _loc2_.y = -_loc2_.height / 2;
         _xv14798.cleanChildsMovieclip(this._kn15197);
         this._kn15197.addChild(_loc2_);
      }
      
      private function _yh6926() : void
      {
         _yq8362._xl9503(_cw11838[_by13686],String(this._iw10440.length));
         if(this.offset == 0)
         {
            this._as14930._dy867 = false;
         }
         else
         {
            this._as14930._dy867 = true;
         }
         if(this.offset + _uo15281 >= this._iw10440.length)
         {
            this._ip5122._dy867 = false;
         }
         else
         {
            this._ip5122._dy867 = true;
         }
      }
      
      private function _by2486() : void
      {
         if(this.offset + _uo15281 < this._iw10440.length)
         {
            ++this.offset;
            this._bk31();
         }
      }
      
      private function _aj2155() : void
      {
         if(this.offset > 0)
         {
            --this.offset;
            this._bk31();
         }
      }
   }
}

