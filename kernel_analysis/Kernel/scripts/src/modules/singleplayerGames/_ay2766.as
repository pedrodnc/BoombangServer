package src.modules.singleplayerGames
{
   import flash.display.*;
   import src.*;
   import src.modules.singleplayerGames.games._cd5860;
   import src.modules.singleplayerGames.games.atunino.*;
   import src.multiuser.*;
   import src.org.osflash.thunderbolt.*;
   
   public class _ay2766
   {
      
      public static const _rf14470:int = 17;
      
      public static const _pv14527:String = "quit";
      
      public static const _ct7607:String = "comenzar_juego";
      
      public static const _jb4575:String = "terminar_juego";
      
      public static const _uh11266:String = "comenzar_nivel";
      
      public static const _va7347:String = "terminar_nivel";
      
      public static const _hp1156:String = "perder_vida";
      
      public static const _wf6785:String = "recoger_item";
      
      private var _wc7768:_ee10670;
      
      public var _jd12664:String;
      
      private var _cs3147:int;
      
      private var _pk1120:int;
      
      private var _dk14093:MovieClip;
      
      private var _jm390:MovieClip;
      
      private var _fo5119:_cd5860;
      
      public function _ay2766(param1:MovieClip, param2:int)
      {
         super();
         this._pk1120 = param2;
         this._jm390 = param1;
         this._wc7768 = new _ee10670();
         this._nd12652();
         this._kr510();
         this._xo2736();
      }
      
      public function destroy() : void
      {
         this._fo5119.destroy();
         this._wc7768.destroy();
         this._re1781();
      }
      
      private function _nd12652() : void
      {
         this._dk14093 = new MovieClip();
         this._dk14093.addChild(this._jm390);
         _xw1367.getInstance()._uc3178(this._jm390,_xw1367._co9468,true);
      }
      
      private function _kr510() : void
      {
         switch(this._pk1120)
         {
            case _rf14470:
               this._fo5119 = new _wv9506(this._jm390);
               return;
            default:
               return;
         }
      }
      
      public function _re1781() : void
      {
         this._qh16149();
         _xw1367.getInstance()._na10792(this._jm390,_xw1367._co9468);
      }
      
      private function _xo2736() : void
      {
         this._wc7768.addEventListener(_nl11849._vx15305,this._mw12671);
         switch(this._pk1120)
         {
            case _rf14470:
               this._fo5119.addEventListener(_pv14527,this._kj11700);
               this._fo5119.addEventListener(_jb4575,this._kj11700);
               this._fo5119.addEventListener(_ct7607,this._kj11700);
               this._fo5119.addEventListener(_uh11266,this._kj11700);
               this._fo5119.addEventListener(_va7347,this._kj11700);
               this._fo5119.addEventListener(_wf6785,this._kj11700);
               this._fo5119.addEventListener(_hp1156,this._kj11700);
         }
      }
      
      private function _qh16149() : void
      {
         switch(this._pk1120)
         {
            case _rf14470:
               this._fo5119.removeEventListener(_jb4575,this._kj11700);
               this._fo5119.removeEventListener(_ct7607,this._kj11700);
               this._fo5119.removeEventListener(_uh11266,this._kj11700);
               this._fo5119.removeEventListener(_va7347,this._kj11700);
               this._fo5119.removeEventListener(_wf6785,this._kj11700);
               this._fo5119.removeEventListener(_hp1156,this._kj11700);
               return;
            default:
               return;
         }
      }
      
      private function _mw12671(param1:_nl11849) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Object = null;
         var _loc4_:Array = param1._lv9976;
         _loc2_ = uint(String(_loc4_.shift()).charCodeAt(0));
         switch(_loc2_)
         {
            case _ee10670._mq279:
               _mr16168.info("response -> crear juego");
               this._cs3147 = int(_loc4_[1]);
               _loc3_ = new Object();
               _loc3_.lives = int(_loc4_[2]);
               _mr16168.info("*********** lives",_loc3_.lives);
               this._fo5119.comenzarJuego(_loc3_);
               return;
            case _ee10670._ap16024:
               _mr16168.info("response -> terminar juego");
               _loc3_ = new Object();
               _loc3_.end_type = _jl5367._hp13280(_loc4_[3]);
               _loc3_.total_points = _jl5367._hp13280(_loc4_[4]);
               this._fo5119.terminarJuego(_loc3_);
               return;
            case _ee10670._jj15881:
               _mr16168.info("response -> comenzar nivel");
               _loc3_ = new Object();
               _loc3_.perlas_tipos = _jl5367._hp13280(_loc4_[4]);
               _loc3_.perlas_id = _jl5367._hp13280(_loc4_[5]);
               _loc3_.perlas_slots = _jl5367._hp13280(_loc4_[6]);
               this._fo5119._nc2597(_loc3_);
               return;
            case _ee10670._pj15113:
               _mr16168.info("response -> terminar nivel");
               _loc3_ = new Object();
               _loc3_.level = _jl5367._hp13280(_loc4_[2]);
               _loc3_.error = _jl5367._hp13280(_loc4_[3]);
               _loc3_.level_points = _jl5367._hp13280(_loc4_[4]);
               _loc3_.total_points = _jl5367._hp13280(_loc4_[5]);
               this._fo5119._ha2745(_loc3_);
               return;
            case _ee10670._md6991:
               _mr16168.info("response -> perder vida");
               _loc3_ = new Object();
               _loc3_.lives = int(_loc4_[2]);
               _loc3_.vidas_restantes = _jl5367._hp13280(_loc4_[2]);
               this._fo5119._xv11864(_loc3_);
               return;
            case _ee10670._uw13696:
               _mr16168.info("response -> recoger item");
               _loc3_ = new Object();
               _loc3_.error = _jl5367._hp13280(_loc4_[3]);
               _loc3_.item_points = _jl5367._hp13280(_loc4_[4]);
               _loc3_.level_points = _jl5367._hp13280(_loc4_[5]);
               this._fo5119._kj11324(_loc3_);
               return;
            default:
               return;
         }
      }
      
      private function _kj11700(param1:*) : void
      {
         switch(param1.type)
         {
            case _pv14527:
               this._jd12664 = _pv14527;
               return;
            case _ct7607:
               this._wc7768._yb11684(this._pk1120);
               return;
            case _jb4575:
               this._wc7768._fk15633(this._pk1120,this._cs3147);
               return;
            case _uh11266:
               this._wc7768._kq11179(this._pk1120,this._cs3147,param1.data.level);
               return;
            case _va7347:
               this._wc7768._yo10111(this._pk1120,this._cs3147,param1.data.level,param1.data.bonus);
               return;
            case _hp1156:
               this._wc7768._sr3491(this._pk1120,this._cs3147,param1.data.distancia);
               return;
            case _wf6785:
               this._wc7768._dh11429(this._pk1120,this._cs3147,param1.data.itemId);
               return;
            default:
               return;
         }
      }
   }
}

