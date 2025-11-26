package src.allData.scene.skins.managerObjectSkineables
{
   import flash.utils.*;
   import src.allData.color.*;
   import src.allData.scene.skins.nodeTagsSkins.*;
   
   public class ManagerobjectskineablesController
   {
      
      public var _pq6113:int;
      
      public var _qy4653:int;
      
      public var _kr4569:Array;
      
      public var _of5759:Array;
      
      public var colors:Array;
      
      public function ManagerobjectskineablesController(param1:int, param2:int, param3:Array, param4:Array, param5:Array, param6:Array)
      {
         var _loc7_:int = 0;
         super();
         this._pq6113 = param1;
         this._qy4653 = param2;
         this._kr4569 = param3;
         this._of5759 = param4;
         this.colors = new Array();
         while(_loc7_ < param5.length)
         {
            this.colors.push(ColorModel._kl14169(param5[_loc7_],param6[_loc7_]));
            _loc7_++;
         }
      }
      
      public static function _qe13252(param1:NodetagsskinsController, param2:int) : ManagerobjectskineablesController
      {
         var _loc3_:NodetagsskinsController = null;
         var _loc4_:int = 0;
         var _loc5_:NodetagsskinsController = null;
         var _loc6_:NodetagsskinsController = null;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc9_:Dictionary = null;
         var _loc10_:int = 0;
         var _loc11_:NodetagsskinsModel = null;
         var _loc16_:Boolean = false;
         var _loc17_:int = 0;
         var _loc12_:Array = new Array();
         var _loc13_:Array = new Array();
         var _loc14_:Array = new Array();
         var _loc15_:ManagerobjectskineablesController = new ManagerobjectskineablesController(0,0,[],[],[],[]);
         _loc15_._pq6113 = param1.id;
         _loc15_._qy4653 = param2;
         while(_loc17_ < param1.templates.length)
         {
            _loc3_ = NodetagsskinsController(param1.templates[_loc17_]);
            if(_loc3_.id == param2 && !_loc16_)
            {
               _loc16_ = true;
               _loc4_ = 0;
               while(_loc4_ < _loc3_.elements.length)
               {
                  _loc5_ = NodetagsskinsController(_loc3_.elements[_loc4_]);
                  _loc12_.push(_loc5_.id);
                  _loc6_ = NodetagsskinsController(_loc5_.skins[0]);
                  _loc13_.push(_loc6_.id);
                  _loc7_ = _loc6_.skin._kr1527;
                  _loc8_ = new Array();
                  _loc9_ = new Dictionary();
                  _loc10_ = 0;
                  while(_loc10_ < _loc7_.length)
                  {
                     _loc11_ = NodetagsskinsModel(_loc7_[_loc10_]);
                     if(_loc11_._un11300 != -1)
                     {
                        if(_loc9_[String(_loc11_._un11300)] == null)
                        {
                           _loc8_.push(_loc11_._tk11635._iu12125());
                           _loc9_[String(_loc11_._un11300)] = _loc11_._tk11635;
                        }
                     }
                     _loc10_++;
                  }
                  _loc14_.push(_loc8_);
                  _loc4_++;
               }
            }
            _loc17_++;
         }
         _loc15_._kr4569 = _loc12_;
         _loc15_._of5759 = _loc13_;
         _loc15_.colors = _loc14_;
         return _loc15_;
      }
      
      public function _fq13299(param1:int) : int
      {
         var _loc2_:int = int(this._kr4569.indexOf(param1));
         if(_loc2_ >= 0)
         {
            return this._of5759[_loc2_];
         }
         return -1;
      }
      
      public function _ng1767(param1:int) : Array
      {
         var _loc4_:Array = new Array();
         var _loc5_:int = int(this._kr4569.indexOf(param1));
         if(_loc5_ >= 0)
         {
            var _loc2_:Array = this.colors[_loc5_];
            var _loc3_:int = 0;
            while(0 < null.length)
            {
               _loc4_.push(ColorModel(null[0])._iu12125());
               _loc3_++;
            }
         }
         return _loc4_;
      }
      
      public function _os7047(param1:int, param2:int, param3:Array) : Boolean
      {
         var _loc4_:int = int(this._kr4569.indexOf(param1));
         if(_loc4_ >= 0)
         {
            this._of5759[_loc4_] = param2;
            this.colors[_loc4_] = param3;
            return true;
         }
         return false;
      }
      
      public function _iu12125() : ManagerobjectskineablesController
      {
         var _loc1_:int = 0;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Array = new Array();
         _loc1_ = 0;
         while(_loc1_ < this._kr4569.length)
         {
            _loc4_.push(this._kr4569[_loc1_]);
            _loc1_++;
         }
         var _loc5_:Array = new Array();
         _loc1_ = 0;
         while(_loc1_ < this._of5759.length)
         {
            _loc5_.push(this._of5759[_loc1_]);
            _loc1_++;
         }
         var _loc6_:Array = new Array();
         _loc1_ = 0;
         while(_loc1_ < this.colors.length)
         {
            _loc6_.push(new Array());
            _loc2_ = this.colors[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               _loc6_[_loc1_].push(ColorModel(_loc2_[_loc3_])._iu12125());
               _loc3_++;
            }
            _loc1_++;
         }
         var _loc7_:ManagerobjectskineablesController = new ManagerobjectskineablesController(this._pq6113,this._qy4653,_loc4_,_loc5_,[],[]);
         _loc7_.colors = _loc6_;
         return _loc7_;
      }
   }
}

