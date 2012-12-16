<?php

namespace cloud\siteBundle\Controller\MA3;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Form\PlanEstudioType;
use cloud\siteBundle\Entity\PlanEstudio;

/**
 * Periodo controller.
 *
 * @Route("admin/planes", name="planes")
 */
class MA3Controller extends Controller{
    
    /**
     * 
     * @Route("/addplanes", name="ma311")
     * 
     */
    public function ma311Action(){
        $request= $this->getRequest();
        $plan= new PlanEstudio();
        $form=$this->createForm(new PlanEstudioType(),$plan);
        if($request->getMethod()=='POST'){
            $form->bindRequest($request);
            if($form->isValid()){
                $em=$this->getDoctrine()->getEntityManager();
                $em->persist($plan);
                $em->flush();
            }
        }
        return $this->render('cloudBundle:Admin:MA3/ma311.html.twig',array('form'=>$form->createView()));
    }
}
