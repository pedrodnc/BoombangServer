package src.modules.antitimos.fichas
{
   import flash.display.MovieClip;
   import src.modules.chooseScene._nw11343;
   import src.modules.chooseScene.panelMariquita._ty11551;
   import src.utils.commonComponents.*;
   import src.utils.fichas._ox15379;
   
   public class _if3213 extends _yo4865
   {
      
      private static const _jn1194:String = "mcBotonOpcion_";
      
      private var _nw10895:Array;
      
      private var _uf1140:Array;
      
      private var _vh11432:Array;
      
      public function _if3213(param1:MovieClip, param2:_ox15379, param3:_ty11551, param4:_nw11343, param5:Array = null, param6:Array = null, param7:Function = null)
      {
         super(param1,param2,param3,param4,param7);
         this._vh11432 = param5;
         this._uf1140 = param6;
         this.init();
      }
      
      public function init() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:int = 0;
         this._nw10895 = new Array();
         while(_loc2_ < this._vh11432.length)
         {
            _loc1_ = _cw11838[_jn1194 + _loc2_];
            if(_loc1_ == null)
            {
               break;
            }
            this._nw10895.push(new _qo7568(_loc1_,this._vh11432[_loc2_],this._uf1140[_loc2_]));
            _loc2_++;
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:_qo7568 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._nw10895.length)
         {
            _loc1_ = this._nw10895[_loc2_];
            if(_loc1_ != null)
            {
               _loc1_.destroy();
               _loc1_ = null;
            }
            _loc2_++;
         }
         super.destroy();
      }
      
      override public function _db5584(param1:int, param2:int) : Boolean
      {
         return super._db5584(param1,param2);
      }
      
      override public function _wo15393() : void
      {
         var _loc1_:_qo7568 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._nw10895.length)
         {
            _loc1_ = this._nw10895[_loc2_];
            if(_loc1_ != null)
            {
               _loc1_._db5584();
            }
            _loc2_++;
         }
      }
      
      override public function _qn153() : void
      {
         var _loc1_:_qo7568 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._nw10895.length)
         {
            _loc1_ = this._nw10895[_loc2_];
            if(_loc1_ != null)
            {
               _loc1_._hu12389();
            }
            _loc2_++;
         }
      }
   }
}

