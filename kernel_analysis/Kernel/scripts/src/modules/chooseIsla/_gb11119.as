package src.modules.chooseIsla
{
   import src.allData.texts.*;
   
   public class _gb11119
   {
      
      private static const _vi10811:String = "chooseIsla";
      
      private static const _lp7321:String = "fichaLocaciones";
      
      private static const _vp3412:String = "capsulaInfo";
      
      private static const _bk3181:String = "createIsla";
      
      private static const _um5715:String = "FichasAmigosEnemigos";
      
      public var _jr3352:String;
      
      public var _aa11114:String;
      
      public var _hp10896:String;
      
      public var _xl6381:String;
      
      public var _yv13846:String;
      
      public var _lq9752:String;
      
      public var _rl13942:String;
      
      public var _db2403:String;
      
      public var _ea3499:String;
      
      public var _rr15466:String;
      
      public var _ot6592:String;
      
      public var _lq2956:String;
      
      public var _vm5382:String;
      
      public var _pr5012:String;
      
      public var _ow9263:String;
      
      public var _xw1569:String;
      
      public var _of3692:String;
      
      public var _iw8850:String;
      
      public var _ra9551:String;
      
      public var _rb15077:String;
      
      public var _rh10961:String;
      
      public var _dh8069:String;
      
      public var _ry200:String;
      
      public var _ml6269:String;
      
      public var _vb2709:String;
      
      public var _me2723:String;
      
      public var _vi14501:String;
      
      public var _ct15757:String;
      
      public var _xn12817:String;
      
      private var _ph8778:XML;
      
      private var _de11381:XML;
      
      private var _jo12455:XML;
      
      private var _xu8438:XML;
      
      private var _au487:XML;
      
      public function _gb11119()
      {
         super();
         this._ah13783();
         this._xl13887();
         this._wf14823();
         this._fd7527();
         this._jo15293();
         this._xf11205();
      }
      
      private function _ah13783() : void
      {
         this._ph8778 = new XML(_yh6510._eo5308[_vi10811].toXMLString());
         this._de11381 = new XML(this._ph8778[_lp7321].toXMLString());
         this._jo12455 = new XML(this._ph8778[_vp3412].toXMLString());
         this._xu8438 = new XML(this._ph8778[_bk3181].toXMLString());
         this._au487 = new XML(this._ph8778[_um5715].toXMLString());
      }
      
      private function _xf11205() : void
      {
         this._ph8778 = null;
         this._de11381 = null;
         this._jo12455 = null;
         this._xu8438 = null;
         this._au487 = null;
      }
      
      private function _xl13887() : void
      {
         this._jr3352 = this._de11381.attribute("localizaciones");
         this._aa11114 = this._de11381.attribute("volver");
         this._hp10896 = this._de11381.attribute("editar");
         this._xl6381 = this._de11381.attribute("addArea");
         this._yv13846 = this._de11381.attribute("nuevoNombre");
         this._lq9752 = this._de11381.attribute("borrarLocacion");
         this._rl13942 = this._de11381.attribute("Password");
         this._db2403 = this._de11381.attribute("ingresaPass");
         this._ea3499 = this._de11381.attribute("eliminarIslaBoton");
         this._rr15466 = this._de11381.attribute("descripcionPorDefecto");
      }
      
      private function _wf14823() : void
      {
         this._ot6592 = this._jo12455.attribute("estoEsTuIsla");
         this._lq2956 = this._jo12455.attribute("punch");
         this._vm5382 = this._jo12455.attribute("eliminarIsla");
         this._pr5012 = this._jo12455.attribute("cambiarNombre");
         this._ow9263 = this._jo12455.attribute("editarMensaje");
         this._xw1569 = this._jo12455.attribute("candado");
         this._of3692 = this._jo12455.attribute("passwordIncorrecto");
         this._iw8850 = this._jo12455.attribute("islaRepedida");
         this._ra9551 = this._jo12455.attribute("cancelar");
         this._rb15077 = this._jo12455.attribute("eliminarLocacion");
         this._rh10961 = this._jo12455.attribute("cambiarNombreLocacion");
      }
      
      private function _fd7527() : void
      {
         this._dh8069 = this._xu8438.attribute("etapa1Descripcion");
         this._ry200 = this._xu8438.attribute("etapa2Descripcion");
         this._vb2709 = this._xu8438.attribute("anterior");
         this._ml6269 = this._xu8438.attribute("siguiente");
         this._me2723 = this._xu8438.attribute("aceptar");
         this._vi14501 = this._xu8438.attribute("advertencia");
      }
      
      private function _jo15293() : void
      {
         this._ct15757 = this._au487.attribute("mejoresAmigos");
         this._xn12817 = this._au487.attribute("mejoresEnemigos");
      }
   }
}

