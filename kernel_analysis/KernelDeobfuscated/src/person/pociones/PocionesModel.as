package src.person.pociones
{
   import flash.display.*;
   import flash.geom.*;
   import src.allData.*;
   import src.person.*;
   
   public class PocionesModel extends PocionesModel
   {
      
      private var _kq408:MovieClip;
      
      public function PocionesModel()
      {
         super();
      }
      
      override protected function stop() : void
      {
         _fk15228 = _ym6664.getFrascoById(count3);
         _ap13346 = _ym6664.getAnimationById(_et12848);
         _ij6149 = PersonController._ku11706(_py12359,"down_idle");
         this._kq408 = _ap13346.getChildByName("mcNube") as MovieClip;
         _ap13346.gotoAndStop(1);
         this._kq408.gotoAndStop(1);
         _ap13346.avatar.addChild(_ij6149);
      }
      
      override protected function stop1() : void
      {
         _ap13346 = _ym6664.getQuitAnimationById(_et12848);
         _ij6149 = PersonController._ku11706(_py12359,"down_idle");
         _ap13346.avatar.addChild(_ij6149);
         _ap13346.stop();
         _sk8948.addChild(_ap13346);
         _dq696.visible = false;
      }
      
      override protected function _lp2409() : void
      {
         _sk8948.addChild(_ap13346);
         _bx3898.addChild(this._kq408);
         _ap13346.gotoAndPlay(1);
         this._kq408.gotoAndPlay(1);
         _dq696.visible = false;
         super._lp2409();
      }
      
      override protected function move() : void
      {
         _py12359.isEnabled4 = true;
         _py12359.isEnabled5 = true;
         _py12359.isEnabled6 = true;
         _py12359.isEnabled7 = true;
         _py12359.isEnabled8 = true;
         _py12359.isEnabled9 = false;
         _py12359.isEnabled10 = true;
         var count2:ColorTransform = new ColorTransform();
         count2.redMultiplier = 0.5;
         count2.greenMultiplier = 0.5;
         count2.blueMultiplier = 0.5;
         _dq696.transform.colorTransform = count2;
         _dq696.visible = true;
         if(_sk8948.contains(_ap13346))
         {
            _sk8948.removeChild(_ap13346);
         }
         super.move();
      }
      
      override protected function _ys2213() : void
      {
         _py12359.isEnabled4 = true;
         _py12359.isEnabled5 = true;
         _py12359.isEnabled6 = true;
         _py12359.isEnabled7 = true;
         _py12359.isEnabled8 = true;
         _py12359.isEnabled9 = false;
         _py12359.isEnabled10 = true;
         if(_py12359.id == UserSession.getInstance().id)
         {
            _js7773._dc14886._hv107();
            _js7773._dc14886._ch6820();
            _js7773._dc14886._ha10019();
         }
         this._kq408.gotoAndStop(this._kq408.totalFrames);
         _bx3898.addChild(this._kq408);
         var count2:ColorTransform = new ColorTransform();
         count2.redMultiplier = 0.5;
         count2.greenMultiplier = 0.5;
         count2.blueMultiplier = 0.5;
         _dq696.transform.colorTransform = count2;
         _dq696.visible = true;
      }
      
      override protected function _mb610() : void
      {
         this._kq408.visible = false;
         super._mb610();
      }
      
      override protected function move() : void
      {
         _on2519._yf7634(_da7167);
         _ap13346.stop();
         if(_sk8948.contains(_ap13346))
         {
            _sk8948.removeChild(_ap13346);
         }
         _dq696.visible = true;
         super.move();
      }
   }
}

