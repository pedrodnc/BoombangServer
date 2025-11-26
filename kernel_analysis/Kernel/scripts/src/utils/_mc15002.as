package src.utils
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import src.config.*;
   
   public class _mc15002
   {
      
      private static var _uy14773:Array = new Array();
      
      public function _mc15002()
      {
         super();
      }
      
      public static function _vt11823(param1:MovieClip, param2:String, param3:Boolean = false) : void
      {
         var _loc4_:_gx586 = null;
         if(_cc7688._sq6072)
         {
            _loc4_ = new _gx586();
            _loc4_.movieClip = param1;
            _loc4_._ls12205 = param2;
            _uy14773.push(_loc4_);
            _loc4_.gotoAndPlay = param3;
         }
         else if(param3)
         {
            param1.gotoAndPlay(param2);
         }
         else
         {
            param1.gotoAndStop(param2);
         }
      }
      
      public static function _po13517() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:_gx586 = null;
         if(!_cc7688._sq6072)
         {
            return;
         }
         while(_uy14773.length > 0)
         {
            _loc2_ = _uy14773.splice(0,1)[0];
            _loc1_ = _loc2_.movieClip;
            if(_loc1_ != null && Boolean(_hasFrameLabel(_loc1_,_loc2_._ls12205)))
            {
               if(_loc2_.gotoAndPlay)
               {
                  _loc1_.gotoAndPlay(_loc2_._ls12205);
               }
               else
               {
                  _loc1_.gotoAndStop(_loc2_._ls12205);
               }
            }
         }
      }
      
      public static function _an14734() : void
      {
         if(!_cc7688._sq6072)
         {
            return;
         }
         _uy14773 = new Array();
      }
      
      private static function _hasFrameLabel(param1:MovieClip, param2:String) : Boolean
      {
         var _loc4_:FrameLabel = null;
         var _loc3_:Array = param1.currentLabels;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.name == param2)
            {
               return true;
            }
         }
         return false;
      }
   }
}

import flash.display.MovieClip;

class _gx586
{
   
   public var movieClip:MovieClip;
   
   public var _ls12205:String;
   
   public var gotoAndPlay:Boolean;
   
   public function _gx586()
   {
      super();
   }
}
