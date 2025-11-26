package src.modules.clickBlock
{
   import flash.display.*;
   import flash.events.*;
   import src.*;
   import src.allData.texts.*;
   import src.config.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public dynamic class _bb1400
   {
      
      private static var _uf9866:MovieClip;
      
      private static var _cw11838:MovieClip;
      
      private static var _pl6654:_qo7568;
      
      private static var _qe15639:_qo7568;
      
      private static var _ob9498:_qo7568;
      
      public static const _to13429:int = 0;
      
      public static const _qf10677:int = 1;
      
      private static const _fa1742:String = "avisoBB";
      
      private static const _ya2948:String = "mcWaitBB";
      
      private static const _iu11229:String = "mcAvisoBB";
      
      private static const _xf7501:String = "mcAvisoBBExit";
      
      private static const _uk7392:String = "mcBotonCerrar";
      
      private static const _dk11396:String = "mcBottonExit";
      
      private static const _fs12178:String = "mcInfoAviso";
      
      private static const _xg15351:String = "tfText";
      
      private static var _gy477:Boolean = false;
      
      public function _bb1400()
      {
         super();
      }
      
      public static function _oa11569(param1:MovieClip) : void
      {
         _cw11838 = param1;
      }
      
      private static function _ga15528(param1:int) : void
      {
         if(_cw11838 != null)
         {
            switch(param1)
            {
               case _to13429:
                  _yq8362._xl9503(_cw11838[_iu11229][_fs12178][_xg15351],"popup.fullArea");
                  _yq8362._xl9503(_cw11838[_xf7501][_fs12178][_xg15351],"popup.fullArea.exit");
                  _yq8362._xl9503(_cw11838[_ya2948][_xg15351],XML(_yh6510._eo5308[_fa1742]).attribute("conectado"));
                  return;
               case _qf10677:
                  _yq8362._xl9503(_cw11838[_iu11229][_fs12178][_xg15351],"popup.fullArea");
                  _yq8362._xl9503(_cw11838[_xf7501][_fs12178][_xg15351],"popup.fullArea.exit");
                  _yq8362._xl9503(_cw11838[_ya2948][_xg15351],XML(_yh6510._eo5308[_fa1742]).attribute("waiting"));
                  return;
            }
         }
      }
      
      public static function _po7796(param1:int) : void
      {
         var _loc2_:MovieClip = null;
         _dj5576();
         if(_uf9866 == null)
         {
            _uf9866 = new MovieClip();
            _loc2_ = new MovieClip();
            _loc2_.graphics.beginFill(16777215,0.2);
            _loc2_.graphics.drawRect(0,0,_cc7688._wc13865,_cc7688._kl10731);
            _loc2_.graphics.endFill();
            _uf9866.addChild(_loc2_);
            if(_cw11838 != null)
            {
               MovieClip(_cw11838[_ya2948]).x = _cc7688._wc13865 / 2;
               MovieClip(_cw11838[_ya2948]).y = _cc7688._kl10731 / 2;
               _uf9866.addChild(_cw11838[_ya2948]);
               _ga15528(param1);
            }
         }
         _uf9866.addEventListener(MouseEvent.MOUSE_DOWN,_qx11660);
         _og12356();
         _xw1367.getInstance()._uc3178(_uf9866,_xw1367._ww5897);
      }
      
      public static function _dj5576() : void
      {
         if(_uf9866 != null)
         {
            _uf9866.removeEventListener(MouseEvent.MOUSE_DOWN,_qx11660);
            _xw1367.getInstance()._na10792(_uf9866,_xw1367._ww5897);
            _uf9866 = null;
         }
      }
      
      public static function _il2596(param1:Function) : void
      {
         if(_qe15639 == null)
         {
            MovieClip(_cw11838[_xf7501]).x = _cc7688._wc13865 / 2;
            MovieClip(_cw11838[_xf7501]).y = _cc7688._kl10731 / 2;
            _qe15639 = new _qo7568(_cw11838[_xf7501][_uk7392],_og12356,"button.cerrar");
         }
         if(_ob9498)
         {
            _ob9498.destroy();
            _ob9498 = null;
         }
         _ob9498 = new _qo7568(_cw11838[_xf7501][_dk11396],param1,"popup.fullArea.button.exitHouse");
         _xw1367.getInstance()._uc3178(_cw11838[_xf7501],_xw1367._ww5897);
         _gy477 = true;
      }
      
      public static function _py12780() : void
      {
         if(_pl6654 == null)
         {
            MovieClip(_cw11838[_iu11229]).x = _cc7688._wc13865 / 2;
            MovieClip(_cw11838[_iu11229]).y = _cc7688._kl10731 / 2;
            _pl6654 = new _qo7568(_cw11838[_iu11229][_uk7392],_og12356,"button.cerrar");
         }
         _xw1367.getInstance()._uc3178(_cw11838[_iu11229],_xw1367._ww5897);
         _gy477 = true;
      }
      
      public static function _og12356() : void
      {
         if(_gy477)
         {
            _xw1367.getInstance()._na10792(_cw11838[_iu11229],_xw1367._ww5897);
            _xw1367.getInstance()._na10792(_cw11838[_xf7501],_xw1367._ww5897);
            _gy477 = false;
         }
      }
      
      private static function _qx11660(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         param1.stopPropagation();
      }
   }
}

