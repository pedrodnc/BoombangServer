package src.modules.chooseScene.panelTips
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.text.*;
   import src.*;
   import src.modules.chooseScene.ChoosesceneModel;
   import src.utils.*;
   
   public class PaneltipsView
   {
      
      private static var _js4637:Array;
      
      private static var _ad11181:int;
      
      private static const _ld1244:String = "tfTituloTips";
      
      private static const _ba408:String = "tfTip";
      
      private static const _vt11341:String = "tfSiguienteTip";
      
      private static const _io13872:String = "tfImportante";
      
      private static const _xo3866:String = "mcBotonTipSiguiente";
      
      private static const _ky9622:String = "mcHitAreaBotonTipSiguiente";
      
      private static const _hj289:String = "mcMariposa";
      
      private static const _hm11947:String = "enter";
      
      private static const _yk759:String = "loop";
      
      private static const _ax11975:String = "leave";
      
      private var _yo7341:MovieClip;
      
      private var _gy10361:ChoosesceneModel;
      
      private var _cl12799:int;
      
      public function PaneltipsView(param1:MovieClip, param2:ChoosesceneModel)
      {
         super();
         this._yo7341 = param1;
         this._gy10361 = param2;
         MovieClip(this._yo7341[_xo3866]).hitArea = MovieClip(this._yo7341[_ky9622]);
         MovieClip(this._yo7341[_ky9622]).visible = false;
         TextField(this._yo7341[_vt11341]).mouseEnabled = false;
         this._pw5074();
         this._ae6466();
         this._yo7341.visible = false;
         this._cl12799 = _xw1367._wa4051;
         this.init();
      }
      
      private function init() : void
      {
         this._an2299();
      }
      
      public function destroy() : void
      {
         this._sa3340();
      }
      
      private function _pw5074() : void
      {
         UtilsUtils._xl9503(this._yo7341[_ld1244],this._gy10361._mw12243);
         UtilsUtils._xl9503(this._yo7341[_vt11341],this._gy10361._rs3823);
         UtilsUtils._xl9503(this._yo7341[_io13872],this._gy10361._wx2720);
      }
      
      private function _ut8237() : void
      {
         UtilsUtils._xl9503(this._yo7341[_ba408],this._gy10361._ws15316[_js4637[_ad11181]]);
      }
      
      private function _ae6466() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(_js4637 == null)
         {
            _js4637 = new Array();
            _loc1_ = 0;
            while(_loc1_ < this._gy10361._ws15316.length)
            {
               _js4637.push(_loc1_);
               _loc1_++;
            }
            _loc2_ = 0;
            while(_loc1_ < this._gy10361._ws15316.length * 8)
            {
               _loc3_ = Math.random() * this._gy10361._ws15316.length;
               _loc4_ = Math.random() * this._gy10361._ws15316.length;
               if(_loc3_ < this._gy10361._ws15316.length && _loc4_ < this._gy10361._ws15316.length)
               {
                  _loc5_ = int(_js4637[_loc4_]);
                  _js4637[_loc4_] = _js4637[_loc3_];
                  _js4637[_loc3_] = _loc5_;
               }
               _loc1_++;
            }
         }
         _ad11181 = (_ad11181 + 1) % this._gy10361._ws15316.length;
         this._ut8237();
      }
      
      private function _qj11214(param1:MouseEvent) : void
      {
         MovieClip(this._yo7341[_xo3866]).gotoAndStop("rollover");
         var _loc2_:ColorTransform = new ColorTransform();
         _loc2_.color = 16750848;
         TextField(this._yo7341[_vt11341]).transform.colorTransform = _loc2_;
      }
      
      private function _cr12296(param1:MouseEvent) : void
      {
         MovieClip(this._yo7341[_xo3866]).gotoAndStop("normal");
         var _loc2_:ColorTransform = new ColorTransform();
         _loc2_.color = 52326;
         TextField(this._yo7341[_vt11341]).transform.colorTransform = _loc2_;
      }
      
      private function _hq5985(param1:MouseEvent) : void
      {
         _ad11181 = (_ad11181 + 1) % this._gy10361._ws15316.length;
         this._ut8237();
      }
      
      public function loop() : void
      {
      }
      
      public function _hu12389() : Boolean
      {
         _xw1367.getInstance()._na10792(this._yo7341,this._cl12799);
         this._yo7341.visible = false;
         MovieClip(this._yo7341[_hj289]).gotoAndPlay(_ax11975);
         return true;
      }
      
      public function _db5584(param1:int, param2:int) : Boolean
      {
         _xw1367.getInstance()._uc3178(this._yo7341,this._cl12799);
         this._yo7341.x = param1;
         this._yo7341.y = param2;
         this._yo7341.visible = true;
         this._ae6466();
         MovieClip(this._yo7341[_hj289]).gotoAndPlay(_hm11947);
         return true;
      }
      
      public function _an2299() : void
      {
         MovieClip(this._yo7341[_xo3866]).addEventListener(MouseEvent.ROLL_OVER,this._qj11214);
         MovieClip(this._yo7341[_xo3866]).addEventListener(MouseEvent.ROLL_OUT,this._cr12296);
         MovieClip(this._yo7341[_xo3866]).addEventListener(MouseEvent.CLICK,this._hq5985);
      }
      
      public function _sa3340() : void
      {
         MovieClip(this._yo7341[_xo3866]).removeEventListener(MouseEvent.ROLL_OVER,this._qj11214);
         MovieClip(this._yo7341[_xo3866]).removeEventListener(MouseEvent.ROLL_OUT,this._cr12296);
         MovieClip(this._yo7341[_xo3866]).removeEventListener(MouseEvent.CLICK,this._hq5985);
      }
   }
}

