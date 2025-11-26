package src.tv.boombang.library.objects.control.controllers
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.*;
   import flash.text.*;
   import src.tv.boombang.library.objects.*;
   import src.tv.boombang.library.objects.control.AssetsBaseObjectsMascota;
   
   public class Loro002New extends AssetsBaseObjectsMascota
   {
      
      private static const ESTADO_NORMAL:int = 0;
      
      private static const ESTADO_HABLANDO:int = 1;
      
      private var contadorAnimacionOjos:int;
      
      private var contadorAnimacionHablando:int;
      
      private var mclEditor:MovieClip;
      
      private var mclEditor2:MovieClip;
      
      private var modoEditor2:int;
      
      private var retrasoHablar:int;
      
      private var retrasoSaludo:int = 64;
      
      private var contadorFrames:int;
      
      private var mensajeCercaniaMostrado:Boolean;
      
      private var estado:int;
      
      public function Loro002New(param1:MovieClip, param2:String, param3:int)
      {
         super(param1,param2,param3);
         _asset.mcObject.mcObjectRef.mcColor0_1.gotoAndStop("parpadeo");
         this.mostrarAnimacionNormal();
      }
      
      override public function init() : void
      {
         _asset.mcObject.mcObjectRef.mcColor0_1.gotoAndStop("parpadeo");
         this.mostrarAnimacionNormal();
      }
      
      override public function destroy() : void
      {
         _asset.mcObject.mcObjectRef.mcColor0_1.stop();
         _asset.mcObject.mcObjectRef.mcColor3.stop();
         if(this.mclEditor != null)
         {
            this.mclEditor.mcBotonEditarTextos.removeEventListener(MouseEvent.MOUSE_DOWN,this.onBotonEditarTextosClick);
            this.mclEditor2.mcBotonTexto1.removeEventListener(MouseEvent.MOUSE_DOWN,this.onBotonTexto1Click);
            this.mclEditor2.mcBotonTexto2.removeEventListener(MouseEvent.MOUSE_DOWN,this.onBotonTexto2Click);
            this.mclEditor2.mcBotonTexto3.removeEventListener(MouseEvent.MOUSE_DOWN,this.onBotonTexto3Click);
            this.mclEditor2.mcBotonAceptar.removeEventListener(MouseEvent.MOUSE_DOWN,this.onBotonAceptarClick);
            this.mclEditor2.mcBotonAceptar.removeEventListener(MouseEvent.ROLL_OVER,this.onBotonRollOver);
            this.mclEditor2.mcBotonAceptar.removeEventListener(MouseEvent.ROLL_OUT,this.onBotonRollOut);
            this.mclEditor2.mcBotonVolver.removeEventListener(MouseEvent.MOUSE_DOWN,this.onBotonVolverClick);
            this.mclEditor2.mcBotonVolver.removeEventListener(MouseEvent.ROLL_OVER,this.onBotonRollOver);
            this.mclEditor2.mcBotonVolver.removeEventListener(MouseEvent.ROLL_OUT,this.onBotonRollOut);
            this.mclEditor = null;
            this.mclEditor2 = null;
         }
         super.destroy();
      }
      
      private function mostrarAnimacionNormal() : void
      {
         this.estado = ESTADO_NORMAL;
         _asset.mcObject.mcObjectRef.mcColor3.gotoAndStop(1);
         this.contadorAnimacionOjos = Math.random() * 80;
      }
      
      private function mostrarAnimacionHablando() : void
      {
         this.estado = ESTADO_HABLANDO;
         _asset.mcObject.mcObjectRef.mcColor3.gotoAndPlay(1);
         this.contadorAnimacionHablando = 12;
      }
      
      override public function getDesplazaConClick() : Boolean
      {
         return false;
      }
      
      override public function loop() : void
      {
         var count2:Point = null;
         var count:Number = NaN;
         ++this.contadorFrames;
         if(this.retrasoHablar > 0)
         {
            --this.retrasoHablar;
         }
         if(this.retrasoSaludo > 0)
         {
            --this.retrasoSaludo;
            if(this.retrasoSaludo == 0 && integracionObjects != null)
            {
               this.mostrarAnimacionHablando();
               this.hablar(props[0]);
            }
         }
         if(this.mensajeCercaniaMostrado == false && this.contadorFrames % 16 == 0 && integracionObjects != null)
         {
            count2 = _asset.mcObject.localToGlobal(new Point(0,0));
            count = Number(integracionObjects.distanciaPersonajePrincipal(count2.x,count2.y));
            if(count < 100)
            {
               this.mostrarAnimacionHablando();
               this.hablar(props[1]);
               this.mensajeCercaniaMostrado = true;
            }
         }
         switch(this.estado)
         {
            case ESTADO_NORMAL:
               --this.contadorAnimacionOjos;
               if(this.contadorAnimacionOjos < 0)
               {
                  if(Math.random() >= 0.3)
                  {
                     _asset.mcObject.mcObjectRef.mcColor0_1.gotoAndPlay("parpadeo");
                     this.contadorAnimacionOjos = Math.random() * 80;
                     if(this.contadorAnimacionOjos < 5)
                     {
                        this.contadorAnimacionOjos = 5;
                     }
                  }
                  else
                  {
                     _asset.mcObject.mcObjectRef.mcColor0_1.gotoAndPlay("moverOjos");
                     this.contadorAnimacionOjos = Math.random() * 80 + 30;
                  }
               }
               return;
            case ESTADO_HABLANDO:
               --this.contadorAnimacionHablando;
               if(this.contadorAnimacionHablando < 0)
               {
                  this.mostrarAnimacionNormal();
               }
               return;
            default:
               return;
         }
      }
      
      override public function getMovieClipIconoMascota() : MovieClip
      {
         return ObjectCommunication.getAssetForObject(_fileName,"MclIcono");
      }
      
      override public function getSeleccionable() : Boolean
      {
         return false;
      }
      
      override public function setAccionLoro(param1:String) : void
      {
         if(integracionObjects != null)
         {
            this.mostrarAnimacionHablando();
            this.hablar(param1);
         }
      }
      
      private function hablar(param1:String) : void
      {
         var count:Point = _asset.mcObject.localToGlobal(new Point(0,0));
         integracionObjects.loroHablar(count.x,count.y,param1,xmlTexts.attribute("nombre"));
      }
      
      override public function setAccionUpdateLoro(param1:int, param2:String) : void
      {
         props[param1 - 1] = param2;
      }
      
      override public function onIconoPresionado() : void
      {
         if(owner == true && this.retrasoHablar <= 0 && this.estado == ESTADO_NORMAL)
         {
            if(integracionObjects != null)
            {
               this.retrasoHablar = 32;
               integracionObjects.sendMsgLoroObj(idPose,String(props[2]));
            }
         }
      }
      
      private function setModoEditor2(param1:int) : void
      {
         this.modoEditor2 = param1;
         this.mclEditor2.tfTexto.type = TextFieldType.INPUT;
         this.mclEditor2.mcBotonAceptar.gotoAndStop("normal");
         this.mclEditor2.mcBotonVolver.gotoAndStop("normal");
         switch(param1)
         {
            case 0:
               setTextInTextField(this.mclEditor2.tfTitulo,xmlTexts.attribute("tituloInicial"));
               setTextInTextField(this.mclEditor2.tfDescripcion,xmlTexts.attribute("descripcionInicial"));
               this.mclEditor2.mcBotonAceptar.visible = false;
               this.mclEditor2.mcFondoTexto.visible = false;
               this.mclEditor2.tfTexto.visible = false;
               return;
            case 1:
               setTextInTextField(this.mclEditor2.tfTitulo,xmlTexts.attribute("tituloTexto1"));
               setTextInTextField(this.mclEditor2.tfDescripcion,xmlTexts.attribute("descripcionTexto1"));
               this.mclEditor2.mcBotonAceptar.visible = true;
               this.mclEditor2.mcFondoTexto.visible = true;
               this.mclEditor2.tfTexto.visible = true;
               this.mclEditor2.tfTexto.text = String(props[0]);
               TextField(this.mclEditor2.tfTexto).wordWrap = true;
               return;
            case 2:
               setTextInTextField(this.mclEditor2.tfTitulo,xmlTexts.attribute("tituloTexto2"));
               setTextInTextField(this.mclEditor2.tfDescripcion,xmlTexts.attribute("descripcionTexto2"));
               this.mclEditor2.mcBotonAceptar.visible = true;
               this.mclEditor2.mcFondoTexto.visible = true;
               this.mclEditor2.tfTexto.visible = true;
               this.mclEditor2.tfTexto.text = String(props[1]);
               TextField(this.mclEditor2.tfTexto).wordWrap = true;
               return;
            case 3:
               setTextInTextField(this.mclEditor2.tfTitulo,xmlTexts.attribute("tituloTexto3"));
               setTextInTextField(this.mclEditor2.tfDescripcion,xmlTexts.attribute("descripcionTexto3"));
               this.mclEditor2.mcBotonAceptar.visible = true;
               this.mclEditor2.mcFondoTexto.visible = true;
               this.mclEditor2.tfTexto.visible = true;
               this.mclEditor2.tfTexto.text = String(props[2]);
               TextField(this.mclEditor2.tfTexto).wordWrap = true;
               return;
            default:
               return;
         }
      }
      
      override public function getMovieClipEditObjects() : MovieClip
      {
         if(this.mclEditor == null)
         {
            this.mclEditor = ObjectCommunication.getAssetForObject(_fileName,"MclEditor");
            setTextInTextField(this.mclEditor.tfMoverObjeto,xmlTexts.attribute("moverObjeto"));
            this.mclEditor.mcBotonEditarTextos.addEventListener(MouseEvent.MOUSE_DOWN,this.onBotonEditarTextosClick);
            this.mclEditor2 = ObjectCommunication.getAssetForObject(_fileName,"MclEditor2");
            setTextInTextField(this.mclEditor2.mcBotonVolver.tfTexto,xmlTexts.attribute("volver"));
            this.mclEditor2.mcBotonTexto1.addEventListener(MouseEvent.MOUSE_DOWN,this.onBotonTexto1Click);
            this.mclEditor2.mcBotonTexto2.addEventListener(MouseEvent.MOUSE_DOWN,this.onBotonTexto2Click);
            this.mclEditor2.mcBotonTexto3.addEventListener(MouseEvent.MOUSE_DOWN,this.onBotonTexto3Click);
            this.mclEditor2.mcBotonAceptar.addEventListener(MouseEvent.MOUSE_DOWN,this.onBotonAceptarClick);
            this.mclEditor2.mcBotonAceptar.addEventListener(MouseEvent.ROLL_OVER,this.onBotonRollOver);
            this.mclEditor2.mcBotonAceptar.addEventListener(MouseEvent.ROLL_OUT,this.onBotonRollOut);
            this.mclEditor2.mcBotonVolver.addEventListener(MouseEvent.MOUSE_DOWN,this.onBotonVolverClick);
            this.mclEditor2.mcBotonVolver.addEventListener(MouseEvent.ROLL_OVER,this.onBotonRollOver);
            this.mclEditor2.mcBotonVolver.addEventListener(MouseEvent.ROLL_OUT,this.onBotonRollOut);
            this.mclEditor2.tfTexto.restrict = " abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ0123456789@#$%&/()?_;:.,<>+*áéíóúªºàèìòùÁÉÍÓÚÀÈÌÒÙ=[]{}¿!ç\'\\-";
            this.mclEditor2.tfTexto.maxChars = 47;
         }
         if(this.mclEditor2.parent != null)
         {
            this.mclEditor.removeChild(this.mclEditor2);
         }
         this.setModoEditor2(0);
         return this.mclEditor;
      }
      
      private function onBotonEditarTextosClick(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         this.mclEditor.addChild(this.mclEditor2);
      }
      
      private function onBotonVolverClick(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         this.mclEditor.removeChild(this.mclEditor2);
      }
      
      private function onBotonAceptarClick(param1:MouseEvent) : void
      {
         var count:String = null;
         param1.stopImmediatePropagation();
         if(owner == true)
         {
            if(integracionObjects != null)
            {
               count = this.mclEditor2.tfTexto.text;
               count = integracionObjects.filtrarTexto(count);
               integracionObjects.sendMsgLoroUpdateObj(idPose,this.modoEditor2,count);
               this.mclEditor2.mcBotonAceptar.visible = false;
               this.mclEditor2.tfTexto.type = TextFieldType.DYNAMIC;
            }
         }
      }
      
      private function onBotonRollOver(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop("rollover");
      }
      
      private function onBotonRollOut(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop("normal");
      }
      
      private function onBotonTexto1Click(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         this.setModoEditor2(1);
      }
      
      private function onBotonTexto2Click(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         this.setModoEditor2(2);
      }
      
      private function onBotonTexto3Click(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         this.setModoEditor2(3);
      }
   }
}

