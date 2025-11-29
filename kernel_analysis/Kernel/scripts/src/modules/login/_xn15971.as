package src.modules.login
{
   import src.allData.*;
   import src.allData.texts.*;
   
   public class _xn15971
   {
      
      private static const _nr14064:String = "fichaAyudaCodigo";
      
      public var _tv2439:String;
      
      public var _eg5797:String;
      
      public var _qt13688:String;
      
      public var _bu299:String;
      
      private var _ya14694:XML;
      
      public function _xn15971()
      {
         super();
         this._ah13783();
         this._ra15698();
         this._xf11205();
      }
      
      private function _ah13783() : void
      {
         this._ya14694 = new XML(_yh6510._eo5308[_nr14064].toXMLString());
      }
      
      private function _xf11205() : void
      {
         this._ya14694 = null;
      }
      
      private function _ra15698() : void
      {
         this._tv2439 = this._ya14694.attribute("titulo");
         this._eg5797 = this._ya14694.attribute("item1");
         this._qt13688 = this._ya14694.attribute("item2");
         this._bu299 = this._ya14694.attribute("item3");
         if(_hv12530.getInstance()._wb8182())
         {
            this._qt13688 = this._ya14694.attribute("item4");
         }
      }
   }
}

