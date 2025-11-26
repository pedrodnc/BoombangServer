package src.modules.privados.editObject
{
   import flash.display.MovieClip;
   import src.allData.scene.skins.nodeTagsSkins.*;
   import src.modules.privados._bx10683;
   import src.modules.privados.editObject.editableElements._tc4557;
   import src.utils.commonComponents.*;
   import src.utils.fichas._ox15379;
   
   public class _ae8391 extends _tu14278
   {
      
      private var _yl5610:_sy9767;
      
      private var _qs1150:XML;
      
      public function _ae8391(param1:MovieClip, param2:_ox15379, param3:Function, param4:_tc4557, param5:_sy9767, param6:Function, param7:Function, param8:Function, param9:Function, param10:Function, param11:_kg13542, param12:XML, param13:_bx10683)
      {
         this._yl5610 = param5;
         this._qs1150 = param12;
         super(param1,param2,param3,param4,param6,param7,param8,param9,param10,param11,param13);
      }
      
      override protected function _ej3288() : void
      {
         var _loc4_:int = 0;
         buttons = new Array();
         var _loc3_:Array = this._yl5610._da15170();
         while(_loc4_ < _on1025)
         {
            if(_loc4_ < _loc3_.length)
            {
               var _loc1_:_ys12811 = _ys12811(_loc3_[_loc4_]);
               var _loc2_:String = this._qs1150.attribute(null._lk8448);
               buttons.push(new _dr2789(_cw11838[_mq7915 + _loc4_],this._dv14444,null,false,null,null,null));
            }
            else
            {
               buttons.push(new _dr2789(_cw11838[_mq7915 + _loc4_],this._dv14444,"",false,null,null,null));
               _dr2789(buttons[_loc4_])._hu12389();
            }
            _loc4_++;
         }
      }
      
      override protected function _ts4259() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < _on1025)
         {
            if(buttons[_loc1_] != null && buttons[_loc1_] is _dr2789)
            {
               _dr2789(buttons[_loc1_]).destroy();
               buttons[_loc1_] = null;
            }
            _loc1_++;
         }
      }
      
      private function _dv14444(param1:_dr2789, param2:Object) : void
      {
         var _loc3_:_ys12811 = null;
         var _loc5_:int = 0;
         var _loc4_:Array = this._yl5610._da15170();
         while(_loc5_ < _loc4_.length)
         {
            _loc3_ = _ys12811(_loc4_[_loc5_]);
            if(_dr2789(buttons[_loc5_]) == param1)
            {
               _vk3473(_loc3_._mn6947);
            }
            _loc5_++;
         }
      }
      
      override protected function _ds3991() : void
      {
         var _loc1_:_ys12811 = null;
         var _loc3_:int = 0;
         var _loc2_:Array = this._yl5610._da15170();
         while(_loc3_ < _loc2_.length)
         {
            _loc1_ = _ys12811(_loc2_[_loc3_]);
            _loc1_._mn6947._vq3997(_loc1_._tk11635);
            _fb15680._eo13013(_loc1_._mn6947);
            _loc3_++;
         }
         _fb15680._rx12234(_qm2195());
         _fb15680._lh4081();
      }
   }
}

