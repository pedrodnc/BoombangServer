package src.tv.boombang.core.datatypes.navigationMenu
{
   public class NavigationmenuModel
   {
      
      private var _tk905:NavigationmenuModel;
      
      private var _yd13074:NavigationmenuModel;
      
      private var count:int;
      
      private var count1:int;
      
      private var _name:String;
      
      private var count2:int;
      
      private var count3:int;
      
      private var count4:int;
      
      private var _jt10688:NavigationmenuModel;
      
      private var count5:int;
      
      private var count6:int;
      
      private var isEnabled:Boolean = false;
      
      public function NavigationmenuModel()
      {
         super();
      }
      
      public static function parse(param1:Array, param2:int) : NavigationmenuModel
      {
         var count3:NavigationmenuModel = new NavigationmenuModel();
         count3._ks12861 = NavigationmenuModel._bn928(param2);
         count3._ls5877 = NavigationmenuModel._bn928(param1[0]);
         count3.count2 = NavigationmenuModel._bn928(param1[1]);
         count3._lh4996 = param1[2];
         count3.name = param1[3];
         count3._sc1342 = param1[4];
         count3._vn12441 = param1[5];
         count3._un6586 = param1[6];
         count3._eb11619 = param1[7];
         count3._fq658 = param1[8];
         count3._rx11081 = param1[9];
         return count3;
      }
      
      public function clone() : NavigationmenuModel
      {
         var count2:NavigationmenuModel = new NavigationmenuModel();
         if(this._ks12861)
         {
            count2._ks12861 = NavigationmenuModel._bn928(this._ks12861._tv1901);
         }
         count2._ls5877 = NavigationmenuModel._bn928(this._ls5877.id);
         count2.count2 = NavigationmenuModel._bn928(this.count2.id);
         count2._lh4996 = this._lh4996;
         count2.name = this.name;
         count2._sc1342 = this._sc1342;
         count2._vn12441 = this._vn12441;
         count2._un6586 = this._un6586;
         count2._eb11619 = this._eb11619;
         count2._fq658 = this._fq658;
         count2._rx11081 = this._rx11081;
         return count2;
      }
      
      public function get _ls5877() : NavigationmenuModel
      {
         return this._tk905;
      }
      
      public function set _ls5877(param1:NavigationmenuModel) : void
      {
         this._tk905 = param1;
      }
      
      public function get count2() : NavigationmenuModel
      {
         return this._yd13074;
      }
      
      public function set count2(param1:NavigationmenuModel) : void
      {
         this._yd13074 = param1;
      }
      
      public function get _lh4996() : int
      {
         return this.count;
      }
      
      public function set _lh4996(param1:int) : void
      {
         this.count = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get _sc1342() : int
      {
         return this.count1;
      }
      
      public function set _sc1342(param1:int) : void
      {
         this.count1 = param1;
      }
      
      public function get _ks12861() : NavigationmenuModel
      {
         return this._jt10688;
      }
      
      public function set _ks12861(param1:NavigationmenuModel) : void
      {
         this._jt10688 = param1;
      }
      
      public function get _vn12441() : int
      {
         return this.count2;
      }
      
      public function set _vn12441(param1:int) : void
      {
         this.count2 = param1;
      }
      
      public function get _un6586() : int
      {
         return this.count3;
      }
      
      public function set _un6586(param1:int) : void
      {
         this.count3 = param1;
      }
      
      public function get _rx11081() : int
      {
         return this.count4;
      }
      
      public function set _rx11081(param1:int) : void
      {
         this.count4 = param1;
      }
      
      public function get _eb11619() : int
      {
         return this.count5;
      }
      
      public function set _eb11619(param1:int) : void
      {
         this.count5 = param1;
      }
      
      public function get _fq658() : int
      {
         return this.count6;
      }
      
      public function set _fq658(param1:int) : void
      {
         this.count6 = param1;
      }
      
      public function get _si7985() : Boolean
      {
         return this.isEnabled;
      }
      
      public function set _si7985(param1:Boolean) : void
      {
         this.isEnabled = param1;
      }
   }
}

