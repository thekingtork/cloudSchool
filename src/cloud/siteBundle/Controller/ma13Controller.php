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
       
        return $this->render('cloudBundle:Admin:ma131.html.twig');
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
