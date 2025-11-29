package src.person.animations
{
   import flash.display.MovieClip;
   import src.person.*;
   
   public class Animations
   {
      
      protected var _me14044:PersonAnimation;
      
      protected var _tv3848:MovieClip;
      
      protected var _gb9590:MovieClip;
      
      protected var count:int;
      
      protected var count1:int;
      
      protected var count2:int;
      
      protected var _fq11131:Function;
      
      protected var textString:String;
      
      protected var textString1:String;
      
      protected var count3:int;
      
      protected var isEnabled:Boolean;
      
      public function Animations(param1:PersonAnimation, param2:MovieClip, param3:int, param4:int, param5:Function)
      {
         super();
         this._me14044 = param1;
         this._tv3848 = param2;
         this.count = PersonModel._qc8808[param1.count1][param4][param3];
         this.count1 = this.count;
         this.count2 = param4;
         this._fq11131 = param5;
         this.init();
      }
      
      public function init(param1:Boolean = false) : void
      {
         this._ux14509();
         if(param1)
         {
            this.textString = PersonModel._hd10333[this.count] + "_" + PersonModel._ku2994[PersonModel._sp1959];
            this.textString1 = PersonModel._hd10333[this.count3] + "_" + PersonModel._ku2994[PersonModel._sp1959];
         }
         else
         {
            this.textString = PersonModel._hd10333[this.count] + "_" + PersonModel._ku2994[this.count2];
            this.textString1 = PersonModel._hd10333[this.count3] + "_" + PersonModel._ku2994[this.count2];
         }
         this._gb9590 = PersonController._ku11706(this._me14044,this.textString1);
         this._gb9590.scaleX = 1;
         if(this.isEnabled)
         {
            this._gb9590.scaleX = -1;
         }
         this._tv3848.addChild(this._gb9590);
      }
      
      public function _mf2390() : MovieClip
      {
         var count2:MovieClip = PersonController._ku11706(this._me14044,this.textString1,this._gb9590.currentFrame);
         count2.scaleX = this._gb9590.scaleX;
         return count2;
      }
      
      protected function _ux14509() : void
      {
         this.isEnabled = false;
         this.count3 = this.count;
         if(this.count == PersonModel._md2772)
         {
            this.count3 = PersonModel._xk5541;
            this.isEnabled = true;
         }
         else if(this.count == PersonModel._wk7520)
         {
            this.count3 = PersonModel._in12705;
            this.isEnabled = true;
         }
         else if(this.count == PersonModel._hf5023)
         {
            this.count3 = PersonModel._xw4775;
            this.isEnabled = true;
         }
      }
      
      protected function _xb9909() : Boolean
      {
         if(this._gb9590.currentFrame == this._gb9590.totalFrames)
         {
            return true;
         }
         return false;
      }
      
      protected function _dx13345() : Boolean
      {
         if(this._gb9590.currentFrame == this._gb9590.totalFrames)
         {
            if(this._fq11131 != null)
            {
               this._fq11131(this.count1);
            }
            return true;
         }
         return false;
      }
      
      public function loop() : void
      {
      }
      
      public function destroy() : void
      {
         this._gb9590.stop();
         this._tv3848.removeChild(this._gb9590);
      }
      
      public function _go9677() : int
      {
         return this.count1;
      }
   }
}

