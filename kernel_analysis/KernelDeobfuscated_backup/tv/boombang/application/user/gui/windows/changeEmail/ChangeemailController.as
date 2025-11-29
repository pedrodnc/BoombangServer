package src.tv.boombang.application.user.gui.windows.changeEmail
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _hs15823
   {
      
      public function _hs15823()
      {
         super();
      }
      
      public static function _vx13870() : _sn4365
      {
         var _loc1_:_sn4365 = new _sn4365((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,_ms3955._ql11306);
         _loc1_.title = "windows.changeEmail.changeEmailTitle";
         _loc1_.description = "windows.changeEmail.firstStepDescription";
         _loc1_.label = "windows.securityKey";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _bc15262() : _sn4365
      {
         var _loc1_:_sn4365 = new _sn4365((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,_ms3955._ql11306);
         _loc1_.title = "windows.changeEmail.changeEmailTitle";
         _loc1_.description = "windows.securityCodeWasIncorrect";
         _loc1_.label = "windows.securityKey";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _em6871() : _rj10079
      {
         var _loc1_:_rj10079 = new _rj10079((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,_ms3955._of6230);
         _loc1_.title = "windows.changeEmail.changeEmailTitle";
         _loc1_.text = "windows.checkingSecurityKey";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _cc11960() : _rj10079
      {
         var _loc1_:_rj10079 = new _rj10079((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,_ms3955._gi14353);
         _loc1_.title = "windows.changeEmail.changeEmailTitle";
         _loc1_.text = "windows.changeEmail.sendingEmail";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _cm1580() : _ei5768
      {
         var _loc1_:_ei5768 = new _ei5768((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","MailInputWindow") as MovieClip,_ms3955._hs5173,_gn3649._rt9913);
         _loc1_.title = "windows.changeEmail.changeEmailTitle";
         _loc1_._ih11223 = "windows.changeEmail.newEmail";
         _loc1_._ed12820 = "windows.changeEmail.repeatNewEmail";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _ij7779() : _lx15697
      {
         var _loc1_:_lx15697 = new _lx15697((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","ChangeMailLastStep") as MovieClip,_ms3955._jm9753);
         _loc1_.title = "windows.changeEmail.changeEmailTitle";
         _loc1_._lt13864 = "windows.changeEmail.processCompleteText";
         _loc1_._qb10255 = "windows.changeEmail.troubleshootingTitle";
         _loc1_._jj10740 = "windows.changeEmail.troubleshooting1";
         _loc1_._wj3692 = "windows.changeEmail.troubleshooting2";
         _loc1_._yd3812 = "windows.changeEmail.troubleshooting3";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _sh10302() : _rj10079
      {
         var _loc1_:_rj10079 = new _rj10079((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","ErrorDataCard") as MovieClip,_ms3955._fq1822);
         _loc1_.title = "windows.changeEmail.changePassword";
         _loc1_.text = "serverRespondedWithError";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
   }
}

