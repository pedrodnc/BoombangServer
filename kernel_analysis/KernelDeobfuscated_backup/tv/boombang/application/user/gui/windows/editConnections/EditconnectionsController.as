package src.tv.boombang.application.user.gui.windows.editConnections
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _kd5077
   {
      
      public function _kd5077()
      {
         super();
      }
      
      public static function _vx13870() : _sn4365
      {
         var _loc1_:_sn4365 = new _sn4365((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,_gd6593._ql11306);
         _loc1_.title = "windows.editConnections.title";
         _loc1_.description = "windows.editConnections.firstStepDescription";
         _loc1_.label = "windows.securityKey";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _bc15262() : _sn4365
      {
         var _loc1_:_sn4365 = new _sn4365((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,_gd6593._ql11306);
         _loc1_.title = "windows.editConnections.title";
         _loc1_.description = "windows.securityCodeWasIncorrect";
         _loc1_.label = "windows.securityKey";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _em6871() : _rj10079
      {
         var _loc1_:_rj10079 = new _rj10079((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,_gd6593._of6230);
         _loc1_.title = "windows.editConnections.title";
         _loc1_.text = "windows.checkingSecurityKey";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _ty10842() : _rj10079
      {
         var _loc1_:_rj10079 = new _rj10079((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,_gd6593._fi12639);
         _loc1_.title = "windows.editConnections.title";
         _loc1_.text = "windows.editConnections.unlockingConnections";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _sh10302() : _rj10079
      {
         var _loc1_:_rj10079 = new _rj10079((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","ErrorDataCard") as MovieClip,_gd6593._fq1822);
         _loc1_.title = "windows.editConnections.title";
         _loc1_.text = "serverRespondedWithError";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _je11018(param1:Object) : _wa4625
      {
         var _loc2_:_wa4625 = new _wa4625(param1,(_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","EditConnectionsWindow") as MovieClip,_gd6593._pb5870);
         _loc2_.title = "windows.editConnections.title";
         _loc2_._hm5004 = "windows.editConnections.currentConnections";
         _loc2_._dw12784 = "windows.editConnections.availableConnections";
         _loc2_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc2_;
      }
      
      public static function _jk1276(param1:String = "") : _bx11177
      {
         var _loc2_:_bx11177 = new _bx11177((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","ChangePasswordWindow") as MovieClip,_gd6593._qg7263);
         _loc2_._to10627 = param1;
         _loc2_.title = "windows.editConnections.title";
         _loc2_._ml14435 = "windows.editConnections.username";
         _loc2_._ih11223 = "windows.changePassword.newPassword";
         _loc2_._ed12820 = "windows.changePassword.repeatNewPassword";
         _loc2_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc2_;
      }
   }
}

