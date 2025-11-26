package src.tv.boombang.core.datatypes.objects
{
   import src.allData.catObjects.*;
   import src.multiuser.*;
   
   public class ObjectsModel
   {
      
      public static const count:int = 9;
      
      private var count1:int;
      
      private var count2:int;
      
      private var textString:String;
      
      private var textString1:String;
      
      private var count3:int;
      
      private var count4:int;
      
      private var textString2:String;
      
      private var _props:Array;
      
      private var count5:int;
      
      public function ObjectsModel()
      {
         super();
      }
      
      public static function parse(param1:Array) : ObjectsModel
      {
         var count:Array = param1.splice(0,count);
         if(count.length < count)
         {
            return null;
         }
         var count3:ObjectsModel = new ObjectsModel();
         count3.count1 = int(count[0]);
         count3.count2 = int(count[1]);
         count3.textString = count[2];
         count3.textString1 = count[3];
         count3.count3 = CatobjectsController._iw2544(String(count[4]));
         count3.count4 = int(count[5]);
         count3.textString2 = count[6];
         count3._props = SocketManager.getList2(count[7]);
         count3.count5 = int(count[8]);
         return count3;
      }
      
      public function get cant() : int
      {
         return this.count5;
      }
      
      public function get items() : Array
      {
         return this._props;
      }
      
      public function get textString1() : String
      {
         return this.textString2;
      }
      
      public function get flip() : int
      {
         return this.count4;
      }
      
      public function get _mp5283() : int
      {
         return this.count3;
      }
      
      public function get _vw7719() : String
      {
         return this.textString1;
      }
      
      public function get _af6638() : String
      {
         return this.textString;
      }
      
      public function get count() : int
      {
         return this.count2;
      }
      
      public function get count2() : int
      {
         return this.count1;
      }
   }
}

