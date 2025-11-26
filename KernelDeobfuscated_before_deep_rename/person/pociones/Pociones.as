package src.person.pociones
{
   import src.person.*;
   
   public class Pociones extends PocionesModel
   {
      
      public function Pociones()
      {
         super();
      }
      
      override protected function _hp9614() : void
      {
         _fk15228 = _ym6664.getFrascoById(_to12492);
         _ap13346 = _ym6664.getAnimationById(_ol13023);
         _ij6149 = PersonController._ku11706(_py12359,"down_idle");
         _ap13346.stop();
         _ap13346.avatar.addChild(_ij6149);
         _sk8948.addChild(_ap13346);
         _dq696.visible = false;
      }
      
      override protected function _pm8497() : void
      {
         super._pm8497();
         _js7773._dc14886._eo493();
      }
      
      override protected function _ui5649() : void
      {
      }
      
      override protected function _mb610() : void
      {
      }
   }
}

