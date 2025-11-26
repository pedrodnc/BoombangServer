package src.utils.boombang.TakePhoto
{
   import flash.display.MovieClip;
   import flash.media.*;
   import flash.utils.*;
   import src.*;
   import src.allData.*;
   import src.modules.enterScene.SceneTransition;
   import src.person.*;
   import src.tv.boombang.core.datatypes.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class TakePhoto
   {
      
      private static const textString:String = "mcBotonCamaraSimple";
      
      private static const count:int = 0;
      
      private static const count1:int = 1;
      
      private static const count2:int = 2;
      
      private static const count3:int = 3;
      
      private static const count4:int = 4;
      
      private static const count5:int = 5;
      
      private static const count6:int = 6;
      
      public static const count7:int = 1;
      
      public static const count8:int = 2;
      
      public static const count9:int = 3;
      
      public static const textString1:String = "OK";
      
      public static const textString2:String = "ERROR";
      
      private static const count10:int = 550;
      
      private static const count11:int = 6;
      
      private static const count12:int = 22;
      
      private static const textString3:String = "https://takephoto.boombang.tv/";
      
      private static const textString4:String = "upload.php";
      
      private static const textString5:String = "images/";
      
      private static const count13:int = 12;
      
      private var _dv13640:MovieClip;
      
      private var status:int = 0;
      
      private var _lj2502:CommoncomponentsController;
      
      private var _nq6110:TakephotoView;
      
      private var _fy9450:TakephotoView;
      
      private var _bx5649:TakephotoUtils;
      
      private var _ne10819:TakephotoView;
      
      private var _ov7748:TakephotoView;
      
      private var count14:int;
      
      private var enterScene:SceneTransition;
      
      private var photo_name:String = "";
      
      public function TakePhoto(param1:MovieClip)
      {
         super();
         this._dv13640 = param1;
         this.init();
         this.destroy(count);
         this.authenticateUser2();
         this.start();
      }
      
      private function init() : void
      {
         var count2:TakephotoModel = null;
         _xw1367.getInstance()._uc3178(this._dv13640,_xw1367.count8);
         count2 = new TakephotoModel();
         this._lj2502 = new CommoncomponentsController(this._dv13640[textString],this._ha8267);
         this._nq6110 = new TakephotoView(this._dv13640,count2,this._ko1350,this._pl2599);
         this._fy9450 = new TakephotoView(this._dv13640,count2,this._xt1091,this._ko1350);
         this._bx5649 = new TakephotoUtils(this._dv13640,count2,this._ec7091);
         this._ne10819 = new TakephotoView(this._dv13640,count2,this.show,this._ko1350);
         this._ov7748 = new TakephotoView(this._dv13640,count2,this._ko1350);
         this._um5405();
      }
      
      private function _um5405() : void
      {
         this._dv13640.x = count10;
         this._dv13640.y = count11;
      }
      
      public function destroy() : void
      {
         if(this._lj2502 != null)
         {
            this._lj2502.destroy();
            this._lj2502 = null;
         }
         if(this._nq6110 != null)
         {
            this._nq6110.destroy();
            this._nq6110 = null;
         }
         if(this._fy9450 != null)
         {
            this._fy9450.destroy();
            this._fy9450 = null;
         }
         if(this._bx5649 != null)
         {
            this._bx5649.destroy();
            this._bx5649 = null;
         }
         if(this._ne10819 != null)
         {
            this._ne10819.destroy();
            this._ne10819 = null;
         }
         if(this._ov7748 != null)
         {
            this._ov7748.destroy();
            this._ov7748 = null;
         }
         _xw1367.getInstance().move2(this._dv13640,_xw1367.count8);
         this._dv13640 = null;
         this.enterScene = null;
      }
      
      private function destroy(param1:int) : void
      {
         this._md6714();
         switch(param1)
         {
            case count1:
               this._lj2502.show();
               break;
            case count2:
               this._nq6110.show();
               break;
            case count3:
               this._fy9450.show();
               break;
            case count4:
               this._bx5649.show();
               break;
            case count5:
               this._ne10819.show();
               break;
            case count6:
               this._ov7748.show();
         }
         this.status = param1;
      }
      
      public function authenticateUser2() : void
      {
         if(this._dv13640.visible)
         {
            this._dv13640.visible = false;
         }
      }
      
      public function show() : void
      {
         if(!this._dv13640.visible)
         {
            this._dv13640.visible = true;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this._dv13640.visible;
      }
      
      private function _md6714() : void
      {
         this._lj2502.authenticateUser2();
         this._nq6110.authenticateUser2();
         this._fy9450.authenticateUser2();
         this._bx5649.authenticateUser2();
         this._ne10819.authenticateUser2();
         this._ov7748.authenticateUser2();
      }
      
      private function _ha8267() : void
      {
         this.destroy(count2);
      }
      
      private function _ko1350() : void
      {
         this.destroy(count1);
      }
      
      private function _pl2599() : void
      {
         this.destroy(count3);
      }
      
      private function _xt1091() : void
      {
         this.destroy(count4);
         this._ar9153();
      }
      
      private function _ec7091() : void
      {
         this.destroy(count5);
      }
      
      private function _cg12576() : void
      {
         this.destroy(count6);
      }
      
      public function start() : void
      {
         switch(this.status)
         {
            case count6:
            case count5:
            case count4:
               return;
            default:
               this.destroy(count1);
               return;
         }
      }
      
      private function _ar9153() : void
      {
         Utils._iq4270(Sound(this._dv13640.cameraRewind));
         var count2:ByteArray = UtilsModel.serializeData(1);
         var count:String = textString3 + textString4;
         this._kb9211(count2,count);
      }
      
      public function _kb9211(param1:ByteArray, param2:String) : void
      {
         var count3:ByteArray = param1;
         var count1:ByteArray = new ByteArray();
         count1 = this._aj1627(count1);
         count1.writeBytes(count3,0,count3.length);
         UtilsUtils._dd8786(param2,count1,this._yw2650);
      }
      
      private function _aj1627(param1:ByteArray) : ByteArray
      {
         var count3:PersonAnimation = null;
         var count:Array = this.getList();
         for each(count3 in count)
         {
            if(count3 != null)
            {
               param1.writeUTFBytes(count3.id + ",");
            }
         }
         param1.writeUTFBytes(count3.id + ";");
         return param1;
      }
      
      private function _ph1281(param1:ByteArray) : ByteArray
      {
         var count:PersonAnimation = null;
         var count3:int = 0;
         var count1:String = null;
         var count7:int = 0;
         var count2:uint = uint(count7);
         var items:Array = this.getList();
         var count8:ByteArray = new ByteArray();
         count8.writeUnsignedInt(count2);
         count8.writeUTFBytes(RuntimeParams._ns12055);
         count7 = 0;
         while(count7 < count13)
         {
            if(items.length > count7)
            {
               count = items[count7] as PersonAnimation;
               count3 = count.id;
            }
            else
            {
               count3 = 0;
            }
            count8.writeUnsignedInt(count3);
            count7++;
         }
         count7 = 0;
         while(count7 < count13)
         {
            if(items.length > count7)
            {
               count = items[count7] as PersonAnimation;
               count1 = count.name;
            }
            else
            {
               count1 = "";
            }
            while(count1.length < count12)
            {
               count1 = " " + count1;
            }
            count8.writeUTFBytes(count1);
            count7++;
         }
         count8.writeBytes(param1,0,param1.length);
         return count8;
      }
      
      private function getList() : Array
      {
         var count2:PersonController = null;
         var count:PersonAnimation = null;
         var count3:int = int(UserSession.getInstance().id);
         var count2:Array = new Array();
         var count7:PersonBase = this.enterScene._yp6754();
         var items:Array = count7.items;
         for each(count2 in items)
         {
            if(count2 != null)
            {
               count = count2._md8722 as PersonAnimation;
               if(count.id == count3)
               {
                  count2.unshift(count);
               }
               else
               {
                  count2.push(count);
               }
            }
         }
         return count2;
      }
      
      private function _yw2650(param1:String) : void
      {
         if(param1 != textString2)
         {
            this.photo_name = param1;
            this.count14 = int(param1);
            this._ec7091();
         }
         else
         {
            this.count14 = 0;
            this._cg12576();
         }
      }
      
      private function show() : void
      {
         var count2:String = textString3 + textString5 + this.photo_name;
         UtilsUtils.openPopup(count2);
      }
      
      public function _iw5858(param1:SceneTransition) : void
      {
         this.enterScene = param1;
         var count:PersonBase = param1._yp6754();
         var count3:Array = count.items;
      }
   }
}

