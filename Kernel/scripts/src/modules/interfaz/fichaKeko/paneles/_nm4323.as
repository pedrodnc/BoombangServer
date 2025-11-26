package src.modules.interfaz.fichaKeko.paneles
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.modules.interfaz._xt81056;
   import src.modules.interfaz.fichaKeko._kc6395;
   import src.modules.interfaz.fichaKeko._ls2671;
   import src.modules.interfaz.fichaKeko.booble._aw14744;
   import src.modules.interfaz.fichaKeko.ninjaManager.*;
   import src.person.*;
   import src.utils.*;
   
   public class _nm4323 extends _pa7905
   {
      
      private const _iu462:String = "mcIconoNinja";
      
      private const _ws311:String = "mcIconoZombie";
      
      private const _ul12123:String = "mcIconoWolf";
      
      private const _bo4509:String = "mcIconoEsqueleto";
      
      private const _godFichaIcono:String = "mcIconoGod";
      
      private const _ninjaBlancoFichaIcono:String = "mcIconoNinjaBlanco";
      
      private const _Sally1FichaIcono:String = "mcIconoSallyUno";
      
      private const _Sally2FichaIcono:String = "mcIconoSallyDos";
      
      private const _Sally3FichaIcono:String = "mcIconoSallyTres";
      
      private const _Sally4FichaIcono:String = "mcIconoSallyCuatro";
      
      private const _Sally5FichaIcono:String = "mcIconoSallyCinco";
      
      private const _Sally6FichaIcono:String = "mcIconoSallySeis";
      
      private const _Sally7FichaIcono:String = "mcIconoSallySiete";
      
      private const _Sally8FichaIcono:String = "mcIconoSallyOcho";
      
      private const _Sally9FichaIcono:String = "mcIconoSallyNueve";
      
      private const _Sally10FichaIcono:String = "mcIconoSallyDiez";
      
      private const _Sally11FichaIcono:String = "mcIconoSallyOnce";
      
      private const _sm5226:String = "tfTituloDisfraces";
      
      private var _jy4188:_ta2443;
      
      private var _cy15918:_xt81056;
      
      private var _ba15111:_qx7264;
      
      private var _ba15112:_qx7264;
      
      private var _gf3968:_qx7264;
      
      private var _nu5133:_qx7264;
      
      private var _ye4253:_qx7264;
      
      private var _callGod:_qx7264;
      
      private var _xw5076:TextField;
      
      public function _nm4323(param1:MovieClip, param2:MovieClip, param3:_ta2443, param4:_xt81056, param5:_aw14744, param6:_ls2671)
      {
         super(param1,param2,param5);
         this._jy4188 = param3;
         this._cy15918 = param4;
         this._ba15111 = new _qx7264(_ga7956._mk4881,param3,param2[this._iu462],param4);
         this._gf3968 = new _qx7264(_ga7956._gc13330,param3,param2[this._ul12123],param4);
         this._nu5133 = new _qx7264(_ga7956._ox11614,param3,param2[this._ws311],param4);
         this._ye4253 = new _qx7264(_ga7956._ky14686,param3,param2[this._bo4509],param4);
         this._callGod = new _qx7264(_ga7956._idGod,param3,param2[this._godFichaIcono],param4);
         this._ba15112 = new _qx7264(_ga7956._idNinjaBlanco,param3,param2[this._ninjaBlancoFichaIcono],param4);
         this._ba15112 = new _qx7264(_ga7956._idSally1,param3,param2[this._Sally1FichaIcono],param4);
         this._ba15112 = new _qx7264(_ga7956._idSally2,param3,param2[this._Sally2FichaIcono],param4);
         this._ba15112 = new _qx7264(_ga7956._idSally3,param3,param2[this._Sally3FichaIcono],param4);
         this._ba15112 = new _qx7264(_ga7956._idSally4,param3,param2[this._Sally4FichaIcono],param4);
         this._ba15112 = new _qx7264(_ga7956._idSally5,param3,param2[this._Sally5FichaIcono],param4);
         this._ba15112 = new _qx7264(_ga7956._idSally6,param3,param2[this._Sally6FichaIcono],param4);
         this._ba15112 = new _qx7264(_ga7956._idSally7,param3,param2[this._Sally7FichaIcono],param4);
         this._ba15112 = new _qx7264(_ga7956._idSally8,param3,param2[this._Sally8FichaIcono],param4);
         this._ba15112 = new _qx7264(_ga7956._idSally9,param3,param2[this._Sally9FichaIcono],param4);
         this._ba15112 = new _qx7264(_ga7956._idSally10,param3,param2[this._Sally10FichaIcono],param4);
         this._ba15112 = new _qx7264(_ga7956._idSally11,param3,param2[this._Sally11FichaIcono],param4);
         this._ba15111.addEventListener(MouseEvent.MOUSE_OVER,this._se5412,false,0,true);
         this._ba15111.addEventListener(MouseEvent.MOUSE_OUT,this._rr8320,false,0,true);
         this._gf3968.addEventListener(MouseEvent.MOUSE_OVER,this._se5412,false,0,true);
         this._gf3968.addEventListener(MouseEvent.MOUSE_OUT,this._rr8320,false,0,true);
         this._nu5133.addEventListener(MouseEvent.MOUSE_OVER,this._se5412,false,0,true);
         this._nu5133.addEventListener(MouseEvent.MOUSE_OUT,this._rr8320,false,0,true);
         this._ye4253.addEventListener(MouseEvent.MOUSE_OVER,this._se5412,false,0,true);
         this._ye4253.addEventListener(MouseEvent.MOUSE_OUT,this._rr8320,false,0,true);
         this._callGod.addEventListener(MouseEvent.MOUSE_OVER,this._se5412,false,0,true);
         this._callGod.addEventListener(MouseEvent.MOUSE_OUT,this._rr8320,false,0,true);
         this._ba15112.addEventListener(MouseEvent.MOUSE_OVER,this._se5412,false,0,true);
         this._ba15112.addEventListener(MouseEvent.MOUSE_OUT,this._rr8320,false,0,true);
         this._xw5076 = TextField(param2.getChildByName(this._sm5226));
         _yq8362._xl9503(this._xw5076,param6._is6750);
      }
      
      override public function _db5584(param1:_kc6395) : void
      {
         super._db5584(param1);
      }
      
      override public function _hu12389() : void
      {
         super._hu12389();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this._ba15111.removeEventListener(MouseEvent.MOUSE_OVER,this._se5412);
         this._ba15111.removeEventListener(MouseEvent.MOUSE_OUT,this._rr8320);
         this._gf3968.removeEventListener(MouseEvent.MOUSE_OVER,this._se5412);
         this._gf3968.removeEventListener(MouseEvent.MOUSE_OUT,this._rr8320);
         this._nu5133.removeEventListener(MouseEvent.MOUSE_OVER,this._se5412);
         this._nu5133.removeEventListener(MouseEvent.MOUSE_OUT,this._rr8320);
         this._ye4253.removeEventListener(MouseEvent.MOUSE_OVER,this._se5412);
         this._ye4253.removeEventListener(MouseEvent.MOUSE_OUT,this._rr8320);
         this._callGod.removeEventListener(MouseEvent.MOUSE_OVER,this._se5412);
         this._callGod.removeEventListener(MouseEvent.MOUSE_OUT,this._rr8320);
         this._ba15112.removeEventListener(MouseEvent.MOUSE_OVER,this._se5412);
         this._ba15112.removeEventListener(MouseEvent.MOUSE_OUT,this._rr8320);
      }
      
      public function _hm9534() : void
      {
         this._ba15111._su15800();
         this._gf3968._su15800();
         this._nu5133._su15800();
         this._ye4253._su15800();
         this._callGod._su15800();
         this._ba15112._su15800();
      }
      
      public function _iv3666() : void
      {
         this._ba15111._iv3666();
         this._gf3968._iv3666();
         this._nu5133._iv3666();
         this._ye4253._iv3666();
         this._callGod._iv3666();
         this._ba15112._iv3666();
      }
      
      private function _se5412(param1:MouseEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:_qx7264 = param1.target as _qx7264;
         if(_loc3_)
         {
            _loc2_ = "costume.help.";
            switch(_loc3_._yx13309)
            {
               case _ga7956._mk4881:
                  _loc2_ += "ninja";
                  break;
               case _ga7956._gc13330:
                  _loc2_ += "wolf";
                  break;
               case _ga7956._ox11614:
                  _loc2_ += "zombi";
                  break;
               case _ga7956._ky14686:
                  _loc2_ += "skeleton";
                  break;
               case _ga7956._idGod:
                  _loc2_ += "god";
                  break;
               case _ga7956._idNinjaBlanco:
                  _loc2_ += "ninjaBlanco";
                  break;
               case _ga7956._idSally1:
                  _loc2_ += "sally";
                  break;
               case _ga7956._idSally2:
                  _loc2_ += "sally1";
                  break;
               case _ga7956._idSally3:
                  _loc2_ += "sally2";
                  break;
               case _ga7956._idSally4:
                  _loc2_ += "sally3";
                  break;
               case _ga7956._idSally5:
                  _loc2_ += "sally4";
                  break;
               case _ga7956._idSally6:
                  _loc2_ += "sally5";
                  break;
               case _ga7956._idSally7:
                  _loc2_ += "sally6";
                  break;
               case _ga7956._idSally8:
                  _loc2_ += "sally7";
                  break;
               case _ga7956._idSally9:
                  _loc2_ += "sally8";
                  break;
               case _ga7956._idSally10:
                  _loc2_ += "sally9";
                  break;
               case _ga7956._idSally11:
                  _loc2_ += "sally10";
            }
            _vc4824._qg5125(_loc2_);
         }
      }
      
      private function _rr8320(param1:Event) : void
      {
         _vc4824._tj8775();
      }
   }
}

