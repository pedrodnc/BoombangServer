package src.person.pociones
{
   import src.person.*;
   import src.utils.*;
   
   public class PocionesUtils extends PocionesModel
   {
      
      public static const textString:String = "frame_ouch";
      
      public function PocionesUtils()
      {
         super();
      }
      
      override protected function _bx10099() : void
      {
         try
         {
            _on2519._yf7634(textString);
         }
         catch(e:Error)
         {
         }
         super._bx10099();
      }
      
      override protected function stop() : void
      {
         _fk15228 = _ym6664.getFrascoById(_ui15823);
         _ap13346 = _ym6664.getAnimationById(_td3002);
         _ij6149 = PersonController._ku11706(_py12359,"down_ouch");
         _ap13346.gotoAndStop(1);
         _sk8948.addChild(_ap13346);
         _on2519 = new UtilsUtils(_fk15228);
         _on2519._ah6327(_da7167,_pl13205);
         _on2519._ah6327(textString,this._wi12003);
      }
      
      override protected function stop1() : void
      {
      }
      
      override protected function _fj12172() : void
      {
         _sk8948.addChild(_fk15228);
         _fk15228.gotoAndPlay(_ar6424);
      }
      
      private function _wi12003() : void
      {
         _ap13346.avatar.addChild(_ij6149);
         _ij6149.play();
         _dq696.visible = false;
         _on2519._yf7634(textString);
      }
      
      override protected function move() : void
      {
         _py12359.isEnabled4 = true;
         _py12359.isEnabled5 = true;
         _py12359.isEnabled6 = true;
         _py12359.isEnabled7 = true;
         _py12359.isEnabled8 = true;
         _py12359.isEnabled9 = true;
         _py12359.isEnabled10 = true;
         if(_sk8948.contains(_ap13346))
         {
            _sk8948.removeChild(_ap13346);
         }
         _ap13346.gotoAndStop(1);
         _dq696.visible = true;
         super.move();
      }
      
      override protected function _mb610() : void
      {
         _py12359.isEnabled4 = true;
         _py12359.isEnabled5 = true;
         _py12359.isEnabled6 = true;
         _py12359.isEnabled7 = true;
         _py12359.isEnabled8 = true;
         _py12359.isEnabled9 = true;
         _py12359.isEnabled10 = true;
         move();
      }
   }
}

