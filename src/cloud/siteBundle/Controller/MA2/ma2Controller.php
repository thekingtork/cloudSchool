<?php
 
namespace cloud\siteBundle\Controller\MA2;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\PerfilEstudiante;
use cloud\siteBundle\Entity\PerfilDocente;
use cloud\siteBundle\Entity\Role;
use cloud\siteBundle\Form\PerfilDocenteType;
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
       
        return $this->render('cloudBundle:Admin:MA2/ma2.html.twig');
    }

     /**
    *
    * @Route("/estudiantes", name="ma21")
    */
    public function ma21Action(){
        $em=$this->getDoctrine()->getEntityManager();

        $PerfilEstudiante = $em->getRepository('cloudBundle:PerfilEstudiante')->findAll();
        
       if(!$PerfilEstudiante)
            return $this->render('cloudBundle:Admin:MA2/ma21.html.twig',array('perfiles'=>$PerfilEstudiante));
        return $this->render('cloudBundle:Admin:MA2/ma212.html.twig',array('perfiles'=>$PerfilEstudiante));

    } 

     /**
    *
    * @Route("/estudiantes/crear", name="ma211")
    */
    public function ma211Action(){
       $entity = new PerfilEstudiante();
        $form   = $this->createForm(new PerfilEstudianteType(), $entity);
        return $this->render('cloudBundle:Admin:MA2/ma211.html.twig', array( 'form'   => $form->createView() ));
    }

    /**
    *
    * @Route("/estudiantes/lista", name="ma212")
    */
    public function ma212Action(){
        $em=$this->getDoctrine()->getEntityManager();

        $PerfilEstudiante = $em->getRepository('cloudBundle:PerfilDocente')->findAll();
        
       if(!$PerfilEstudiante)
            return $this->render('cloudBundle:Admin:MA2/ma22.html.twig',array('perfiles'=>$PerfilEstudiante));
        return $this->render('cloudBundle:Admin:MA2/ma212.html.twig',array('perfiles'=>$PerfilEstudiante));

    } 

     /**
    *
    * @Route("/docentes", name="ma22")
    */
    public function ma22Action(){
        $em=$this->getDoctrine()->getEntityManager();

        $PerfilEstudiante = $em->getRepository('cloudBundle:PerfilDocente')->findAll();
        
       if(!$PerfilEstudiante)
            return $this->render('cloudBundle:Admin:MA2/ma22.html.twig',array('perfiles'=>$PerfilEstudiante));
        return $this->render('cloudBundle:Admin:MA2/ma222.html.twig',array('perfiles'=>$PerfilEstudiante));

    } 

     /**
    *
    * @Route("/docentes/crear", name="ma221")
    */
    public function ma221Action(){
       $entity = new PerfilDocente();
        $form   = $this->createForm(new PerfilDocenteType(), $entity);
        return $this->render('cloudBundle:Admin:MA2/ma221.html.twig', array( 'form'   => $form->createView() ));
    }
}
