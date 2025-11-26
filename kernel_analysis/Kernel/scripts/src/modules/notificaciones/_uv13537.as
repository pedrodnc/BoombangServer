package src.modules.notificaciones
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Timer;
   import src.*;
   import src.allData.scene.typeEscenarios.*;
   import src.modules.notificaciones.fichas.*;
   
   public class _uv13537 extends EventDispatcher
   {
      
      public static const _di16158:String = "synchronize_bonus_time";
      
      private var _rs7559:MovieClip;
      
      private var _jj4065:_wc15106;
      
      private var _gh9645:_ql14014;
      
      private var _bt14084:_mb1251;
      
      private var _bt2734:_nk10584;
      
      private var _px10786:_je4126;
      
      private var _kb10536:Timer;
      
      private var _db14608:Number;
      
      public function _uv13537(param1:MovieClip, param2:_wc15106)
      {
         super();
         this._gh9645 = new _ql14014();
         this._bt14084 = new _mb1251();
         this._bt2734 = new _nk10584();
         this._jj4065 = param2;
         this._rs7559 = param1;
         this._db14608 = -1;
      }
      
      public function get _dn11747() : int
      {
         return this._jj4065._dn11747;
      }
      
      public function get _tk5014() : Number
      {
         return this._db14608;
      }
      
      public function _in4867() : void
      {
         var _loc1_:int = 0;
         if(!this._bt14084._jd12786)
         {
            return;
         }
         var _loc2_:_mr880 = this._bt14084._wm14109;
         if(_loc2_ == null)
         {
            return;
         }
         switch(this._jj4065._dn11747)
         {
            case _wc15106._wc8517:
               if(this._jj4065.chooseScene != null && _loc2_.type != _ql14014._bf10334)
               {
                  this._jj4065.chooseScene._vh4126(false);
               }
               this._pc9804();
               return;
            case _wc15106._kn1636:
               if(_loc2_.type == _ql14014._bf10334)
               {
                  this._pc9804();
               }
               return;
            case _wc15106._vg13561:
               if(this._jj4065._cu12135 == null)
               {
                  return;
               }
               _loc1_ = int(this._jj4065._cu12135._nr6929._ls5877.id);
               switch(_loc1_)
               {
                  case _it11308._sr6766:
                  case _it11308._jt6401:
                  case _it11308._ga7038:
                  case _it11308._ar4336:
                     this._pc9804();
                     break;
                  case _it11308._ii14714:
                     if(_loc2_.type == _ql14014._gd3627 || _loc2_.type == _ql14014._bf10334)
                     {
                        this._pc9804();
                     }
               }
               return;
               break;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
      }
      
      public function _bv5027() : void
      {
         var _loc1_:_je4126 = null;
         var _loc2_:Array = this._bt2734.stack;
         var _loc3_:int = int(_loc2_.length);
         var _loc4_:int = _loc3_ - 1;
         while(_loc4_ >= 0)
         {
            _loc1_ = _je4126(_loc2_[_loc4_]);
            this._bt2734._mm3622(_loc1_);
            _loc1_.close();
            _loc4_--;
         }
      }
      
      private function _pc9804() : void
      {
         var _loc1_:_je4126 = null;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(!this._bt14084._jd12786)
         {
            return;
         }
         var _loc4_:_mr880 = this._bt14084._wm14109;
         if(_loc4_.type != _ql14014._bf10334 && _loc4_.type != _ql14014._du11711 && Boolean(this._bt2734._ik12692(_loc4_.type)))
         {
            _loc1_ = this._bt2734._ck3170(_loc4_.type);
            _loc2_ = Boolean(int(_loc1_.data.data[0]));
            _loc3_ = Boolean(int(_loc4_.data[0]));
            if(!(_loc3_ && !_loc2_ || !_loc3_ && !_loc2_))
            {
               return;
            }
            this._bt2734._mm3622(_loc1_);
            _loc1_.close();
         }
         this._px10786 = _je4126._wp11031(_loc4_,this._rs7559,this);
         if(this._px10786 == null)
         {
            return;
         }
         this._px10786.addEventListener(_je4126._da10404,this._el4168);
         this._bt2734._yn12676(this._px10786);
         this._bt14084._vo11928(_loc4_);
      }
      
      private function _rp659(param1:_je4126) : void
      {
         this._px10786 = param1;
         this._px10786.removeEventListener(_je4126._da10404,this._el4168);
         this._bt2734._mm3622(this._px10786);
         this._px10786 = null;
      }
      
      private function _el4168(param1:Event) : void
      {
         var _loc2_:_je4126 = _je4126(param1.target);
         this._rp659(_loc2_);
      }
   }
}

