package src.utils.boombang.TakePhoto
{
   import src.allData.texts.*;
   
   public class TakephotoModel
   {
      
      private static const textString:String = "takePhoto";
      
      public var textString1:String;
      
      public var textString2:String;
      
      public var textString3:String;
      
      public var textString4:String;
      
      public var textString5:String;
      
      public var textString6:String;
      
      public var textString7:String;
      
      public var textString8:String;
      
      public var textString9:String;
      
      public var textString10:String;
      
      public var textString11:String;
      
      public var textString12:String;
      
      public var textString13:String;
      
      public var textString14:String;
      
      public var textString15:String;
      
      public var textString16:String;
      
      public var textString17:String;
      
      private var _jj6529:XML;
      
      public function TakephotoModel()
      {
         super();
         this._ah13783();
         this.stop();
         this._xf11205();
      }
      
      private function _ah13783() : void
      {
         this._jj6529 = new XML(TextManager._eo5308[textString].toXMLString());
      }
      
      private function _xf11205() : void
      {
         this._jj6529 = null;
      }
      
      private function stop() : void
      {
         this.textString1 = this._jj6529.attribute("fotografiar");
         this.textString2 = this._jj6529.attribute("cancelar");
         this.textString3 = this._jj6529.attribute("enviando");
         this.textString4 = this._jj6529.attribute("verFoto");
         this.textString5 = this._jj6529.attribute("cerrar");
         this.textString6 = this._jj6529.attribute("fichaAcercaTitulo");
         this.textString7 = this._jj6529.attribute("fichaAcercaItem1");
         this.textString8 = this._jj6529.attribute("fichaAcercaItem2");
         this.textString9 = this._jj6529.attribute("fichaAcercaItem3");
         this.textString10 = this._jj6529.attribute("fichaAcercaItem4");
         this.textString11 = this._jj6529.attribute("fichaEndTitulo");
         this.textString12 = this._jj6529.attribute("fichaEndItem1");
         this.textString13 = this._jj6529.attribute("fichaEndItem2");
         this.textString14 = this._jj6529.attribute("fichaEndItem3");
         this.textString15 = this._jj6529.attribute("fichaErrorTitulo");
         this.textString16 = this._jj6529.attribute("fichaErrorItem1");
         this.textString17 = this._jj6529.attribute("fichaErrorItem2");
      }
   }
}

