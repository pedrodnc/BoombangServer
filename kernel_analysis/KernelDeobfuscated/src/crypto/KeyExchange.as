package src.crypto
{
   import src.crypto.hurlant.math.*;
   
   public class KeyExchange
   {
      
      private var _privateKey:BigInteger;
      
      private var _publicKey:BigInteger;
      
      private var _serverPublicKey:BigInteger;
      
      private var _sharedKey:BigInteger;
      
      private var _prime:BigInteger;
      
      private var _generator:BigInteger;
      
      private var _minimumPublicKey:BigInteger;
      
      private var _minimumSharedSecret:BigInteger;
      
      public function KeyExchange(param1:BigInteger, param2:BigInteger)
      {
         this._minimumPublicKey = BigInteger.nbv(2);
         this._minimumSharedSecret = BigInteger.nbv(2);
         super();
         this._prime = param1;
         this._generator = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         this._privateKey = new BigInteger();
         this._privateKey.fromRadix(param1,param2);
         this._publicKey = this._generator.modPow(this._privateKey,this._prime);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this._serverPublicKey = new BigInteger();
         this._serverPublicKey.fromRadix(param1,param2);
         this._sharedKey = this._serverPublicKey.modPow(this._privateKey,this._prime);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this._publicKey.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this._sharedKey.toRadix(param1);
      }
      
      public function isValidServerPublicKey() : Boolean
      {
         return this._serverPublicKey.compareTo(this._minimumPublicKey) >= 0;
      }
      
      public function isValidSharedKey() : Boolean
      {
         return this._sharedKey.compareTo(this._minimumSharedSecret) >= 0;
      }
   }
}

