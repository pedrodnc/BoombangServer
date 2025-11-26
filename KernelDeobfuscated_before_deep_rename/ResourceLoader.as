package src
{
   import flash.display.*;
   import flash.events.*;
   import flash.external.*;
   import flash.net.*;
   import flash.utils.*;
   
   public class ResourceLoader extends EventDispatcher
   {
      
      public static var instance:ResourceLoader;
      
      internal var _dg2358:Socket;
      
      internal var _ed11060:Class;
      
      internal var _vk3840:Class;
      
      internal var _ap2632:Class;
      
      internal var _km12296:Class;
      
      internal var _wv5430:Class;
      
      internal var _br10624:Class;
      
      internal var _id10686:Class;
      
      public var _gf2548:Loader;
      
      internal var _xa14180:Loader;
      
      internal var _ou13949:Loader;
      
      internal var _yb6588:Loader;
      
      internal var _ip3470:Loader;
      
      internal var _xw14383:Loader;
      
      internal var _it13837:Loader;
      
      public var _wi8846:MovieClip;
      
      public var _ks4561:MovieClip;
      
      public var _kn9534:MovieClip;
      
      public var _to10749:MovieClip;
      
      public var _qd5782:MovieClip;
      
      public var fileList:String;
      
      public var _ow1158:String;
      
      internal var _op8731:_ow15191;
      
      public function ResourceLoader()
      {
         this._ed11060 = _ub4607__ed11060;
         this._vk3840 = _ub4607__vk3840;
         this._ap2632 = _ub4607__ap2632;
         this._km12296 = _ub4607__km12296;
         this._wv5430 = _ub4607__wv5430;
         this._br10624 = _ub4607__br10624;
         this._id10686 = _ub4607__id10686;
         super();
      }
      
      public function init() : void
      {
         ResourceLoader.instance = this;
         this._op8731 = new _ow15191();
         this._gf2548 = new Loader();
         this._gf2548.contentLoaderInfo.addEventListener(Event.INIT,this._js3648,false,0,true);
         this._gf2548.loadBytes(new this._ed11060());
         this._xa14180 = new Loader();
         this._xa14180.contentLoaderInfo.addEventListener(Event.INIT,this._js3648,false,0,true);
         this._xa14180.loadBytes(new this._vk3840());
         this._yb6588 = new Loader();
         this._yb6588.contentLoaderInfo.addEventListener(Event.INIT,this._js3648,false,0,true);
         this._yb6588.loadBytes(new this._wv5430());
         this._ip3470 = new Loader();
         this._ip3470.contentLoaderInfo.addEventListener(Event.INIT,this._js3648,false,0,true);
         this._ip3470.loadBytes(new this._br10624());
         this._it13837 = new Loader();
         this._it13837.contentLoaderInfo.addEventListener(Event.INIT,this._js3648,false,0,true);
         this._it13837.loadBytes(new this._id10686());
      }
      
      internal function _js3648(param1:Event) : void
      {
         this._dg2358 = new Socket();
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:*;
         var _loc5_:* = _loc4_ = Loader(param1.target.loader);
         switch(_loc5_)
         {
            case this._gf2548:
               this._wi8846 = _loc4_.content as MovieClip;
               this._gf2548.contentLoaderInfo.removeEventListener(Event.INIT,this._js3648);
               break;
            case this._xa14180:
               this._ks4561 = _loc4_.content as MovieClip;
               this._xa14180.contentLoaderInfo.removeEventListener(Event.INIT,this._js3648);
               break;
            case this._yb6588:
               this._kn9534 = _loc4_.content as MovieClip;
               this._yb6588.contentLoaderInfo.removeEventListener(Event.INIT,this._js3648);
               break;
            case this._ip3470:
               this._qd5782 = _loc4_.content as MovieClip;
               this._ip3470.contentLoaderInfo.removeEventListener(Event.INIT,this._js3648);
               break;
            case this._it13837:
               this._to10749 = _loc4_.content as MovieClip;
               this._it13837.contentLoaderInfo.removeEventListener(Event.INIT,this._js3648);
         }
         if(this._ef6296())
         {
            _loc2_ = new this._ap2632();
            _loc3_ = _loc2_.readUTFBytes(_loc2_.length);
            this.fileList = _loc3_;
            _loc2_ = new this._km12296();
            this._ow1158 = BoomBangKids._datos;
            ExternalInterface.call("console.log",this._ow1158);
            ExternalInterface.call("console.log","test3");
            dispatchEvent(new Event("embedParamenterComplete"));
         }
      }
      
      public function _ef6296() : Boolean
      {
         if(this._wi8846 == null)
         {
            return false;
         }
         if(this._ks4561 == null)
         {
            return false;
         }
         if(this._kn9534 == null)
         {
            return false;
         }
         if(this._qd5782 == null)
         {
            return false;
         }
         if(this._to10749 == null)
         {
            return false;
         }
         return true;
      }
   }
}

