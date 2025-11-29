package src.tv.boombang.core.datatypes.notifications
{
   import flash.utils.*;
   
   public class _lt10565
   {
      
      private var _id:int;
      
      private var _my10689:String;
      
      private var _pt7343:String;
      
      private var _fs7392:Dictionary;
      
      private var _eq15214:Dictionary;
      
      private var _ms8754:String;
      
      public function _lt10565()
      {
         super();
         this._fs7392 = new Dictionary();
         this._eq15214 = new Dictionary();
      }
      
      public function _fh3829(param1:int, param2:String) : void
      {
         this._fs7392[param1] = param2;
      }
      
      public function _dm14965(param1:int) : String
      {
         return this._fs7392[param1];
      }
      
      public function _yl1065(param1:int, param2:String) : void
      {
         this._eq15214[param1] = param2;
      }
      
      public function _me8885(param1:int) : String
      {
         if(this._eq15214[param1])
         {
            var _loc2_:* = this._eq15214[param1];
         }
         return "";
      }
      
      public function get _co10268() : String
      {
         return this._pt7343;
      }
      
      public function set _co10268(param1:String) : void
      {
         this._pt7343 = param1;
      }
      
      public function get background() : String
      {
         return this._my10689;
      }
      
      public function get _be5941() : String
      {
         return this._ms8754;
      }
      
      public function set background(param1:String) : void
      {
         this._my10689 = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set _be5941(param1:String) : void
      {
         this._ms8754 = param1;
      }
   }
}

