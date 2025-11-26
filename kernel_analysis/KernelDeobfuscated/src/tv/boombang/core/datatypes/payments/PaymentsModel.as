package src.tv.boombang.core.datatypes.payments
{
   public class PaymentsModel
   {
      
      private var count:String;
      
      private var textString1:String;
      
      private var textString2:String;
      
      private var isEnabled:Boolean = false;
      
      private var textString3:String;
      
      private var textString4:String;
      
      private var _info:String;
      
      private var items:Array;
      
      private var count:int;
      
      private var items1:Array;
      
      private var textString5:String;
      
      public function PaymentsModel()
      {
         super();
      }
      
      public function get _pn10903() : int
      {
         return this.count;
      }
      
      public function set _pn10903(param1:int) : void
      {
         this.count = param1;
      }
      
      public function get change() : Array
      {
         return this.items;
      }
      
      public function set change(param1:Array) : void
      {
         this.items = param1;
      }
      
      public function get info() : String
      {
         return this._info;
      }
      
      public function set info(param1:String) : void
      {
         this._info = param1;
      }
      
      public function get date() : String
      {
         return this.textString4;
      }
      
      public function set date(param1:String) : void
      {
         this.textString4 = param1;
      }
      
      public function get _vx2773() : String
      {
         return this.textString3;
      }
      
      public function set _vx2773(param1:String) : void
      {
         this.textString3 = param1;
      }
      
      public function get _bs1659() : Boolean
      {
         return this.isEnabled;
      }
      
      public function set _bs1659(param1:Boolean) : void
      {
         this.isEnabled = param1;
      }
      
      public function get text() : String
      {
         return this.textString2;
      }
      
      public function set text(param1:String) : void
      {
         this.textString2 = param1;
      }
      
      public function get _rf7615() : String
      {
         return this.textString1;
      }
      
      public function set _rf7615(param1:String) : void
      {
         this.textString1 = param1;
      }
      
      public function get type() : String
      {
         return this.count;
      }
      
      public function set type(param1:String) : void
      {
         this.count = param1;
      }
      
      public function get _sg7679() : Array
      {
         return this.items1;
      }
      
      public function set _sg7679(param1:Array) : void
      {
         this.items1 = param1;
      }
      
      public function get _ti8365() : String
      {
         return this.textString5;
      }
      
      public function set _ti8365(param1:String) : void
      {
         this.textString5 = param1;
      }
   }
}

