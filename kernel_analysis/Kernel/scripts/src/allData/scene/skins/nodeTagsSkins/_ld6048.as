package src.allData.scene.skins.nodeTagsSkins
{
   import src.allData.scene.skins.managerObjectSkineables._ui16110;
   
   public class _ld6048
   {
      
      public var id:int;
      
      public var name:String;
      
      public var templates:Array;
      
      public function _ld6048(param1:int, param2:String, param3:Array)
      {
         super();
         this.id = param1;
         this.name = param2;
         this.templates = param3;
      }
      
      public function _iu12125() : _ld6048
      {
         var _loc2_:int = 0;
         var _loc1_:Array = new Array();
         while(_loc2_ < this.templates.length)
         {
            _loc1_.push(_hf3886(this.templates[_loc2_])._iu12125());
            _loc2_++;
         }
         return new _ld6048(this.id,this.name,_loc1_);
      }
      
      public function _cv8567() : Array
      {
         var _loc2_:int = 0;
         var _loc1_:Array = new Array();
         while(_loc2_ < this.templates.length)
         {
            _loc1_.push(_hf3886(this.templates[_loc2_]).name);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function _th14761(param1:_hf3886, param2:int) : void
      {
         this.templates.splice(param2,0,param1);
      }
      
      public function _lt8614(param1:int) : _hf3886
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.templates.length)
         {
            if(_hf3886(this.templates[_loc2_]).id == param1)
            {
               return _hf3886(this.templates[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
      
      public function _jk10868(param1:_ui16110, param2:Boolean) : Array
      {
         var _loc3_:_hf3886 = this._lt8614(param1._qy4653);
         return _loc3_._jk10868(param1,param2);
      }
   }
}

