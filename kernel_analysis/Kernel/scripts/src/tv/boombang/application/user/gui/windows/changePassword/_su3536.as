package src.tv.boombang.application.user.gui.windows.changePassword
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _su3536
   {
      
      public function _su3536()
      {
         super();
      }
      
      public static function _vx13870() : _sn4365
      {
         var _loc1_:_sn4365 = new _sn4365((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,_my2463._ql11306);
         _loc1_.title = "windows.changePassword.changePassword";
         _loc1_.description = "windows.changePassword.firstStepDescription";
         _loc1_.label = "windows.securityKey";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _bc15262() : _sn4365
      {
         var _loc1_:_sn4365 = new _sn4365((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,_my2463._ql11306);
         _loc1_.title = "windows.changePassword.changePassword";
         _loc1_.description = "windows.securityCodeWasIncorrect";
         _loc1_.label = "windows.securityKey";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _em6871() : _rj10079
      {
         var _loc1_:_rj10079 = new _rj10079((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,_my2463._of6230);
         _loc1_.title = "windows.changePassword.changePassword";
         _loc1_.text = "windows.checkingSecurityKey";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _us1932() : _rj10079
      {
         var _loc1_:_rj10079 = new _rj10079((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,_my2463._lh14608);
         _loc1_.title = "windows.changePassword.changePassword";
         _loc1_.text = "windows.changePassword.changingPassword";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _sh10302() : _rj10079
      {
         var _loc1_:_rj10079 = new _rj10079((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","ErrorDataCard") as MovieClip,_my2463._fq1822);
         _loc1_.title = "windows.changePassword.changePassword";
         _loc1_.text = "serverRespondedWithError";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _lg455() : _rj10079
      {
         var _loc1_:_rj10079 = new _rj10079((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","ErrorDataCard") as MovieClip,_my2463._fq1822);
         _loc1_.title = "windows.changePassword.changePassword";
         _loc1_.text = "windows.changePassword.serverValidationError";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _uo2186(param1:String = "") : _fm9767
      {
         var _loc2_:_fm9767 = new _fm9767((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","ChangePasswordWindow") as MovieClip,_my2463._op4503);
         _loc2_._to10627 = param1;
         _loc2_.title = "windows.changePassword.changePassword";
         _loc2_._ta7578 = "windows.changePassword.oldPassword";
         _loc2_._ih11223 = "windows.changePassword.newPassword";
         _loc2_._ed12820 = "windows.changePassword.repeatNewPassword";
         _loc2_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc2_;
      }
      
      public static function _ij7779() : _rj10079
      {
         var _loc1_:_rj10079 = new _rj10079((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","AcceptedDataCard") as MovieClip,_my2463._sx7781);
         _loc1_.title = "windows.changePassword.changePassword";
         _loc1_.text = "windows.changePassword.passwordChanged";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
   }
}

