package src.modules.doors
{
   import src.allData.texts.*;
   
   public class _ks297
   {
      
      private static const _ea2315:String = "fichaLlaves";
      
      public var _ns11408:String;
      
      public var _jx6057:String;
      
      public var _pw1188:String;
      
      public var _xg4232:String;
      
      public var YES:String;
      
      public var NO:String;
      
      public var _nx11037:Array;
      
      public var _ac1443:String;
      
      public var _nq12644:String;
      
      public var _qu747:String;
      
      public var _by12210:String;
      
      private var _yg274:XML;
      
      public function _ks297()
      {
         super();
         this._yg274 = new XML(_yh6510._eo5308[_ea2315].toXMLString());
         this._ns11408 = this._yg274.attribute("puertaCerradaTitulo");
         this._jx6057 = this._yg274.attribute("puertaCerradaDesc");
         this._pw1188 = this._yg274.attribute("abrirPuerta");
         this.YES = this._yg274.attribute("yes");
         this.NO = this._yg274.attribute("no");
         this._xg4232 = this._yg274.attribute("noTienesLlave");
         this._nx11037 = new Array();
         this._nx11037.push(this._yg274.attribute("buscaEnLugar0"));
         this._nx11037.push(this._yg274.attribute("buscaEnLugar1"));
         this._nx11037.push(this._yg274.attribute("buscaEnLugar2"));
         this._nx11037.push(this._yg274.attribute("buscaEnLugar3"));
         this._nx11037.push(this._yg274.attribute("buscaEnLugar4"));
         this._nx11037.push(this._yg274.attribute("buscaEnLugar5"));
         this._nx11037.push(this._yg274.attribute("buscaEnLugar6"));
         this._nx11037.push(this._yg274.attribute("buscaEnLugar7"));
         this._nx11037.push(this._yg274.attribute("buscaEnLugar8"));
         this._nx11037.push(this._yg274.attribute("buscaEnLugar9"));
         this._nx11037.push(this._yg274.attribute("buscaEnLugar10"));
         this._nx11037.push(this._yg274.attribute("buscaEnLugar11"));
         this._nx11037.push(this._yg274.attribute("buscaEnLugar12"));
         this._nx11037.push(this._yg274.attribute("buscaEnLugar13"));
         this._nx11037.push(this._yg274.attribute("buscaEnLugar14"));
         this._ac1443 = this._yg274.attribute("puertaAbierta");
         this._nq12644 = this._yg274.attribute("hazUsadoLlaveEnPuerta");
         this._qu747 = this._yg274.attribute("hazClickParaEntrar");
         this._by12210 = this._yg274.attribute("errorAlAbrirPuerta");
      }
   }
}

