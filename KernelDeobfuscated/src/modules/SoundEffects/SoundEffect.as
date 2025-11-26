package src.modules.SoundEffects
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.media.*;
   
   public class SoundEffect extends MovieClip
   {
      
      private static const count:int = 16;
      
      protected var _name:String;
      
      protected var _ib13250:Sound;
      
      protected var count1:int;
      
      protected var _volume:Number;
      
      protected var count2:Number;
      
      protected var isEnabled:Boolean;
      
      protected var count3:int;
      
      protected var isEnabled1:Boolean;
      
      protected var _vf3978:SoundChannel;
      
      protected var _soundTransform:SoundTransform;
      
      private var count4:int = 0;
      
      private var count5:int = 0;
      
      private var count6:int = 0;
      
      private var isEnabled2:Boolean = false;
      
      public function SoundEffect(param1:String, param2:int = 0, param3:Number = 1, param4:Number = 0, param5:Boolean = false, param6:int = 0, param7:Boolean = true)
      {
         super();
         this._name = param1;
         this.count1 = param2;
         this._volume = param3 >= 0 && param3 <= 1 ? param3 : 0.5;
         this.count2 = param4 >= -1 && param4 <= 1 ? param4 : 0;
         this.isEnabled = param5;
         this.count3 = param6 * count;
         this.count6 = this.count3 + Math.random() * this.count3;
         this._soundTransform = new SoundTransform(this._volume,this.count2);
         this.isEnabled1 = param7;
      }
      
      public function _ck8211(param1:Sound) : void
      {
         this._ib13250 = param1;
      }
      
      public function _vj7763() : void
      {
         if(this.isEnabled)
         {
            this.addEventListener(Event.ENTER_FRAME,this.move);
         }
         else
         {
            this.playSound();
         }
      }
      
      public function playSound() : void
      {
         if(!this._ib13250)
         {
            return;
         }
         if(this.isEnabled2)
         {
            return;
         }
         this._vf3978 = this._ib13250.play(0,0,this._soundTransform);
         this._vf3978.addEventListener(Event.SOUND_COMPLETE,this.stop);
         this.isEnabled2 = true;
      }
      
      public function stopSound() : void
      {
         this.removeEventListener(Event.ENTER_FRAME,this.move);
         if(!this._vf3978)
         {
            return;
         }
         this._vf3978.stop();
         this._vf3978.removeEventListener(Event.SOUND_COMPLETE,this.stop);
         this._vf3978 = null;
         this.isEnabled2 = false;
      }
      
      public function isEnabled() : void
      {
         if(this._soundTransform == null)
         {
            return;
         }
         if(this._soundTransform.volume > 0)
         {
            this._soundTransform.volume = 0;
         }
         else
         {
            this._soundTransform.volume = this._volume;
         }
         if(this._vf3978 == null)
         {
            return;
         }
         this._vf3978.soundTransform = this._soundTransform;
      }
      
      protected function stop(param1:Event) : void
      {
         ++this.count4;
         this.isEnabled2 = false;
         if(this.count4 >= this.count1)
         {
            this.stopSound();
            return;
         }
         if(this.isEnabled)
         {
            this.addEventListener(Event.ENTER_FRAME,this.move);
         }
         else
         {
            this.playSound();
         }
      }
      
      protected function move(param1:Event) : void
      {
         ++this.count5;
         if(this.count5 > this.count6 && this.count4 <= this.count1)
         {
            this.count6 = this.count3 + Math.random() * this.count3;
            this.count5 = 0;
            this.removeEventListener(Event.ENTER_FRAME,this.move);
            this.stopSound();
            this.playSound();
         }
      }
      
      public function _aw11641(param1:SoundTransform) : void
      {
         if(!param1)
         {
            return;
         }
         this._vf3978.soundTransform = param1;
      }
      
      override public function get name() : String
      {
         return this._name;
      }
      
      public function get _gg8683() : Boolean
      {
         return this.isEnabled1;
      }
   }
}

