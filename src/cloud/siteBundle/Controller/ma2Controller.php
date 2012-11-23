<?php

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\PerfilEstudiante;
use cloud\siteBundle\Form\PerfilEstudianteType;
/**
 * Periodo controller.
 *
 * @Route("/admin/personas")
 */
class ma2Controller extends Controller
{

    /**
    *
    * @Route("/", name="ma2")
    */
    public function ma2Action(){
       
        return $this->render('cloudBundle:Admin:ma2.html.twig');
    }

     /**
    *
    * @Route("/estudiantes", name="ma21")
    */
    public function ma21Action(){
       
        return $this->render('cloudBundle:Admin:ma21.html.twig');
    }

     /**
    *
    * @Route("/estudiantes/crear", name="ma211")
    */
    public function ma211Action(){
       $entity = new PerfilEstudiante();
        $form   = $this->createForm(new PerfilEstudianteType(), $entity);
        return $this->render('cloudBundle:Admin:ma211.html.twig', array( 'form'   => $form->createView() ));
    }

}
