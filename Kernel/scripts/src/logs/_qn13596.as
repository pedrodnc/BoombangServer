package src.logs
{
   import src.org.osflash.thunderbolt.*;
   
   public class _qn13596
   {
      
      private static var _instance:_qn13596;
      
      public static const _dj10628:int = 1;
      
      public static const _do7319:int = 2;
      
      public static const _ny10327:int = 3;
      
      public static const _xq8140:int = 4;
      
      public static const _kl5643:String = "5bc3e93d79";
      
      private var _rv15792:Array;
      
      public function _qn13596(param1:_rw9443)
      {
         super();
      }
      
      public static function getInstance() : _qn13596
      {
         if(_qn13596._instance == null)
         {
            _qn13596._instance = new _qn13596(new _rw9443());
         }
         return _qn13596._instance;
      }
      
      public function _sn5663(param1:String) : void
      {
         _mr16168.info(param1);
      }
      
      public function _kp3815(param1:_fr7722) : void
      {
         var _loc2_:* = "";
         if(param1 != null)
         {
            _loc2_ = param1._ya15560();
            _mr16168.error(_loc2_);
            if(this._rv15792 == null)
            {
               this._rv15792 = new Array();
            }
            this._rv15792.push(param1);
         }
         else
         {
            if(this._rv15792 == null)
            {
               this._rv15792 = new Array();
            }
            param1 = new _fr7722(1);
            this._rv15792.push(param1._ya15560());
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
