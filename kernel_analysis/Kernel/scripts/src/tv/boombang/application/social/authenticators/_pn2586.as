package src.tv.boombang.application.social.authenticators
{
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.social.datatypes.*;
   import src.tv.boombang.core.communications.*;
   
   public class _pn2586 implements _be51
   {
      
      private var _gk8656:Function;
      
      public function _pn2586()
      {
         super();
      }
      
      public function initialize(param1:Object = null) : void
      {
      }
      
      public function login(param1:Object = null, param2:Function = null) : void
      {
      }
      
      public function _wc542(param1:Object = null, param2:Function = null) : void
      {
         _kr10933._xo2736(_te13472._ai13635,this._sk542);
         _ld5065._kd7758(_sw5071._to2262,param1["username"],param1["password"]);
         this._gk8656 = param2;
      }
      
      public function logout() : void
      {
      }
      
      private function _sk542(param1:_bc9270) : void
      {
         var _loc2_:int = 0;
         if(param1.flags[1] == _te13472._al13400)
         {
            _kr10933._mw12849(_te13472._ai13635,this._sk542);
            if(this._gk8656 != null)
            {
               _loc2_ = int(param1.items[0]);
               this._gk8656(_sw5071._to2262,_loc2_ == _kr10933._ad11893 ? true : false);
            }
         }
      }
   }
}

