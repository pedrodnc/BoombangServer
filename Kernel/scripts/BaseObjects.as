package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public dynamic class BaseObjects extends MovieClip
   {
      
      protected var props:Array;
      
      protected var idPose:int;
      
      protected var owner:Boolean;
      
      protected var xmlTexts:XML;
      
      protected var descripcion:String;
      
      protected var nombre:String;
      
      protected var _flip:int;
      
      protected var integracionObjects:Object;
      
      public function BaseObjects()
      {
         super();
      }
      
      protected static function setHtmlTextInTextField(param1:TextField, param2:String) : void
      {
         param1.defaultTextFormat = getTextFormat(param1);
         param1.embedFonts = true;
         param1.htmlText = param2;
         param1.setTextFormat(getTextFormat(param1));
      }
      
      protected static function setTextInTextField(param1:TextField, param2:String) : void
      {
         param1.defaultTextFormat = getTextFormat(param1);
         param1.embedFonts = true;
         param1.text = param2;
      }
      
      private static function getTextFormat(param1:TextField) : TextFormat
      {
         var _loc2_:TextFormat = param1.getTextFormat();
         if(_loc2_.font == null)
         {
            _loc2_.font = "VAGRoundedBlack1";
         }
         if(_loc2_.font.charAt(_loc2_.font.length - 1) != "1")
         {
            _loc2_.font += "1";
         }
         return _loc2_;
      }
      
      public function init() : void
      {
      }
      
      public function loop() : void
      {
      }
      
      public function destroy() : void
      {
         this.integracionObjects = null;
         this.idPose = -1;
      }
      
      public function allowsFlip() : Boolean
      {
         return true;
      }
      
      public function setFlipped(param1:int) : void
      {
      }
      
      public function setProps(param1:Array) : void
      {
         this.props = param1;
      }
      
      public function setIdPose(param1:int) : void
      {
         this.idPose = param1;
      }
      
      public function setOwner(param1:Boolean) : void
      {
         this.owner = param1;
      }
      
      public function setXMLTexts(param1:XML) : void
      {
         this.xmlTexts = param1;
      }
      
      public function setIntegracionObjects(param1:Object) : void
      {
         this.integracionObjects = param1;
      }
      
      public function setPropiedadObject(param1:String) : void
      {
         this.descripcion = param1;
      }
      
      public function setNombre(param1:String) : void
      {
         this.nombre = param1;
      }
      
      public function setFlip(param1:int) : void
      {
         this._flip = param1;
      }
      
      public function getMovieClipEditObjects() : MovieClip
      {
         return null;
      }
      
      public function getReceiveClicks() : Boolean
      {
         return false;
      }
      
      public function onObjectClick(param1:MouseEvent) : void
      {
      }
      
      public function onAccionGenerica(param1:int, param2:int) : void
      {
      }
      
      public function _BaseObjectsInit() : void
      {
         this.init();
      }
      
      public function _BaseObjectsLoop() : void
      {
         this.loop();
      }
      
      public function _BaseObjectsDestroy() : void
      {
         this.destroy();
      }
      
      public function _BaseObjectsSetFlipped(param1:int) : void
      {
         this.setFlipped(param1);
      }
      
      public function _BaseObjectsAllowsFlip() : Boolean
      {
         return this.allowsFlip();
      }
      
      public function _BaseObjectsSetProps(param1:Array) : void
      {
         this.setProps(param1);
      }
      
      public function _BaseObjectsSetIdPose(param1:int) : void
      {
         this.setIdPose(param1);
      }
      
      public function _BaseObjectsSetOwner(param1:Boolean) : void
      {
         this.setOwner(param1);
      }
      
      public function _BaseObjectsSetXMLTexts(param1:XML) : void
      {
         this.setXMLTexts(param1);
      }
      
      public function _BaseObjectsGetMovieClipEditObjects() : MovieClip
      {
         return this.getMovieClipEditObjects();
      }
      
      public function _BaseObjectsGetReceiveClicks() : Boolean
      {
         return this.getReceiveClicks();
      }
      
      public function _BaseObjectsOnObjectClick(param1:MouseEvent) : void
      {
         return this.onObjectClick(param1);
      }
      
      public function _BaseObjectsOnAccionGenerica(param1:int, param2:int) : void
      {
         return this.onAccionGenerica(param1,param2);
      }
      
      public function _BaseObjectsSetIntegracionObjects(param1:Object) : void
      {
         this.setIntegracionObjects(param1);
      }
      
      public function _BaseObjectsSetPropiedadObjetc(param1:String) : void
      {
         this.setPropiedadObject(param1);
      }
      
      public function _BaseObjectsSetNombreObject(param1:String) : void
      {
         this.setNombre(param1);
      }
      
      public function _BaseObjectsSetFlipObject(param1:int) : void
      {
         this.setFlip(param1);
      }
   }
}

