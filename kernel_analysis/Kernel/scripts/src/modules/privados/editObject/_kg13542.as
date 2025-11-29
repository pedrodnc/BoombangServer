package src.modules.privados.editObject
{
   import src.allData.texts.*;
   
   public class _kg13542
   {
      
      private var _lr3404:String;
      
      public var _qn9498:String;
      
      public var _kk7385:String;
      
      public var _tr9125:String;
      
      public var _us5816:String;
      
      public var _ow2382:Array;
      
      public var VOLVER:String;
      
      public var _rk581:String;
      
      public var _ns12341:String;
      
      public var CURRENT:String;
      
      public var _mf15772:String;
      
      public function _kg13542()
      {
         this._lr3404 = "editObjetos";
         super();
         var _loc1_:XML = new XML(_yh6510._eo5308[this._lr3404].toXMLString());
         this._qn9498 = _loc1_.attribute("moverObjeto");
         this._kk7385 = _loc1_.attribute("tamNormal");
         this._tr9125 = _loc1_.attribute("tamSmall");
         this._us5816 = _loc1_.attribute("tamBig");
         this.VOLVER = _loc1_.attribute("volver");
         this._ow2382 = [_loc1_.attribute("colores"),_loc1_.attribute("quitar"),_loc1_.attribute("voltear"),_loc1_.attribute("tamanio")];
         this._rk581 = _loc1_.attribute("restaurar");
         this._ns12341 = _loc1_.attribute("personalizar");
         this.CURRENT = _loc1_.attribute("curentSkin");
         this._mf15772 = _loc1_.attribute("onlyMember");
      }
   }
}

