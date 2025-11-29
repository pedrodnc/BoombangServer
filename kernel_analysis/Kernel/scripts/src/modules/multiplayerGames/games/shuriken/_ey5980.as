package src.modules.multiplayerGames.games.shuriken
{
   import flash.display.*;
   import flash.geom.*;
   import src.person.*;
   import src.utils.*;
   
   public class _ey5980 extends MovieClip
   {
      
      private static const _pd9423:String = "getClassMovieClip";
      
      private static const _od15264:int = 5;
      
      private static const _wv7612:String = "RegPointsPuntajes";
      
      private static const _kc1580:String = "RegPointsPuntos";
      
      private static const _xd8993:String = "RegPoint";
      
      private static const _sy10352:String = "tfTexto";
      
      private static const _gl11774:String = "Puntaje";
      
      private static const _hv11281:String = "Puntos";
      
      private static const _hh10490:String = "Texto";
      
      private static const _kv15399:String = "Primero";
      
      private static const _hq7917:String = "Segundo";
      
      private static const NORMAL:String = "Normal";
      
      private static const _fo1524:String = "Animar";
      
      private var _gt8186:Array;
      
      private var _ql12088:Array;
      
      private var _gw10363:Array;
      
      private var _gw7936:Array;
      
      private var _ix11826:_tl4091;
      
      private var _lg13977:MovieClip;
      
      private var _il15523:Point;
      
      private var _io910:Point;
      
      private var _kq10641:Point;
      
      private var _tk2330:Point;
      
      private var _dw4361:Point;
      
      public function _ey5980(param1:_tl4091, param2:MovieClip)
      {
         this._gt8186 = new Array();
         this._gw7936 = new Array(5);
         this._il15523 = new Point(7,16);
         this._io910 = new Point(8,17);
         this._kq10641 = new Point(9,18);
         this._tk2330 = new Point(10,19);
         this._dw4361 = new Point(11,20);
         super();
         this._ix11826 = param1;
         this._lg13977 = param2;
         this._ra9590();
         this._wc11887();
      }
      
      private function _ra9590() : void
      {
         var _loc1_:_ta2443 = null;
         var _loc2_:Point = new Point(0,0);
         for each(_loc1_ in this._ix11826._pf8204)
         {
            if(_loc1_ != null)
            {
               _loc2_ = _loc1_._md8722._gn15250;
               if(_loc2_.equals(this._il15523))
               {
                  this._gw7936[0] = _loc1_;
               }
               if(_loc2_.equals(this._io910))
               {
                  this._gw7936[1] = _loc1_;
               }
               if(_loc2_.equals(this._kq10641))
               {
                  this._gw7936[2] = _loc1_;
               }
               if(_loc2_.equals(this._tk2330))
               {
                  this._gw7936[3] = _loc1_;
               }
               if(_loc2_.equals(this._dw4361))
               {
                  this._gw7936[4] = _loc1_;
               }
            }
         }
      }
      
      public function _am6247(param1:int) : int
      {
         var _loc2_:_ta2443 = null;
         var _loc3_:int = 0;
         while(_loc3_ < this._gw7936.length)
         {
            _loc2_ = _ta2443(this._gw7936[_loc3_]);
            if(_loc2_ != null)
            {
               if(_loc2_._md8722.id == param1)
               {
                  return _loc3_;
               }
            }
            _loc3_++;
         }
         return -1;
      }
      
      private function _wc11887() : void
      {
         var _loc1_:int = 0;
         this._ql12088 = new Array();
         this._gw10363 = new Array();
         while(_loc1_ < _od15264)
         {
            this._ql12088[_loc1_] = this._lg13977[_pd9423](_gl11774);
            this._gw10363[_loc1_] = this._lg13977[_pd9423](_hv11281);
            MovieClip(this._ql12088[_loc1_]).gotoAndStop(NORMAL);
            MovieClip(this._gw10363[_loc1_]).gotoAndStop(_fo1524);
            this._gw10363[_loc1_].visible = false;
            this._ug4817(_loc1_,"0");
            this._gt8186.push({
               "id":_loc1_,
               "_en9004":0
            });
            (this._lg13977[_wv7612][_xd8993 + _loc1_] as MovieClip).addChild(this._ql12088[_loc1_]);
            (this._lg13977[_kc1580][_xd8993 + _loc1_] as MovieClip).addChild(this._gw10363[_loc1_]);
            _loc1_++;
         }
      }
      
      private function _ug4817(param1:int, param2:String) : void
      {
         _yq8362._xl9503((this._ql12088[param1] as MovieClip)[_sy10352],param2);
      }
      
      private function _od3282(param1:int, param2:String) : void
      {
         _yq8362._xl9503((this._gw10363[param1] as MovieClip)[_sy10352],param2);
         (this._gw10363[param1] as MovieClip).visible = true;
         (this._gw10363[param1] as MovieClip).gotoAndPlay(_fo1524);
      }
      
      public function _ya8784(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:_ta2443 = null;
         var _loc5_:int = 0;
         while(_loc5_ < this._gw7936.length)
         {
            _loc4_ = this._gw7936[_loc5_];
            if(_loc4_ != null && _loc4_._md8722.id == param1)
            {
               this._ug4817(_loc5_,param2.toString());
               this._od3282(_loc5_,param3 > 0 ? "+" + param3 : param3.toString());
               this._gt8186[_loc5_]._en9004 = param2;
               this._gt8186[_loc5_].id = _loc5_;
               break;
            }
            _loc5_++;
         }
         this._bs2044();
      }
      
      public function _bs2044() : void
      {
         var _loc2_:int = 0;
         var _loc1_:Array = _xv14798._vc10061(this._gt8186);
         _loc1_ = this._gn13592(_loc1_);
         while(_loc2_ < this._ql12088.length)
         {
            (this._ql12088[_loc1_[_loc2_].id] as MovieClip).gotoAndStop(NORMAL);
            _loc2_++;
         }
         if(_loc1_[0]._en9004 == _loc1_[1]._en9004)
         {
            (this._ql12088[_loc1_[0].id] as MovieClip).gotoAndStop(_hq7917);
            (this._ql12088[_loc1_[1].id] as MovieClip).gotoAndStop(_hq7917);
         }
         else
         {
            (this._ql12088[_loc1_[0].id] as MovieClip).gotoAndStop(_kv15399);
            (this._ql12088[_loc1_[1].id] as MovieClip).gotoAndStop(_hq7917);
         }
         if(_loc1_[1]._en9004 == _loc1_[2]._en9004)
         {
            (this._ql12088[_loc1_[1].id] as MovieClip).gotoAndStop(NORMAL);
         }
      }
      
      private function _gn13592(param1:Array) : Array
      {
         var _loc3_:int = 1;
         var _loc4_:int = 1;
         var _loc5_:int = 1;
         var _loc6_:int = int(param1.length);
         _loc3_ = 1;
         while(_loc3_ <= _loc6_ && Boolean(_loc5_))
         {
            _loc5_ = 0;
            _loc4_ = 0;
            while(_loc4_ < _loc6_ - 1)
            {
               if(param1[_loc4_ + 1]._en9004 > param1[_loc4_]._en9004)
               {
                  var _loc2_:Object = param1[_loc4_];
                  param1[_loc4_] = param1[_loc4_ + 1];
                  param1[_loc4_ + 1] = null;
                  _loc5_ = 1;
               }
               _loc4_++;
            }
            _loc3_++;
         }
         return param1;
      }
      
      public function destroy() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < _od15264)
         {
            if(this._ql12088[_loc1_] != null)
            {
               (this._lg13977[_wv7612][_xd8993 + _loc1_] as MovieClip).removeChild(this._ql12088[_loc1_]);
            }
            if(this._gw10363[_loc1_] != null)
            {
               (this._lg13977[_kc1580][_xd8993 + _loc1_] as MovieClip).removeChild(this._gw10363[_loc1_]);
            }
            this._ql12088[_loc1_] = null;
            this._gw7936[_loc1_] = null;
            this._gt8186 = null;
            _loc1_++;
         }
      }
   }
}

