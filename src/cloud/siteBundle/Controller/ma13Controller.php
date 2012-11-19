<?php

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\Periodo;
use cloud\siteBundle\Form\PeriodoType;

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
       
        return $this->render('cloudBundle:Admin:ma13.html.twig');
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
