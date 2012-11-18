<?php

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\RedirectResponse;
use cloud\siteBundle\Entity\Sede;
use cloud\siteBundle\Form\SedeType;
use cloud\siteBundle\Entity\Institucion;
use cloud\siteBundle\Entity\EscCualitativa;
use cloud\siteBundle\Form\InstitucionType;
use cloud\siteBundle\Entity\AjustesEvaluacion;
use cloud\siteBundle\Form\AjustesEvaluacionType;
use cloud\siteBundle\Form\RangosType;
use cloud\siteBundle\Entity\RangoCuantitativo;
use cloud\siteBundle\Form\AnioType;
use cloud\siteBundle\Entity\Anio;
use cloud\siteBundle\Form\NivelesAcademicosType;
use cloud\siteBundle\Entity\NivelesAcademicos;


/**
     *
     * @Route("/admin")
     */
class ma11Controller extends Controller
{
	

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
        $sede=$em->getRepository('cloudBundle:Sede')->findAll();
        if($request->getMethod()=='POST'){
            $numero=$request->request->get('numsede');
            return $this->render('cloudBundle:Admin:ma112.html.twig', array('numero'=>$numero,'sedes'=>'','mje'=>''));
        }
        if(!$sede){
            return $this->render('cloudBundle:Admin:ma112.html.twig', array('mje'=>'No tiene tiene sedes asociadas'));
        }
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
     * @Route("/valid_user", name="valid_user")
     *  @Method("POST")
     */
    public function validUserAction(Request $request)
    {
        $user = $request->get('user');
        $em = $this->getDoctrine()->getEntityManager();
        $entity = $em->getRepository('cloudBundle:User')->findOneBy(array("username" => $user));
        $current_password = setSecurePassword( $entity, $request->get('password') );
            return $this->render('cloudBundle:Admin:valid_user.html.twig' );
    }

     private function setSecurePassword(&$entity , $password) {
        $encoder = new \Symfony\Component\Security\Core\Encoder\MessageDigestPasswordEncoder('sha512', true, 10);
        $password = $encoder->encodePassword($password, $entity->getSalt());
        return $password;
    }

      /**
     * @Route("/codigo_verificacion", name="codigo_verificacion")
     *  
     */
    public function codVerificacionAction(){
        $abc = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'Ñ', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
        $codigo = "";
        mt_srand (time());
        for ($i=0; $i <= 8; $i++) { 
            $codigo .=  $abc[ mt_rand(0,28)];
        }
        return $this->render('cloudBundle:Admin:codigo_verificacion.html.twig', array('codigo'=>$codigo) );
    }
    
    /**
     * 
     * @Route("/sistema/criteriosacademicos/niveles-grados", name="ma132")
     */
     public function ma132Action(){
        $request=$this->getRequest();
        $nacademicos=new NivelesAcademicos();
        $form=$this->createForm(new NivelesAcademicosType(), $nacademicos);
        if($request->getMethod()=='POST'){
            $form->bindRequest($request);
            if($form->isValid()){
                $dato=$request->request->get('name');
                $nacademicos->setName($dato);
                $em=$this->getDoctrine()->getEntityManager();
                $em->persist($nacademicos);
                $em->flush();
            }
        }
        return $this->render('cloudBundle:Admin:ma132.html.twig',array('form'=>$form->createView()));
     }

    public function crearNotificacionAction($codigo)
    {
        $entity  = new Notificaciones();
        $em = $this->getDoctrine()->getManager();
        $entity_estado = $em->getRepository('cloudBundle:EstadoNotificacion')->find(1);

        $entity->setAsunto("Codigo de Verificacion");
        $entity->setMensaje("")

        $entity->setEstadoId($entity_estado);
        $entity->setDateCreate(new \DateTime());
        $em->persist($entity);
        $em->flush();
            return $this->render('cloudBundle:Admin:codigo_verificacion.html.twig', array('codigo'=>$codigo) );

    }

}
