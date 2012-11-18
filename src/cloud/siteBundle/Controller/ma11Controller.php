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
        //$user = $this->get('security.context')->getToken()->getUser();
        //$em = $this->getDoctrine()->getEntityManager();
        //$sedes = $em->getRepository('cloudBundle:Sede')->findBy( array( 'id' => $user->getInstitucionId())); 
        return $this->render('cloudBundle:Admin:ma112.html.twig');
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
    public function createAction(Request $request)
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

        return $this->render('cloudBundle:Admin:ma1131.html.twig',
        array(  
            'form'   => $form->createView(),
        ));
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
        $entity = new Anio();
        $form   = $this->createForm(new AnioType(), $entity);

        return $this->render('cloudBundle:Admin:ma1132.html.twig',
        array(  
            'form'   => $form->createView(),
        ));
    }

}
