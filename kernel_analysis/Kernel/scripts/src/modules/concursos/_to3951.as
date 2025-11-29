package src.modules.concursos
{
   import src.allData.*;
   import src.logs.*;
   import src.multiuser.*;
   
   public class _to3951
   {
      
      private static var _instance:_to3951;
      
      private var _ks11420:Array;
      
      public function _to3951(param1:_rw9443)
      {
         this._ks11420 = new Array();
         super();
      }
      
      public static function getInstance() : _to3951
      {
         if(_to3951._instance == null)
         {
            _to3951._instance = new _to3951(new _rw9443());
         }
         return _to3951._instance;
      }
      
      public function get concursos() : Array
      {
         return this._ks11420;
      }
      
      public function _hv5552(param1:Array) : void
      {
         var _loc2_:_hb296 = null;
         var _loc7_:int = 0;
         var _loc3_:_qn13596 = _qn13596.getInstance();
         if(param1.length < 4)
         {
            _loc3_._kp3815(new _ex15859(_qn13596._dj10628,"TablaConcursos.inicializar",param1.toString()));
            return;
         }
         var _loc4_:Array = _jl5367._go4983(param1[2]);
         var _loc5_:Array = _jl5367._go4983(param1[3]);
         if(_loc4_.length != _loc5_.length)
         {
            _loc3_._kp3815(new _ex15859(_qn13596._dj10628,"TablaConcursos.inicializar",param1.toString()));
            return;
         }
         var _loc6_:_hv12530 = _hv12530.getInstance();
         while(_loc7_ < _loc4_.length)
         {
            _loc2_ = new _hb296(_loc4_[_loc7_],Boolean(int(_loc5_[_loc7_])));
            this._ks11420.push(_loc2_);
            _loc6_._th15114(_loc2_.id,0);
            _loc7_++;
         }
      }
   }
}

class _rw9443
{
   
   public function _rw9443()
   {
      super();
   }
}
