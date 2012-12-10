<?php

namespace cloud\siteBundle\Controller;

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
class PlanEstudioController extends Controller{
    
    /**
     * 
     * @Route("/addplanes", name="planes1")
     * 
     */
    public function PlanesAction(){
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
        return $this->render('cloudBundle:PlanesEstudios:Planes1.html.twig',array('form'=>$form->createView()));
    }
}
