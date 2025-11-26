package src.modules.chooseIsla
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import flash.ui.*;
   import mx.utils.*;
   import src.allData.texts.*;
   import src.modules.privados.creacion.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   import src.utils.controlIngTextos.*;
   
   public class _lk14481
   {
      
      private static const _qx5360:String = "mcCreateIsla";
      
      private static const _oq14346:String = "mcGloboInfo";
      
      private static const _po2792:String = "tfInfo";
      
      private static const _bk9265:String = "mcBotonOk";
      
      private static const _uw2471:String = "tfSiguiente";
      
      private static const _cw1144:String = "tfAnterior";
      
      private static const _hg3190:String = "tfAceptar";
      
      private static const _gm15302:String = "mcBotonNext";
      
      private static const _lx2215:String = "mcBotonPrev";
      
      private static const _ve5162:String = "mcCirculoCantidadIsla";
      
      private static const _kg2410:String = "inName";
      
      private static const _rt11053:String = "mcAdvertencia";
      
      private static const _mi8144:String = "mcAdvertenciaMcBotonCancelar";
      
      private static const _rd6790:String = "etapa1";
      
      private static const _in8784:String = "etapa2";
      
      private static const _un11569:String = "locacionesEdicion";
      
      public static const _kh15317:int = 1;
      
      public static const _hg5935:int = 2;
      
      private static const _uo3435:int = 3394815;
      
      private static const _hl13620:int = 16777215;
      
      private var _gh12441:MovieClip;
      
      private var status:int;
      
      private var _bx8167:_qw14876;
      
      private var _iy13386:int;
      
      private var _wr14763:Boolean;
      
      private var _ea9196:_mc12628;
      
      public function _lk14481(param1:MovieClip, param2:_qw14876, param3:Boolean)
      {
         super();
         this._gh12441 = MovieClip(param1[_qx5360]);
         this._bx8167 = param2;
         if(param3)
         {
            _xv14798._dp2863(this._gh12441,this._cm6643);
            this._iy13386 = 1;
            this._jr5664(_kh15317);
            this._cm6643();
         }
      }
      
      public function destroy() : void
      {
         this._ku5734();
         _xv14798._ff5056(this._gh12441);
         this._gh12441.gotoAndStop(_rd6790);
         this._gh12441 = null;
         this._bx8167 = null;
      }
      
      public function _fa15663() : void
      {
         switch(this._gh12441.currentLabel)
         {
            case _rd6790:
               MovieClip(this._gh12441[_gm15302]).addEventListener(MouseEvent.MOUSE_OVER,this._va10938);
               MovieClip(this._gh12441[_gm15302]).addEventListener(MouseEvent.MOUSE_OUT,this._dx10582);
               MovieClip(this._gh12441[_gm15302]).addEventListener(MouseEvent.MOUSE_DOWN,this._dt11736);
               MovieClip(this._gh12441[_lx2215]).addEventListener(MouseEvent.MOUSE_OVER,this._va10938);
               MovieClip(this._gh12441[_lx2215]).addEventListener(MouseEvent.MOUSE_OUT,this._dx10582);
               MovieClip(this._gh12441[_lx2215]).addEventListener(MouseEvent.MOUSE_DOWN,this._dt11736);
               MovieClip(this._gh12441[_bk9265]).addEventListener(MouseEvent.MOUSE_OVER,this._on4798);
               MovieClip(this._gh12441[_bk9265]).addEventListener(MouseEvent.MOUSE_OUT,this._in11061);
               MovieClip(this._gh12441[_bk9265]).addEventListener(MouseEvent.MOUSE_DOWN,this._tj1504);
               this._bx8167._iq1199 = true;
               return;
            case _in8784:
               MovieClip(this._gh12441[_bk9265]).addEventListener(MouseEvent.MOUSE_OVER,this._on4798);
               MovieClip(this._gh12441[_bk9265]).addEventListener(MouseEvent.MOUSE_OUT,this._in11061);
               MovieClip(this._gh12441[_bk9265]).addEventListener(MouseEvent.MOUSE_DOWN,this._wc13970);
               MovieClip(this._gh12441[_rt11053][_mi8144]).addEventListener(MouseEvent.MOUSE_DOWN,this._cp15185);
               TextField(this._gh12441[_kg2410]).addEventListener(KeyboardEvent.KEY_DOWN,this._aj11518);
               this._ea9196 = new _mc12628(TextField(this._gh12441[_kg2410]),8);
               return;
            default:
               return;
         }
      }
      
      public function _ku5734() : void
      {
         switch(this._gh12441.currentLabel)
         {
            case _rd6790:
               MovieClip(this._gh12441[_gm15302]).removeEventListener(MouseEvent.MOUSE_OVER,this._va10938);
               MovieClip(this._gh12441[_gm15302]).removeEventListener(MouseEvent.MOUSE_OUT,this._dx10582);
               MovieClip(this._gh12441[_gm15302]).removeEventListener(MouseEvent.MOUSE_DOWN,this._dt11736);
               MovieClip(this._gh12441[_lx2215]).removeEventListener(MouseEvent.MOUSE_OVER,this._va10938);
               MovieClip(this._gh12441[_lx2215]).removeEventListener(MouseEvent.MOUSE_OUT,this._dx10582);
               MovieClip(this._gh12441[_lx2215]).removeEventListener(MouseEvent.MOUSE_DOWN,this._dt11736);
               MovieClip(this._gh12441[_bk9265]).removeEventListener(MouseEvent.MOUSE_OVER,this._on4798);
               MovieClip(this._gh12441[_bk9265]).removeEventListener(MouseEvent.MOUSE_OUT,this._in11061);
               MovieClip(this._gh12441[_bk9265]).removeEventListener(MouseEvent.MOUSE_DOWN,this._tj1504);
               return;
            case _in8784:
               MovieClip(this._gh12441[_bk9265]).removeEventListener(MouseEvent.MOUSE_OVER,this._on4798);
               MovieClip(this._gh12441[_bk9265]).removeEventListener(MouseEvent.MOUSE_OUT,this._in11061);
               MovieClip(this._gh12441[_bk9265]).removeEventListener(MouseEvent.MOUSE_DOWN,this._wc13970);
               MovieClip(this._gh12441[_rt11053][_mi8144]).removeEventListener(MouseEvent.MOUSE_DOWN,this._cp15185);
               TextField(this._gh12441[_kg2410]).removeEventListener(KeyboardEvent.KEY_DOWN,this._aj11518);
               if(this._ea9196 != null)
               {
                  this._ea9196.destroy();
                  this._ea9196 = null;
               }
               return;
            default:
               return;
         }
      }
      
      public function _cm6643() : void
      {
         switch(this._gh12441.currentLabel)
         {
            case _rd6790:
               MovieClip(this._gh12441[_gm15302]).mouseChildren = false;
               MovieClip(this._gh12441[_lx2215]).mouseChildren = false;
               MovieClip(this._gh12441[_bk9265]).mouseChildren = false;
               _yq8362._xl9503(this._gh12441[_po2792],this._bx8167._wv14295._dh8069);
               _yq8362._xl9503(this._gh12441[_gm15302][_uw2471],this._bx8167._wv14295._ml6269);
               _yq8362._xl9503(this._gh12441[_lx2215][_cw1144],this._bx8167._wv14295._vb2709);
               _yq8362._xl9503(this._gh12441[_bk9265][_hg3190],this._bx8167._wv14295._me2723);
               break;
            case _in8784:
               _yq8362._xl9503(this._gh12441[_kg2410],"");
               TextField(this._gh12441[_kg2410]).restrict = _ei10851._gt8202;
               TextField(this._gh12441[_kg2410]).maxChars = _ei10851._dc6950;
               this._gh12441.stage.focus = TextField(this._gh12441[_kg2410]);
               MovieClip(this._gh12441[_bk9265]).mouseChildren = false;
               _yq8362._xl9503(this._gh12441[_po2792],this._bx8167._wv14295._ry200);
               _yq8362._xl9503(this._gh12441[_bk9265][_hg3190],this._bx8167._wv14295._me2723);
               MovieClip(this._gh12441[_rt11053]).visible = false;
               _yq8362._xl9503(this._gh12441[_rt11053][_po2792],this._bx8167._wv14295._vi14501);
               MovieClip(this._gh12441[_rt11053][_mi8144]).buttonMode = true;
         }
         this._fa15663();
      }
      
      private function _bb2108(param1:String) : void
      {
         if(this._gh12441.currentLabel == param1)
         {
            return;
         }
         this._ku5734();
         _mc15002._vt11823(this._gh12441,param1);
      }
      
      public function _db5584() : void
      {
         if(this._gh12441.visible == false)
         {
            this._gh12441.visible = true;
         }
      }
      
      public function _hu12389() : void
      {
         if(this._gh12441.visible == true)
         {
            this._gh12441.visible = false;
         }
      }
      
      private function _dt11736(param1:MouseEvent) : void
      {
         if(param1.currentTarget is MovieClip)
         {
            if(MovieClip(param1.currentTarget) == MovieClip(this._gh12441[_gm15302]))
            {
               ++this._iy13386;
            }
            else if(MovieClip(param1.currentTarget) == MovieClip(this._gh12441[_lx2215]))
            {
               --this._iy13386;
            }
            if(this._iy13386 < 1)
            {
               this._iy13386 = _uw11952._cj6252;
            }
            else if(_uw11952._cj6252 < this._iy13386)
            {
               this._iy13386 = 1;
            }
            this._bx8167._uh9249(this._iy13386);
         }
      }
      
      private function _tj1504(param1:MouseEvent) : void
      {
         this._jr5664(_hg5935);
      }
      
      private function _va10938(param1:MouseEvent) : void
      {
         if(MovieClip(param1.currentTarget) == MovieClip(this._gh12441[_gm15302]))
         {
            _yq8362._np7275(this._gh12441[_gm15302][_uw2471],_hl13620);
         }
         else if(MovieClip(param1.currentTarget) == MovieClip(this._gh12441[_lx2215]))
         {
            _yq8362._np7275(this._gh12441[_lx2215][_cw1144],_hl13620);
         }
         this._on4798(param1);
      }
      
      private function _dx10582(param1:MouseEvent) : void
      {
         if(MovieClip(param1.currentTarget) == MovieClip(this._gh12441[_gm15302]))
         {
            _yq8362._np7275(this._gh12441[_gm15302][_uw2471],_uo3435);
         }
         else if(MovieClip(param1.currentTarget) == MovieClip(this._gh12441[_lx2215]))
         {
            _yq8362._np7275(this._gh12441[_lx2215][_cw1144],_uo3435);
         }
         this._in11061(param1);
      }
      
      private function _aj11518(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER || param1.keyCode == Keyboard.NUMPAD_ENTER)
         {
            this._wc13970();
         }
      }
      
      private function _wc13970(param1:MouseEvent = null) : void
      {
         var _loc2_:String = TextField(this._gh12441[_kg2410]).text;
         _loc2_ = StringUtil.trim(_loc2_);
         if(_loc2_.length > 0)
         {
            this._bx8167._px13297(_loc2_,this._iy13386,this._wr14763);
            _yq8362._xl9503(TextField(this._gh12441[_kg2410]),"");
            MovieClip(this._gh12441[_rt11053]).visible = true;
            this._hu12389();
         }
      }
      
      private function _cp15185(param1:MouseEvent = null) : void
      {
         MovieClip(this._gh12441[_rt11053]).visible = false;
      }
      
      public function loop() : void
      {
         if(this.status == _hg5935)
         {
            if(!(this._gh12441.stage.focus is TextField) && TextField(this._gh12441[_kg2410]) != null)
            {
               this._gh12441.stage.focus = TextField(this._gh12441[_kg2410]);
            }
         }
      }
      
      public function _oy9976(param1:Event) : void
      {
         this._bx8167._oy9976();
      }
      
      private function _on4798(param1:MouseEvent) : void
      {
         if(param1.currentTarget is MovieClip)
         {
            MovieClip(param1.currentTarget).gotoAndStop(_ax13262._jo8252);
         }
      }
      
      private function _in11061(param1:MouseEvent) : void
      {
         if(param1.currentTarget is MovieClip)
         {
            MovieClip(param1.currentTarget).gotoAndStop(_ax13262._vk6252);
         }
      }
      
      private function _jr5664(param1:int) : void
      {
         switch(param1)
         {
            case _kh15317:
               this._bb2108(_rd6790);
               break;
            case _hg5935:
               this._bb2108(_in8784);
         }
         this.status = param1;
      }
   }
}

