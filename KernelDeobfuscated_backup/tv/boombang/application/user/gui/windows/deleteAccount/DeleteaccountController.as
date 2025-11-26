package src.tv.boombang.application.user.gui.windows.deleteAccount
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _am15808
   {
      
      public function _am15808()
      {
         super();
      }
      
      public static function _vx13870() : _sn4365
      {
         var _loc1_:_sn4365 = new _sn4365((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,_pj1345._ql11306);
         _loc1_.title = "windows.deleteAccount.deleteAccount";
         _loc1_.description = "windows.deleteAccount.firstStepDescription";
         _loc1_.label = "windows.securityKey";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _bc15262() : _sn4365
      {
         var _loc1_:_sn4365 = new _sn4365((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,_pj1345._ql11306);
         _loc1_.title = "windows.deleteAccount.deleteAccount";
         _loc1_.description = "windows.securityCodeWasIncorrect";
         _loc1_.label = "windows.securityKey";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _em6871() : _rj10079
      {
         var _loc1_:_rj10079 = new _rj10079((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,_pj1345._of6230);
         _loc1_.title = "windows.deleteAccount.deleteAccount";
         _loc1_.text = "windows.checkingSecurityKey";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _nh2269() : _ct9616
      {
         var _loc1_:_ct9616 = new _ct9616((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","DeleteAccountWindow") as MovieClip,_pj1345._kf198);
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _ue9620() : _rj10079
      {
         var _loc1_:_rj10079 = new _rj10079((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,_pj1345._by4099);
         _loc1_.title = "windows.deleteAccount.deleteAccount";
         _loc1_.text = "windows.deleteAccount.deletingAccount";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _ij7779() : _rj10079
      {
         var _loc1_:_rj10079 = new _rj10079((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","AcceptedDataCard") as MovieClip,_pj1345._sx7781);
         _loc1_.title = "windows.deleteAccount.deleteAccount";
         _loc1_.text = "windows.deleteAccount.deletionComplete";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _sh10302() : _rj10079
      {
         var _loc1_:_rj10079 = new _rj10079((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","ErrorDataCard") as MovieClip,_pj1345._fq1822);
         _loc1_.title = "windows.deleteAccount.deleteAccount";
         _loc1_.text = "serverRespondedWithError";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         return _loc1_;
      }
   }
}

