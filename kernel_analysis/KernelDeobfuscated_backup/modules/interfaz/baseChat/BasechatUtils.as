package src.modules.interfaz.baseChat
{
   import flash.utils.*;
   
   public class _ad4684
   {
      
      private static const _pn5989:int = 5;
      
      private static const _dt409:int = 5;
      
      private static const _ku4309:int = 15000;
      
      private static const _dq3041:int = 3000;
      
      private var _tl5934:Array;
      
      private var _je5214:Array;
      
      private var _ot8514:Array;
      
      private var _kn6281:Array;
      
      private var _ub7612:int = -1;
      
      public function _ad4684()
      {
         this._tl5934 = new Array();
         this._je5214 = new Array();
         this._ot8514 = new Array();
         this._kn6281 = new Array();
         super();
      }
      
      public function clear() : void
      {
         this._tl5934 = new Array();
         this._je5214 = new Array();
         this._ot8514 = new Array();
         this._kn6281 = new Array();
         this._ub7612 = -1;
      }
      
      public function get _ow11561() : Boolean
      {
         if(this._ub7612 != -1)
         {
            if(getTimer() < this._ub7612)
            {
               return true;
            }
            this._ub7612 = -1;
         }
         return false;
      }
      
      public function _bd247(param1:String) : Boolean
      {
         return true;
      }
   }
}

