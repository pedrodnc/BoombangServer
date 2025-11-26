package
{
   import flash.display.MovieClip;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.system.*;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public dynamic class BaseEscenario extends MovieClip
   {
      
      private var _integracionEscenarios:Object;
      
      private var _sounds:Array;
      
      private var _soundsPlayed:Boolean;
      
      public var xmlTexts:XML;
      
      public var flag:Boolean = false;
      
      public function BaseEscenario()
      {
         this._sounds = new Array();
         super();
      }
      
      protected static function setTextInTextField(param1:TextField, param2:String) : void
      {
         param1.embedFonts = true;
         var _loc3_:TextFormat = param1.getTextFormat();
         if(_loc3_.font == null)
         {
            _loc3_ = param1.defaultTextFormat;
         }
         if(_loc3_.font.charAt(_loc3_.font.length - 1) != "1")
         {
            _loc3_.font += "1";
            param1.defaultTextFormat = _loc3_;
            param1.setTextFormat(_loc3_);
         }
         param1.text = param2;
      }
      
      public function get integracionEscenarios() : Object
      {
         return this._integracionEscenarios;
      }
      
      public function set integracionEscenarios(param1:Object) : void
      {
         this._integracionEscenarios = param1;
         this.playSounds();
      }
      
      public function init() : void
      {
      }
      
      public function loop() : void
      {
      }
      
      public function destroy() : void
      {
         this.integracionEscenarios.stopAudio();
      }
      
      public function getTeleports() : Array
      {
         return null;
      }
      
      public function playSounds() : void
      {
         var _loc1_:int = 0;
         if(Boolean(this.integracionEscenarios) && !this._soundsPlayed)
         {
            _loc1_ = 0;
            while(_loc1_ < this._sounds.length)
            {
               this.integracionEscenarios.playAudio(this._sounds[_loc1_].id,this._sounds[_loc1_].loop);
               _loc1_++;
            }
            this._soundsPlayed = true;
         }
      }
      
      public function addSound(param1:Object) : void
      {
         this._sounds.push(param1);
      }
      
      public function reproducirSonido(param1:Sound) : void
      {
         var _loc2_:SoundChannel = null;
         if(Boolean(Capabilities.hasAudio) && Boolean(Capabilities.hasMP3))
         {
            try
            {
               _loc2_ = param1.play();
            }
            catch(ex:*)
            {
            }
         }
      }
      
      public function osoPunch() : void
      {
      }
      
      public function _BaseEscenarioInit() : void
      {
         this.init();
      }
      
      public function _BaseEscenarioLoop() : void
      {
         this.loop();
      }
      
      public function _BaseEscenarioDestroy() : void
      {
         this.destroy();
      }
      
      public function _BaseEscenarioGetTeleports() : Array
      {
         return this.getTeleports();
      }
      
      public function _BaseEscenarioOsoPunch() : void
      {
         this.osoPunch();
      }
   }
}

