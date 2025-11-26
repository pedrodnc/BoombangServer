package src.modules.concursos
{
   import flash.display.MovieClip;
   import flash.geom.*;
   import src.*;
   import src.allData.*;
   import src.allData.scene.typeEscenarios._il6324;
   import src.logs.*;
   import src.modules.interfaz.baseChat._rw2740;
   import src.multiuser.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _he13618
   {
      
      private var _te16060:MovieClip;
      
      private var _jm6211:_bq4015;
      
      private var logs:_qn13596;
      
      private var _bl11315:_il6324;
      
      private var _wg7925:_rw2740;
      
      private var _ls5681:Array;
      
      public function _he13618(param1:MovieClip, param2:_rw2740, param3:_il6324)
      {
         this._ls5681 = new Array();
         super();
         this._te16060 = param1;
         this._wg7925 = param2;
         this.logs = _qn13596.getInstance();
         this._bl11315 = param3;
         this.init();
      }
      
      public function init() : void
      {
         this._ls5681 = new Array();
         this._jm6211 = new _bq4015();
         this._jm6211.addEventListener(_ed314._ky8589,this._bw11981);
      }
      
      public function destroy() : void
      {
         var _loc1_:_nb5170 = null;
         this._jm6211.removeEventListener(_ed314._ky8589,this._bw11981);
         var _loc2_:int = this._ls5681.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ = this._ls5681[_loc2_];
            this._wg10873(_loc1_);
            _loc2_--;
         }
         this._ls5681.length = 0;
      }
      
      public function loop() : void
      {
      }
      
      private function _bw11981(param1:_ed314) : void
      {
         var _loc3_:uint = uint(String(param1._lv9976[0]).charCodeAt(0));
         switch(_loc3_)
         {
            case _jl5367._ut13239:
               var _loc2_:uint = uint(String(param1._lv9976[1]).charCodeAt(0));
               switch(0)
               {
                  case _bq4015._gc10309:
                     this._dv7892(param1._lv9976);
                     break;
                  case _bq4015._ds3009:
                     this._ph7174(param1._lv9976);
                     break;
                  case _bq4015._ga10044:
                     this._nj2249(param1._lv9976);
               }
               return;
            default:
               return;
         }
      }
      
      private function _dv7892(param1:Array) : void
      {
         var _loc2_:_nb5170 = null;
         var _loc12_:int = 0;
         if(param1.length < 7)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"ConcursosPlaying.recTramaConcursoAltaObjeto",param1.toString()));
            return;
         }
         var _loc5_:int = int(param1[2]);
         var _loc6_:int = int(param1[3]);
         var _loc7_:int = int(param1[4]);
         var _loc8_:int = int(param1[5]);
         var _loc9_:int = int(param1[6]);
         var _loc10_:int = int(param1[7]);
         var _loc11_:Boolean = Boolean(int(param1[8]));
         while(_loc12_ < this._ls5681.length)
         {
            _loc2_ = _nb5170(this._ls5681[_loc12_]);
            if(_loc2_._hw14129 == _loc5_)
            {
               this.logs._kp3815(new _sy12041(_qn13596._dj10628,"ConcursosPlaying.recTramaConcursoAltaObjeto","Duplicado de Objeto, idConcurso: " + _loc6_ + " tipoGraf: " + _loc9_));
               return;
            }
            _loc12_++;
         }
         var _loc13_:MovieClip = this._qx9633(_loc9_,false,this._bl11315._go7360,this._bl11315._bw12803);
         if(_loc13_ != null)
         {
            switch(_loc10_)
            {
               case _nu9076.TIERRA:
                  _loc2_ = new _xc16143(this._bl11315,_loc13_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,this._sy3890,this._wg10873);
                  break;
               case _nu9076._qw8619:
                  var _loc3_:int = int(param1[9]);
                  _loc2_ = new _tt12427(this._bl11315,_loc13_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,this._sy3890,this._wg10873,0 * 1000);
                  break;
               case _nu9076._ys13356:
                  var _loc4_:int = int(param1[9]);
                  _loc2_ = new _ee13805(this._bl11315,_loc13_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,this._sy3890,this._wg10873,0 * 200);
            }
            _xw1367.getInstance()._uc3178(_loc2_,_xw1367._jf1741,true);
            this._ls5681.push(_loc2_);
         }
         else
         {
            this.logs._kp3815(new _sy12041(_qn13596._dj10628,"ConcursosPlaying.recTramaConcursoAltaObjeto","concurso movie clip not found, idConcurso: " + _loc6_ + " tipoGraf: " + _loc9_));
         }
      }
      
      private function _sy3890(param1:int) : void
      {
         this._jm6211._ok7547(param1);
      }
      
      private function _nj2249(param1:Array) : void
      {
         var _loc2_:_nb5170 = null;
         var _loc5_:int = 0;
         if(param1.length < 4)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"ConcursosPlaying.recTramaConcursoQuitarObjeto",param1.toString()));
            return;
         }
         var _loc3_:Boolean = Boolean(int(param1[2]));
         var _loc4_:int = int(param1[3]);
         while(_loc5_ < this._ls5681.length)
         {
            _loc2_ = _nb5170(this._ls5681[_loc5_]);
            if(_loc2_._hw14129 == _loc4_)
            {
               if(_loc3_)
               {
                  _loc2_._kx10106();
               }
               else
               {
                  this._wg10873(_loc2_);
               }
            }
            _loc5_++;
         }
      }
      
      private function _wg10873(param1:_nb5170) : void
      {
         this._ls5681.splice(this._ls5681.indexOf(param1),1);
         param1.destroy();
         _xw1367.getInstance()._na10792(param1,_xw1367._jf1741);
      }
      
      private function _ph7174(param1:Array) : void
      {
         if(param1.length < 4)
         {
            this.logs._kp3815(new _ex15859(_qn13596._ny10327,"ConcursosPlaying.recTramaConcursoMostrarMensaje",param1.toString()));
            return;
         }
         var _loc2_:int = int(param1[2]);
         var _loc3_:int = int(param1[3]);
         var _loc4_:int = int(param1[4]);
         if(_loc2_ == _hv12530.getInstance().id)
         {
            _hv12530.getInstance()._bn2124(_loc3_,_loc4_);
         }
      }
      
      private function _qx9633(param1:int, param2:Boolean, param3:Number, param4:Number) : MovieClip
      {
         var _loc5_:ColorTransform = null;
         var _loc6_:* = "mcGrafico_" + param1;
         if(param2)
         {
            _loc6_ += "_Win";
         }
         var _loc7_:MovieClip = (_lh7543.get(_vy3822) as _vy3822)._bn15619("concursos.swf",_loc6_);
         if(_loc7_ != null)
         {
            _loc5_ = new ColorTransform();
            _loc5_.color = 0;
            _loc5_.blueMultiplier = param4;
            _loc5_.redMultiplier = param4;
            _loc5_.greenMultiplier = param4;
            _loc7_.transform.colorTransform = _loc5_;
            _loc7_.width *= param3;
            _loc7_.height *= param3;
         }
         return _loc7_;
      }
   }
}

