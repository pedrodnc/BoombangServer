package src.modules.SoundEffects
{
   import flash.display.*;
   import flash.media.*;
   import src.loaders._sa9254;
   
   public class _ku9742 extends MovieClip
   {
      
      private static var _ag4286:Boolean;
      
      private static var _sg3972:Array;
      
      private static const _tg6611:String = "sounds";
      
      private static const _ue3469:String = "getMovieClip";
      
      private static const _nj6045:String = "Music";
      
      private static const _de15052:String = "name";
      
      private static const _is106:String = "repeatTimes";
      
      private static const _ui9436:String = "volume";
      
      private static const _fi3611:String = "panning";
      
      private static const _jy2310:String = "azarTime";
      
      private static const _em8607:String = "offsetTime";
      
      private static const _qg4516:String = "automaticPlay";
      
      public function _ku9742()
      {
         super();
         _ag4286 = false;
      }
      
      public static function _ea6943(param1:String) : void
      {
         var _loc2_:SoundEffect = null;
         for each(_loc2_ in _sg3972)
         {
            if(_loc2_.name == param1)
            {
               if(_ag4286)
               {
                  _loc2_._jo11635();
               }
               _loc2_._vj7763();
               break;
            }
         }
      }
      
      public static function _hw3942(param1:String) : void
      {
         var _loc2_:SoundEffect = null;
         for each(_loc2_ in _sg3972)
         {
            if(_loc2_.name == param1)
            {
               _loc2_.stopSound();
               break;
            }
         }
      }
      
      public static function _bf8012() : void
      {
         var _loc1_:SoundEffect = null;
         for each(_loc1_ in _sg3972)
         {
            _loc1_.stopSound();
         }
      }
      
      public static function _yn13469() : void
      {
         var _loc1_:SoundEffect = null;
         _bf8012();
         for each(_loc1_ in _sg3972)
         {
            if(_ag4286)
            {
               _loc1_._jo11635();
            }
            if(_loc1_._gg8683)
            {
               _loc1_._vj7763();
            }
         }
      }
      
      public static function _wp3955() : void
      {
         _bf8012();
         _sg3972 = null;
         _sg3972 = new Array();
      }
      
      public static function addSound(param1:Sound, param2:String, param3:int = 0, param4:Number = 1, param5:Number = 0, param6:Boolean = false, param7:int = 0) : void
      {
         var _loc8_:SoundEffect = null;
         var _loc9_:int = 0;
         if(param1 == null)
         {
            return;
         }
         while(_loc9_ < _sg3972.length)
         {
            _loc8_ = _sg3972[_loc9_];
            if(_loc8_.name == param2)
            {
               return;
            }
            _loc9_++;
         }
         var _loc10_:SoundEffect = new SoundEffect(param2,param3,param4,param5,param6,param7);
         _loc10_._ck8211(param1);
         _sg3972.push(_loc10_);
      }
      
      public static function removeSound(param1:String) : void
      {
         var _loc2_:SoundEffect = null;
         var _loc3_:int = 0;
         while(_loc3_ < _sg3972.length)
         {
            _loc2_ = _sg3972[_loc3_] as SoundEffect;
            if(_loc2_.name == param1)
            {
               _loc2_.stopSound();
               _sg3972.slice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public static function _jo11635() : void
      {
         var _loc1_:SoundEffect = null;
         _ag4286 = !_ag4286;
         for each(_loc1_ in _sg3972)
         {
            _loc1_._jo11635();
         }
      }
      
      public static function get _vc6855() : Boolean
      {
         return _ag4286;
      }
      
      public static function _mq8951(param1:XML, param2:_sa9254) : void
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Boolean = false;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc11_:int = 0;
         _wp3955();
         if(param1.child(_tg6611).length() <= 0)
         {
            return;
         }
         var _loc10_:XMLList = param1[_tg6611].children();
         while(_loc11_ < _loc10_.length())
         {
            _loc3_ = XMLList(_loc10_[_loc11_]).attribute(_de15052);
            _loc4_ = int(XMLList(_loc10_[_loc11_]).attribute(_is106));
            _loc5_ = Number(XMLList(_loc10_[_loc11_]).attribute(_ui9436));
            _loc6_ = Number(XMLList(_loc10_[_loc11_]).attribute(_fi3611));
            _loc7_ = Boolean(int(XMLList(_loc10_[_loc11_]).attribute(_fi3611)));
            _loc8_ = int(XMLList(_loc10_[_loc11_]).attribute(_em8607));
            _loc9_ = Boolean(int(XMLList(_loc10_[_loc11_]).attribute(_qg4516)));
            _sg3972.push(new SoundEffect(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_));
            param2.addElement(_loc3_);
            _loc11_++;
         }
         param2.start();
      }
      
      public static function _kn13713(param1:_sa9254) : void
      {
         var _loc2_:SoundEffect = null;
         var _loc3_:MovieClip = null;
         for each(_loc2_ in _sg3972)
         {
            _loc3_ = MovieClip(param1._xb9567(_loc2_.name));
            _loc2_._ck8211(_loc3_[_ue3469](_nj6045) as Sound);
         }
      }
   }
}

