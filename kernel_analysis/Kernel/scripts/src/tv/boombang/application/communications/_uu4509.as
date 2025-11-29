package src.tv.boombang.application.communications
{
   import flash.external.*;
   import src.*;
   import src.allData.*;
   import src.allData.color.*;
   import src.org.osflash.thunderbolt.*;
   import src.tv.boombang.application.popup.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.levelup.*;
   import src.tv.boombang.core.datatypes.notifications.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.library.popup.*;
   
   public class _uu4509
   {
      
      public function _uu4509()
      {
         super();
         _kr10933._xo2736(_te13472._ai13635,this._sk542);
         _kr10933._xo2736(_te13472._dt8491,this._sk542);
         _kr10933._xo2736(_te13472._mt15930,this._sk542);
         _kr10933._xo2736(_te13472._js2213,this._ke9091);
      }
      
      private function _ke9091(param1:_bc9270) : void
      {
         var _loc2_:int = int(param1._qp16092(1));
         if(_loc2_ == _te13472._wv14409 && param1.items[0] == _kr10933._ad11893)
         {
            _hv12530.getInstance()._tk9775(param1.items[1],new _qm1392(param1.items[2]));
         }
      }
      
      protected function _sk542(param1:_bc9270) : void
      {
         var _loc2_:int = 0;
         var _loc3_:_tq8281 = null;
         var _loc4_:_ac14381 = null;
         var _loc5_:_xs13329 = null;
         var _loc6_:_lp6667 = null;
         var _loc7_:_ac14381 = null;
         var _loc8_:int = int(param1.flags[0]);
         var _loc9_:int = int(param1._qp16092(1));
         if(_loc8_ == _te13472._ai13635 && _loc9_ == _te13472._el15060)
         {
            _loc2_ = int(param1.items[0]);
            if(_loc2_ == 1)
            {
               _hv12530.getInstance()._uf6036 = _hv12530._kr15451;
            }
         }
         if(_loc8_ == _te13472._ai13635 && _loc9_ == _te13472._mc14778)
         {
            _hv12530.getInstance()._ev848 = true;
         }
         if(_loc8_ == _te13472._dt8491 && _loc9_ == _te13472._ig8486)
         {
            _loc3_ = new _tq8281(param1.items);
            PopUpManager.createPopUp(_xw1367.getInstance().popUp,new _sh16135(_loc3_),true);
         }
         if(_loc8_ == _te13472._dt8491 && _loc9_ == _te13472._pi10410)
         {
            _loc4_ = new _ac14381().parse(param1.items);
            PopUpManager.createPopUp(_xw1367.getInstance().popUp,new _gw1437(_loc4_),true);
         }
         if(_loc8_ == _te13472._dt8491 && _loc9_ == _te13472._gd8612)
         {
            _loc5_ = new _xs13329().parse(param1.items) as _xs13329;
            ExternalInterface.call("console.log",param1);
            ExternalInterface.call("console.log",_loc5_);
            if(_loc5_.type == _bw12046._qy2384)
            {
               PopUpManager.createPopUp(_xw1367.getInstance().popUp,new _xv5745(_loc5_),true);
            }
            else if(_loc5_.type == _bw12046._ww14078)
            {
               PopUpManager.createPopUp(_xw1367.getInstance().popUp,new _no7530(_loc5_),true);
            }
            else
            {
               _mr16168.warn("Unknown social popup id: " + _loc5_.id);
            }
         }
         if(_loc8_ == _te13472._dt8491 && (_loc9_ == _te13472._oj10980 || _loc9_ == _te13472._gj3910 || _loc9_ == _te13472._yv13476))
         {
            switch(_loc9_)
            {
               case _te13472._gj3910:
                  _loc6_ = new _lp6667(_lp6667._bo736,param1.items[0]);
                  break;
               case _te13472._oj10980:
                  _loc6_ = new _lp6667(_lp6667._lp12491,param1.items[0]);
                  break;
               case _te13472._yv13476:
                  _loc7_ = new _ac14381().parse(param1.items);
                  _loc6_ = new _lp6667(_lp6667._mt5183,_loc7_._rl4311[0].txt);
            }
            PopUpManager.createPopUp(_xw1367.getInstance().popUp,_loc6_,false);
         }
         if(_loc8_ == _te13472._mt15930 && _loc9_ == _te13472._uu6128)
         {
            if(_lh7543.get(_ht14109) != null)
            {
               (_lh7543.get(_ht14109) as _ht14109)._kq14454(param1.items);
            }
         }
      }
   }
}

