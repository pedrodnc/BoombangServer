package src.modules.SoundEffects
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.media.*;
   
   public class SoundEffect extends MovieClip
   {
      
      private static const _gj11886:int = 16;
      
      protected var _name:String;
      
      protected var _ib13250:Sound;
      
      protected var _py3093:int;
      
      protected var _volume:Number;
      
      protected var _jn499:Number;
      
      protected var _aw4906:Boolean;
      
      protected var _ve12601:int;
      
      protected var _qe13676:Boolean;
      
      protected var _vf3978:SoundChannel;
      
      protected var _soundTransform:SoundTransform;
      
      private var _li9369:int = 0;
      
      private var _ae217:int = 0;
      
      private var _my11278:int = 0;
      
      private var _yp15371:Boolean = false;
      
      public function SoundEffect(param1:String, param2:int = 0, param3:Number = 1, param4:Number = 0, param5:Boolean = false, param6:int = 0, param7:Boolean = true)
      {
         super();
         this._name = param1;
         this._py3093 = param2;
         this._volume = param3 >= 0 && param3 <= 1 ? param3 : 0.5;
         this._jn499 = param4 >= -1 && param4 <= 1 ? param4 : 0;
         this._aw4906 = param5;
         this._ve12601 = param6 * _gj11886;
         this._my11278 = this._ve12601 + Math.random() * this._ve12601;
         this._soundTransform = new SoundTransform(this._volume,this._jn499);
         this._qe13676 = param7;
      }
      
      public function _ck8211(param1:Sound) : void
      {
         this._ib13250 = param1;
      }
      
      public function _vj7763() : void
      {
         if(this._aw4906)
         {
            this.addEventListener(Event.ENTER_FRAME,this._ma5624);
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
         if(this._yp15371)
         {
            return;
         }
         this._vf3978 = this._ib13250.play(0,0,this._soundTransform);
         this._vf3978.addEventListener(Event.SOUND_COMPLETE,this._by4924);
         this._yp15371 = true;
      }
      
      public function stopSound() : void
      {
         this.removeEventListener(Event.ENTER_FRAME,this._ma5624);
         if(!this._vf3978)
         {
            return;
         }
         this._vf3978.stop();
         this._vf3978.removeEventListener(Event.SOUND_COMPLETE,this._by4924);
         this._vf3978 = null;
         this._yp15371 = false;
      }
      
      public function _jo11635() : void
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
      
      protected function _by4924(param1:Event) : void
      {
         ++this._li9369;
         this._yp15371 = false;
         if(this._li9369 >= this._py3093)
         {
            this.stopSound();
            return;
         }
         if(this._aw4906)
         {
            this.addEventListener(Event.ENTER_FRAME,this._ma5624);
         }
         else
         {
            this.playSound();
         }
      }
      
      protected function _ma5624(param1:Event) : void
      {
         ++this._ae217;
         if(this._ae217 > this._my11278 && this._li9369 <= this._py3093)
         {
            this._my11278 = this._ve12601 + Math.random() * this._ve12601;
            this._ae217 = 0;
            this.removeEventListener(Event.ENTER_FRAME,this._ma5624);
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
         return this._qe13676;
      }
   }
}

