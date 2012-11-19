<?php

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\Periodo;
use cloud\siteBundle\Form\PeriodoType;
use cloud\siteBundle\Entity\NivelesAcademicos;
use cloud\siteBundle\Form\NivelesAcademicosType;

/**
 * Periodo controller.
 *
 * @Route("/admin/sistema/criteriosacademicos")
 */
class ma13Controller extends Controller
{

    /**
    *
    * @Route("/", name="ma13")
    */
    public function ma13Action(){
       $em=$this->getDoctrine()->getEntityManager();
       $na=$em->getRepository('cloudBundle:NivelesAcademicos')->find(7);
       if(!$na){
            return $this->render('cloudBundle:Admin:ma13.html.twig', array('estado'=>'nulo'));
       }
       return $this->render('cloudBundle:Admin:ma13.html.twig', array());
    }

    /**
    *
    * @Route("/periodos", name="ma131")
    */
    public function ma131Action(){
        $em=$this->getDoctrine()->getEntityManager();
        $entity = $em->getRepository('cloudBundle:Anio')->findOneBy(array('active'=>'1'));
        if(!$entity)
            return $this->render('cloudBundle:Admin:ma131.html.twig');
        else
        {
            $entity = $em->getRepository('cloudBundle:Periodo')->find(1);
            if (!$entity) 
                return $this->render('cloudBundle:Admin:ma131.html.twig',array('requeriment'=>true));
            else
            {
                
                return $this->render('cloudBundle:Admin:ma131.html.twig',array('requeriment'=>true,"periodo"=>$entity));
            }
        }
    }
    
    /**
     * 
     * @Route("/niveles-grados", name="ma132")
     */
     public function ma132Action(){
        $request=$this->getRequest();
        $em=$this->getDoctrine()->getEntityManager();
        $na=$em->getRepository('cloudBundle:NivelesAcademicos')->findAll();
        if($request->getMethod()=='POST'){
            $numero=$request->request->get('niveles');
            return $this->render('cloudBundle:Admin:ma132.html.twig', array('numero2'=>$numero,'niveles'=>'','mje'=>''));
        }
        if(!$na){
            return $this->render('cloudBundle:Admin:ma132.html.twig', array('mje'=>'No ha definido Niveles Academicos'));
        }
        return $this->render('cloudBundle:Admin:ma132.html.twig',array('niveles'=>$na));
     }
     
     /**
      * 
      * @Route("/addniveles", name="addniveles")
      */
      public function addnivelesAction(){
        $request=$this->getRequest();
        $nivel=new NivelesAcademicos();
        $form=$this->createForm(new NivelesAcademicosType(),$nivel);
        if($request->getMethod()=='POST'){
            $form->bindRequest($request);
            if($form->isValid()){
                $em=$this->getDoctrine()->getEntityManager();
                $em->persist($nivel);
                $em->flush();
                return $this->redirect($this->generateUrl('ma13'));
            }
        }
        return $this->render('cloudBundle:Admin:addniveles.html.twig', array('form'=>$form->createView()));
      }
     
    
    /**
     * Creates a new Periodo entity.
     *
     * @Route("/peridos/create", name="ma1311")
     */
    public function ma1311Action()
    {
        $entity  = new Periodo();
        $form = $this->createForm(new PeriodoType(), $entity);
        
        return $this->render('cloudBundle:Admin:ma1311.html.twig', array(
            'form'   => $form->createView(),
        ));
    }

}
