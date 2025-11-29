package src.utils.boombang.TakePhoto
{
   import src.allData.texts.*;
   
   public class _qs10251
   {
      
      private static const _au9771:String = "takePhoto";
      
      public var _rv5906:String;
      
      public var _pe7262:String;
      
      public var _vo9020:String;
      
      public var _cn11160:String;
      
      public var _fb11378:String;
      
      public var _bo7789:String;
      
      public var _my6499:String;
      
      public var _fc7168:String;
      
      public var _ky9343:String;
      
      public var _oo9812:String;
      
      public var _qh5790:String;
      
      public var _ci4832:String;
      
      public var _fy9814:String;
      
      public var _lq2818:String;
      
      public var _pi12935:String;
      
      public var _mi6427:String;
      
      public var _pg5961:String;
      
      private var _jj6529:XML;
      
      public function _qs10251()
      {
         super();
         this._ah13783();
         this._qc13224();
         this._xf11205();
      }
      
      private function _ah13783() : void
      {
         this._jj6529 = new XML(_yh6510._eo5308[_au9771].toXMLString());
      }
      
      private function _xf11205() : void
      {
         this._jj6529 = null;
      }
      
      private function _qc13224() : void
      {
         this._rv5906 = this._jj6529.attribute("fotografiar");
         this._pe7262 = this._jj6529.attribute("cancelar");
         this._vo9020 = this._jj6529.attribute("enviando");
         this._cn11160 = this._jj6529.attribute("verFoto");
         this._fb11378 = this._jj6529.attribute("cerrar");
         this._bo7789 = this._jj6529.attribute("fichaAcercaTitulo");
         this._my6499 = this._jj6529.attribute("fichaAcercaItem1");
         this._fc7168 = this._jj6529.attribute("fichaAcercaItem2");
         this._ky9343 = this._jj6529.attribute("fichaAcercaItem3");
         this._oo9812 = this._jj6529.attribute("fichaAcercaItem4");
         this._qh5790 = this._jj6529.attribute("fichaEndTitulo");
         this._ci4832 = this._jj6529.attribute("fichaEndItem1");
         this._fy9814 = this._jj6529.attribute("fichaEndItem2");
         this._lq2818 = this._jj6529.attribute("fichaEndItem3");
         this._pi12935 = this._jj6529.attribute("fichaErrorTitulo");
         this._mi6427 = this._jj6529.attribute("fichaErrorItem1");
         this._pg5961 = this._jj6529.attribute("fichaErrorItem2");
      }
   }
}

