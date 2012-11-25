<?php

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\RedirectResponse;

use cloud\siteBundle\Entity\Sede;
use cloud\siteBundle\Entity\Notificaciones;
use cloud\siteBundle\Entity\CodigoVerificacion;
use cloud\siteBundle\Entity\Institucion;
use cloud\siteBundle\Entity\EscCualitativa;
use cloud\siteBundle\Entity\AjustesEvaluacion;
use cloud\siteBundle\Entity\RangoCuantitativo;
use cloud\siteBundle\Entity\Anio;
use cloud\siteBundle\Entity\NivelesAcademicos;
use cloud\siteBundle\Entity\Inscripcion;

use cloud\siteBundle\Form\SedeType;
use cloud\siteBundle\Form\InstitucionType;
use cloud\siteBundle\Form\AnioType;
use cloud\siteBundle\Form\AjustesEvaluacionType;
use cloud\siteBundle\Form\InscripcionType;
use cloud\siteBundle\Form\RangosType;



/**
     *
     * @Route("/admin")
     */
class AdminController extends Controller
{
	/**
     *
     * @Route("/", name="ma")
     */
    public function indexAction()
    {
    	
    	return $this->render('cloudBundle:Admin:index.html.twig');
    }

    /**
     *
     * @Route("/sistema", name="ma1")
     */
    public function ma1Action()
    {
        
        return $this->render('cloudBundle:Admin:ma1.html.twig');
    }

    /**
     *
     * @Route("/sistema/ajustesgenerales", name="ma11")
     */
    public function ma11Action()
    {
        $em=$this->getDoctrine()->getEntityManager();
        $sede=$em->getRepository('cloudBundle:Sede')->findAll();
        if(!$sede){
            return $this->render('cloudBundle:Admin:ma11.html.twig',array('estado'=>'nulo'));
        }
        return $this->render('cloudBundle:Admin:ma11.html.twig',array());
    }
    /**
     *
     * @Route("/sistema/ajustesgenerales/informacion", name="ma111")
     */
    public function ma111Action()
    {
        $em = $this->getDoctrine()->getManager();
        $user = $this->get('security.context')->getToken()->getUser();
        $institucion = $em->getRepository('cloudBundle:Institucion')->find($user->getInstitucionId()); 

        if (!$institucion) {
            throw $this->createNotFoundException('Unable to find Institucion institucion.');
        }

        $editForm = $this->createForm(new InstitucionType(), $institucion);   

        return $this->render('cloudBundle:Admin:ma111.html.twig', array('institucion'=>$institucion, 'edit_form'   => $editForm->createView()));
    }

    /**
     *
     * @Route("/sistema/ajustesgenerales/sedes", name="ma112")
     */
    public function ma112Action()
    {

        $user = $this->get('security.context')->getToken()->getUser();
        $em = $this->getDoctrine()->getEntityManager();
        $sedes = $em->getRepository('cloudBundle:Sede')->findAll(); 
        if(!$sedes)
            return $this->render('cloudBundle:Admin:ma112.html.twig',array('mje'=>'No tiene tiene sedes asociadas' ) );

        return $this->render('cloudBundle:Admin:ma112.html.twig',array('sedes'=>$sedes) );
    }

    /**
     *
     * @Route("/sistema/ajustesgenerales/sedes/new", name="ma112_new")
     */
    public function ma112_newAction()
    {
        $entity = new Sede();
        $form   = $this->createForm(new SedeType(), $entity);
        return $this->render('cloudBundle:Admin:ma112_new.html.twig',array(
            'entity' => $entity,
            'form'   => $form->createView(),
        ));
    }

    /**
     * Creates a new Sede entity.
     *
     * @Route("/sistema/ajustesgenerales/sedes/create", name="ma112_create")
     * @Method("POST")
     */
    public function ma112createAction(Request $request)
    {
        $entity  = new Sede();
        $form = $this->createForm(new SedeType(), $entity);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $user = $this->get('security.context')->getToken()->getUser();
            //$institucion = $em->getRepository('cloudBundle:Institucion')->find(); 
            $entity->setInstitucionId($user->getInstitucionId());
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('ma112'));
        }
        return $this->render('cloudBundle:Admin:ma112_new.html.twig',array(
            'entity' => $entity,
            'form'   => $form->createView(),
        ));
    }


     /**
     * @Route("/sistema/ajustesgenerales/sedes/{id}/edit", name="ma112_edit")
     */
    public function ma112editAction($id)
    { 
         $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Sede')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Sede entity.');
        }

        //$deleteForm = $this->createDeleteForm($id);
        $editForm = $this->createForm(new SedeType(), $entity);

        return $this->render('cloudBundle:Admin:ma112_edit.html.twig',array(
            'entity' => $entity,
            'form'   => $editForm->createView(),
          //  'delete_form' => $deleteForm->createView(),
        ));
    }

     /**
     * Edits an existing Sede entity.
     *
     * @Route("/sistema/ajustesgenerales/sedes/{id}/update", name="ma112_update")
     * @Method("POST")
     */
    public function ma112updateAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Sede')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Sede entity.');
        }

        //$deleteForm = $this->createDeleteForm($id);
        $editForm = $this->createForm(new SedeType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('ma112_edit', array('id' => $id)));
        }

         return $this->render('cloudBundle:Admin:ma112_edit.html.twig',array(
            'entity' => $entity,
            'form'   => $editForm->createView(),
            //'delete_form' => $deleteForm->createView(),
        ));
    }

     /**
     *
     * @Route("/sistema/otrosajustes", name="ma113")
     */
    public function ma113Action()
    {
        
        return $this->render('cloudBundle:Admin:ma113.html.twig');
    }

    /**
     *
     * @Route("/sistema/otrosajustes/apertanio", name="ma1131")
     */
    public function ma1131Action()
    {
        $entity = new Anio();
        $form   = $this->createForm(new AnioType(), $entity);
        $em = $this->getDoctrine()->getManager();
        $entity_anio = $em->getRepository('cloudBundle:Anio')->findBy(array('active'=>'1'));

        if(!$entity_anio)
            return $this->render('cloudBundle:Admin:ma1131.html.twig', array(  'form'   => $form->createView() ));
        else
        {
            $entity_anio = $em->getRepository('cloudBundle:Anio')->findAll();      
            return $this->render('cloudBundle:Admin:ma11312.html.twig',array(  'entity_anio'   => $entity_anio ));
        }
    }

     /**
     * Creates a new Anio entity.
     *
     * @Route("/sistema/otrosajustes/apertanio/create", name="ma1131_create")
     * @Method("POST")
     */
    public function ma1131createAction(Request $request)
    {
        $entity  = new Anio();
        $form = $this->createForm(new AnioType(), $entity);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $entity->setDateCreate(new \DateTime());
            $entity->setActive(true);
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('ma1131'));
        }

        return $this->render('cloudBundle:Admin:ma1131.html.twig',
        array(  
            'form'   => $form->createView(),
        ));
    } 

    /**
     *
     * @Route("/sistema/otrosajustes/apertinscripcion", name="ma1132")
     */
    public function ma1132Action()
    {
         $em = $this->getDoctrine()->getManager();
        

        $entity = $em->getRepository('cloudBundle:Inscripcion')->findBy(array('active'=>1));

        if(!$entity)
            return $this->render('cloudBundle:Admin:ma1132.html.twig', array('entity'=>$entity));
        
        return $this->redirect($this->generateUrl('ma11321', array('id' => $entity[0]->getId() )));

    }

    /**
     *
     * @Route("/sistema/otrosajustes/apertinscripcion/abrir/{id}", name="ma11321")
     */
    public function ma11321Action($id)
    {
        $em = $this->getDoctrine()->getManager();
        

        $entity = $em->getRepository('cloudBundle:Inscripcion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Inscripcion entity.');
        }

        $editForm = $this->createForm(new InscripcionType(), $entity);
        return $this->render('cloudBundle:Admin:ma11321.html.twig', array(
            'form' => $editForm->createView() ,
            'entity' => $entity
        ));
    }

     /**
     *
     * @Route("/sistema/otrosajustes/apertinscripcion/abrir/{id}/update", name="ma11321_update")
     * @Method("POST")
     */
    public function ma11321updateAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Inscripcion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Inscripcion entity.');
        }

        $editForm = $this->createForm(new InscripcionType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('ma11321', array('id' => $id)));
        }

        return $this->render('cloudBundle:Admin:ma11321.html.twig', array(
            'form' => $editForm->createView() ,
            'entity' => $entity
        ));
    }

    /**
     * @Route("/sistema/otrosajustes/apertinscripcion/crear", name="crear_inscripcion")
     * @Method("POST")
     */
    public function ma1132_crearInscripcion_Action()
    {
        $entity  = new Inscripcion();
        $em = $this->getDoctrine()->getManager();
        
        $entity->setInscripcionInicio(new \DateTime());
        $tiempo = new \DateTime();
        $tiempo->modify('+3 months');
        $entity->setInscripcionFinal($tiempo);
        $entity->setActive(true);
        $em->persist($entity);
        $em->flush();

            return $this->render('cloudBundle:Admin:valid_user.html.twig' ,array("valid_user"=>true));            
    }

    /**
    *
    * @Route("/sistema/ajustedeevaluacion", name="ma12")
    */
    public function ma12bAction(){
        $peticion=$this->getRequest();
        $ae=new AjustesEvaluacion();
        $em=$this->getDoctrine()->getEntityManager();
        $ae=$em->getRepository('cloudBundle:AjustesEvaluacion')->find(1);
        $form=$this->createForm(new AjustesEvaluacionType(), $ae);
        if($peticion->getMethod()=='POST'){
            $form->bindRequest($peticion);
            
            if($form->isValid()){
                $ae->setModeloEvaluacion($form->get('modelo_evaluacion')->getData());
                $ae->setEscala($form->get('escala')->getData());
                $ae->setAcumula($form->get('acumula')->getData());
                $em->persist($ae);
                $em->flush();
            }
        }
        return $this->render('cloudBundle:Admin:ma12.html.twig', array('form'=>$form->createView()));
    }
    
    /**
     * 
     * 
     * @Route("/sistema/formrango", name="formrango")
     */
     public function formRangosAction(){
        $peticion=$this->getRequest();
        $rang= new RangoCuantitativo();
        $em=$this->getDoctrine()->getEntityManager();
        $rang=$em->getRepository('cloudBundle:RangoCuantitativo')->find(1);
        $form2=$this->createForm(new RangosType(),$rang);

        if($peticion->getMethod()=='POST')
        {
            $form2->bindRequest($peticion);
            if($form2->isValid()){
                $rang->setLimite1($form2->get('limite1')->getData());
                $rang->setLimite1($form2->get('limite2')->getData());
                $rang->setLimite1($form2->get('limite3')->getData());
                $rang->setLimite1($form2->get('limite4')->getData());
                $em->persist($rang);
                $em->flush();
                return $this->redirect($this->generateUrl('ma12'));
            }
        }
        return $this->render('cloudBundle:Admin:formrango.html.twig', array('form2'=>$form2->createView()));
     }

      /**
     * Edits an existing Institucion entity.
     *
     * @Route("/sistema/formrango/update", name="formrango_update")
     * @Method("POST")
     */
    public function formrangoUpdateAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:RangoCuantitativo')->find(1);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Institucion entity.');
        }

        $editForm = $this->createForm(new RangosType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
             $em->persist($entity);
            $em->flush();

             return $this->redirect($this->generateUrl('ma12'));
        }
        return $this->render('cloudBundle:Admin:formrango.html.twig', array('form2'=>$editForm->createView()));
    }

     
     /** 
      * @Route("/sistema/gestionsede", name="gestionsede")
      */
     public function GestionSedeAction(){
        $request=$this->getRequest();


        $em=$this->getDoctrine()->getEntityManager();
        if($request->getMethod()=='POST')
        {

            
            $numero=$request->request->get('numsede');

            for ($i=1; $i <= $numero; $i++) { 
                $entity  = new Sede();
                $entity->setName("Sede ".$i);
                $entity->setDireccion($i);
                $entity->setTelefono("03X 7XX XXX XXX");
                $entity->setFax("XXX XXX XXX");
                $entity->setEmail("sede$i@institucion.com");
                $entity->setRector("Coordinador ".$i);
                $entity->setSecretaria("Secretaria ".$i);

                
                $em->persist($entity);
                $em->flush();
            }
            $sedes = $em->getRepository('cloudBundle:Sede')->findAll();

            return $this->render('cloudBundle:Admin:ma112.html.twig', array('sedes'=>$sedes));
        }
        
        $sede=$em->getRepository('cloudBundle:Sede')->findAll();
        if(!$sede)
            return $this->render('cloudBundle:Admin:ma112.html.twig', array('mje'=>'No tiene tiene sedes asociadas'));
        return $this->render('cloudBundle:Admin:ma112.html.twig', array('sedes'=>$sede));
     }
     
     /**
      * @Route("/sistema/addnumsede", name="addnumsede")
      */
      public function addnumsedeAction(){
        return $this->render('cloudBundle:Admin:adnsede.html.twig', array());
      }
      
      /**
      * @Route("/sistema/addsede", name="addsede")
      */
      public function addsedeAction(){
        return $this->render('cloudBundle:Admin:adsede.html.twig', array());
      }
     
     /**
     * @Route("/sistema/prueba", name="prueba")
     */
     public function pruebaAction(){
        $em=$this->getDoctrine()->getEntityManager();
        $rang=$em->getRepository('cloudBundle:RangoCuantitativo')->find(1);
        $form=$this->createForm(new RangosType(), $rang);
        return $this->render('cloudBundle:Admin:prueba.html.twig', array('form'=>$form->createView()));
     }

       /**
     * @Route("/codigo_verificacion", name="codigo_verificacion")
     *  
     *  @Method("POST")
     */
    public function codVerificacionAction(Request $request){
        $abc = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'Ñ', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
        $codigo = "";
        mt_srand (time());
        for ($i=0; $i <= 8; $i++) { 
            $codigo .=  $abc[ mt_rand(0,26) ];
        }
        $modulo = $request->get('modulo');
        $tiempo = new \DateTime();
        
        $tiempo->modify('+1 days');
        $this->crearCodigoAction($codigo,$tiempo,$modulo);
        $this->crearNotificacionAction($codigo, $tiempo);
        return $this->render('cloudBundle:Admin:codigo_verificacion.html.twig', array('codigo'=>$codigo, 'expire'=>$tiempo,'modulo'=>$modulo) );
    }

    public function crearCodigoAction($codigo,$tiempo,$modulo)
    {
        $entity  = new CodigoVerificacion();
        $em = $this->getDoctrine()->getManager();

        $entity->setCodigo($codigo);
        $entity->setDateCreate($tiempo);
        $entity->setUserId( $this->get('security.context')->getToken()->getUser() );

        $entity_modulo = $em->getRepository('cloudBundle:ModuloCodigo')->find($modulo);
        $entity->setModuloId($entity_modulo);
        $entity->setExpire(false);

        $em->persist($entity);
        $em->flush();
    }

    public function crearNotificacionAction($codigo,$tiempo)
    {
        $entity  = new Notificaciones();
        $em = $this->getDoctrine()->getManager();
        $entity_estado = $em->getRepository('cloudBundle:EstadoNotificacion')->find(1);
        $entity_tipo = $em->getRepository('cloudBundle:TipoNotificacion')->find(3);
        $entity->setAsunto("Codigo");
        $entity->setMensaje($codigo);
        $entity->setDateCreate($tiempo);
        $entity->setEstadoId($entity_estado);
        $entity->setUserId( $this->get('security.context')->getToken()->getUser() );
        $entity->setTipoId( $entity_tipo );
        $em->persist($entity);
        $em->flush();
    }
      /**
     * @Route("/valid_user", name="valid_user")
     *  @Method("POST")
     */
    public function validUserAction(Request $request)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $username = $request->get('user');
        $codigo = $request->get('codigo');
        $user = $this->get('security.context')->getToken()->getUser();
        $entity_codigo = $em->getRepository('cloudBundle:CodigoVerificacion')->findOneBy(array('codigo' => $codigo, 'expire' => 0, 'user_id'=>$user->getId()));
        $current_password = $this->setSecurePassword( $user, $request->get('password') );

        if( !$entity_codigo )
            return $this->render('cloudBundle:Admin:valid_user.html.twig' ,array("valid_user"=>false));            
        else
        if( ($current_password == $user->getPassword() )&& ($user->getUsername() == $username ) )
            return $this->render('cloudBundle:Admin:valid_user.html.twig', array('valid_user' => true) );
    }

     private function setSecurePassword(&$entity , $password) {
        $encoder = new \Symfony\Component\Security\Core\Encoder\MessageDigestPasswordEncoder('sha512', true, 10);
        $password = $encoder->encodePassword($password, $entity->getSalt());
        return $password;
    }
    //$query="SELECT UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP(mifecha) FROM mitabla";
}
