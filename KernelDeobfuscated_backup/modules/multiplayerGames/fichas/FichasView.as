package src.modules.multiplayerGames.fichas
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   import src.utils.fichas._wq1414;
   
   public class _de2080 extends _wq1414
   {
      
      protected static const _ma7824:String = "mcBoton";
      
      protected static const _lk7761:String = "mcMoneda";
      
      protected static const _el2728:String = "tfText";
      
      protected var _af7534:Array;
      
      protected var _pd13427:Array;
      
      public function _de2080(param1:MovieClip, param2:_ej7116, param3:Array = null, param4:Array = null)
      {
         super(param1,param2);
         this._vm3094(param2._cq6635,param2._ps5419,param3);
         this._mp5613(param2._kn11986,param2._fk13397);
         this._up513(param4);
      }
      
      private function _vm3094(param1:Array, param2:Array, param3:Array) : void
      {
         var _loc5_:int = 0;
         this._af7534 = new Array();
         while(_loc5_ < param1.length)
         {
            if(_cw11838[_ma7824 + _loc5_] != null)
            {
               var _loc4_:_qo7568 = new _qo7568(_cw11838[_ma7824 + _loc5_],param2[_loc5_],param1[_loc5_]);
               this._af7534.push(null);
               if(param3 != null && param3[_loc5_] == false)
               {
                  null._dy867 = false;
                  null.mouseEnabled = true;
               }
               null.addEventListener(MouseEvent.ROLL_OVER,this._ao12297,false,0,true);
               null.addEventListener(MouseEvent.ROLL_OUT,this._ao12297,false,0,true);
            }
            _loc5_++;
         }
      }
      
      private function _mp5613(param1:int, param2:int) : void
      {
         if(param1 > 0)
         {
            if(_cw11838[_lk7761] != null)
            {
               _yq8362._xl9503(TextField(_cw11838[_lk7761][_el2728]),param1.toString());
            }
         }
         if(param2 > 0)
         {
            if(_cw11838[_lk7761] != null)
            {
               _yq8362._xl9503(TextField(_cw11838[_lk7761][_el2728]),param2.toString());
            }
         }
      }
      
      private function _up513(param1:Array) : void
      {
         var _loc2_:_ca11681 = null;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this._pd13427 = new Array();
         _loc3_ = 0;
         for each(_loc4_ in param1)
         {
            if(_loc3_ >= this._af7534.length)
            {
               break;
            }
            this._pd13427[_loc3_] = null;
            if(_loc4_ != "")
            {
               _loc2_ = new _ca11681();
               _loc2_.text = _loc4_;
               _loc2_._xe10297 = _wk9007.LEFT;
               _loc2_.textColor = 16769248;
               _loc2_.backgroundColor = 16071997;
               _loc2_._ui11624 = 100;
               _loc2_.x = this._af7534[_loc3_].x + this._af7534[_loc3_].width - 20;
               _loc2_.y = this._af7534[_loc3_].y + this._af7534[_loc3_].height * 0.5;
               _loc2_._sl14850();
               _loc2_.visible = false;
               this._ie7655().addChild(_loc2_);
               this._pd13427[_loc3_] = _loc2_;
            }
            _loc3_++;
         }
      }
      
      public function _xk3471() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._af7534.length)
         {
            _qo7568(this._af7534[_loc1_])._hu12389();
            _loc1_++;
         }
      }
      
      public function _tb3023() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._af7534.length)
         {
            _qo7568(this._af7534[_loc1_])._db5584();
            _loc1_++;
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:int = 0;
         super.destroy();
         while(_loc1_ < this._af7534.length)
         {
            if(this._af7534[_loc1_] != null)
            {
               _qo7568(this._af7534[_loc1_]).destroy();
               this._af7534[_loc1_] = null;
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this._pd13427.length)
         {
            if(this._pd13427[_loc1_] != null)
            {
               this._pd13427[_loc1_].destroy();
               this._pd13427[_loc1_] = null;
            }
            _loc1_++;
         }
      }
      
      protected function _ao12297(param1:MouseEvent) : void
      {
         var _loc2_:int = int(this._af7534.indexOf(param1.target));
         if(_loc2_ >= 0 && _loc2_ < this._pd13427.length && this._pd13427[_loc2_] != null)
         {
            if(param1.type == MouseEvent.ROLL_OVER)
            {
               this._pd13427[_loc2_].visible = true;
            }
            else if(param1.type == MouseEvent.ROLL_OUT)
            {
               this._pd13427[_loc2_].visible = false;
            }
         }
      }
   }
}

