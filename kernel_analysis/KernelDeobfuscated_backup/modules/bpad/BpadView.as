package src.modules.bpad
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import src.modules.chooseIsla.*;
   import src.person.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _jj14590
   {
      
      private static const _sp13400:String = "mcFichaDenunciaAdvertencia";
      
      private static const _th14412:String = "mclCloseAzul";
      
      private static const _kn7165:String = "mcBotonEnviar";
      
      private static const _sp4856:String = "mcBotonCanelar";
      
      private static const _is5471:String = "mcTriangulo";
      
      private static const _cc9794:String = "tfDenunciar";
      
      private static const _mf8071:String = "tfDenunciaTexto";
      
      private static const _fh7859:String = "tfEnviar";
      
      private static const _sh9298:String = "tfCancelar";
      
      public static const _ne3173:int = 1;
      
      public static const _rx2672:int = 2;
      
      public static const _le1459:int = 3;
      
      public static const _mt15018:int = 4;
      
      public var _qa8750:MovieClip;
      
      private var status:int;
      
      private var _yj10875:_uc13813;
      
      private var _jb3891:_id1792;
      
      private var _mi6698:Object;
      
      public function _jj14590(param1:MovieClip, param2:_id1792)
      {
         super();
         this._qa8750 = MovieClip(param1[_sp13400]);
         this._jb3891 = param2;
         this._yj10875 = param2._yj10875;
         this._jr5664(_ne3173);
         this._xj6046();
      }
      
      public function _bo13783() : void
      {
         TextField(this._qa8750[_fh7859]).mouseEnabled = false;
         TextField(this._qa8750[_sh9298]).mouseEnabled = false;
         TextField(this._qa8750[_mf8071]).mouseEnabled = false;
         _yq8362._xl9503(this._qa8750[_fh7859],this._yj10875._kc85);
         _yq8362._xl9503(this._qa8750[_sh9298],this._yj10875._pe7262);
         switch(this.status)
         {
            case _ne3173:
               _yq8362._xl9503(this._qa8750[_cc9794],this._yj10875._ob13394);
               _yq8362._xl9503(this._qa8750[_mf8071],this._yj10875._pc277);
               return;
            case _rx2672:
               _yq8362._xl9503(this._qa8750[_cc9794],this._yj10875._lg1586);
               _yq8362._xl9503(this._qa8750[_mf8071],this._yj10875._ad10099);
               return;
            case _le1459:
               _yq8362._xl9503(this._qa8750[_cc9794],this._yj10875._ga5410);
               _yq8362._xl9503(this._qa8750[_mf8071],this._yj10875._ud11001);
               return;
            case _mt15018:
               _yq8362._xl9503(this._qa8750[_cc9794],this._yj10875._hu2179);
               _yq8362._xl9503(this._qa8750[_mf8071],this._yj10875._wm13160);
               return;
            default:
               return;
         }
      }
      
      public function _xj6046() : void
      {
         MovieClip(this._qa8750[_th14412]).addEventListener(MouseEvent.ROLL_OVER,this._oo8318);
         MovieClip(this._qa8750[_th14412]).addEventListener(MouseEvent.ROLL_OUT,this._oo8318);
         MovieClip(this._qa8750[_th14412]).addEventListener(MouseEvent.CLICK,this._hu12389);
         MovieClip(this._qa8750[_kn7165]).addEventListener(MouseEvent.ROLL_OVER,this._oo8318);
         MovieClip(this._qa8750[_kn7165]).addEventListener(MouseEvent.ROLL_OUT,this._oo8318);
         MovieClip(this._qa8750[_kn7165]).addEventListener(MouseEvent.CLICK,this._oa3949);
         MovieClip(this._qa8750[_sp4856]).addEventListener(MouseEvent.ROLL_OVER,this._oo8318);
         MovieClip(this._qa8750[_sp4856]).addEventListener(MouseEvent.ROLL_OUT,this._oo8318);
         MovieClip(this._qa8750[_sp4856]).addEventListener(MouseEvent.CLICK,this._hu12389);
      }
      
      public function _ms13572() : void
      {
         MovieClip(this._qa8750[_th14412]).removeEventListener(MouseEvent.ROLL_OVER,this._oo8318);
         MovieClip(this._qa8750[_th14412]).removeEventListener(MouseEvent.ROLL_OUT,this._oo8318);
         MovieClip(this._qa8750[_th14412]).removeEventListener(MouseEvent.CLICK,this._hu12389);
         MovieClip(this._qa8750[_kn7165]).removeEventListener(MouseEvent.ROLL_OVER,this._oo8318);
         MovieClip(this._qa8750[_kn7165]).removeEventListener(MouseEvent.ROLL_OUT,this._oo8318);
         MovieClip(this._qa8750[_kn7165]).removeEventListener(MouseEvent.CLICK,this._oa3949);
         MovieClip(this._qa8750[_sp4856]).removeEventListener(MouseEvent.ROLL_OVER,this._oo8318);
         MovieClip(this._qa8750[_sp4856]).removeEventListener(MouseEvent.ROLL_OUT,this._oo8318);
         MovieClip(this._qa8750[_sp4856]).removeEventListener(MouseEvent.CLICK,this._hu12389);
      }
      
      private function _oo8318(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = MovieClip(param1.currentTarget);
         if(param1.type == MouseEvent.ROLL_OVER)
         {
            _loc2_.gotoAndStop(_ax13262._jo8252);
         }
         else if(param1.type == MouseEvent.ROLL_OUT)
         {
            _loc2_.gotoAndStop(_ax13262._vk6252);
         }
      }
      
      public function _db5584(param1:Object) : void
      {
         this._qa8750.visible = true;
         this._jb3891._wq9363();
         if(param1 is _ln42)
         {
            this._mi6698 = param1;
            this._jr5664(_ne3173);
         }
         else if(param1 is _um8624)
         {
            this._mi6698 = param1;
            this._jr5664(_rx2672);
         }
         else if(param1 is _hk11848)
         {
            this._mi6698 = param1;
            this._jr5664(_le1459);
         }
      }
      
      public function _hu12389(param1:MouseEvent = null) : void
      {
         if(this._qa8750.visible == true)
         {
            this._jb3891._td7105();
            this._qa8750.visible = false;
            this._mi6698 = null;
         }
      }
      
      public function _jr5664(param1:int) : void
      {
         switch(param1)
         {
            case _ne3173:
            case _rx2672:
            case _le1459:
               DisplayObject(this._qa8750[_sp4856]).visible = true;
               DisplayObject(this._qa8750[_kn7165]).visible = true;
               DisplayObject(this._qa8750[_is5471]).visible = true;
               DisplayObject(this._qa8750[_sh9298]).visible = true;
               DisplayObject(this._qa8750[_fh7859]).visible = true;
               break;
            case _mt15018:
               DisplayObject(this._qa8750[_sp4856]).visible = false;
               DisplayObject(this._qa8750[_kn7165]).visible = false;
               DisplayObject(this._qa8750[_is5471]).visible = false;
               DisplayObject(this._qa8750[_sh9298]).visible = false;
               DisplayObject(this._qa8750[_fh7859]).visible = false;
         }
         this.status = param1;
         this._bo13783();
      }
      
      public function _oa3949(param1:MouseEvent) : void
      {
         var _loc2_:_ln42 = null;
         var _loc3_:_um8624 = null;
         var _loc4_:_hk11848 = null;
         if(this._mi6698 != null)
         {
            if(this._mi6698 is _ln42)
            {
               _loc2_ = _ln42(this._mi6698);
               this._jb3891._qv3758(_loc2_);
               this._jb3891._lr1713(_loc2_);
               this._jr5664(_mt15018);
            }
            else if(this._mi6698 is _um8624)
            {
               _loc3_ = _um8624(this._mi6698);
               this._jb3891._sd12129(_loc3_);
               this._jr5664(_mt15018);
            }
            else if(this._mi6698 is _hk11848)
            {
               _loc4_ = _hk11848(this._mi6698);
               this._jb3891._xm12392(_loc4_);
               this._jr5664(_mt15018);
            }
         }
      }
   }
}

