<?php

namespace cloud\siteBundle\Controller\MA3;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Form\PlanEstudioType;
use cloud\siteBundle\Entity\PlanEstudio;
use cloud\siteBundle\Entity\Actividad;

/**
 * Periodo controller.
 *
 * @Route("admin/planes")
 */
class MA3Controller extends Controller{

    
    
    /**
     * 
     * @Route("/", name="ma31")
     * @Method("POST")
     */
    public function ma31Action(Request $request)
    {
        
            $plan= new PlanEstudio();

            $form=$this->createForm(new PlanEstudioType(),$plan);

            $form->bindRequest($request);
            $em=$this->getDoctrine()->getEntityManager();

            $plan->setPeriodo( $form['periodo']->getData() );
            $plan->setSede( $form['sede']->getData() );
            $plan->setNactividades( $form['nactividades']->getData() );
            $plan->setAsignatura( $form['asignatura']->getData() );
            $plan->setCurso( $form['curso']->getData() );

            $porcentaje = 100/  intval($form['nactividades']->getData());
            $categoria = $em->getRepository('cloudBundle:ActividadCategoria')->find(1);
            $tipo = $em->getRepository('cloudBundle:ActividadTipo')->find(1);
            $fecha = new \DateTime();

            if( $form['sede']->getData() == '' )
                $plan->setPrincipal(true);
             $em->persist($plan);
            $em->flush();
            for ($i=0; $i < $form['nactividades']->getData() ; $i++) { 
                $actividades= new Actividad();
                $actividades->setName("Actividad");
                $actividades->setPorcentaje($porcentaje);
                $actividades->setPublicar('no');

                $actividades->setCategoria($categoria);
                $actividades->setTipo($tipo);

                $actividades->setDateInicio($fecha);
                $actividades->setDateFinal($fecha);

                $actividades->setDescripcion("Descripcion");
                $actividades->setLogroCompetencia("Logros ó Competencias");
                $actividades->setPlanId($plan);

                $em->persist($actividades);
                $em->flush();
            }
         return $this->redirect($this->generateUrl('ma32',array('id'=>$plan->getId())));
    }


    /**
     * 
     * @Route("/", name="ma3")
     * @Route("/addplanes", name="ma311")
     */
    public function ma311Action(){
        $request= $this->getRequest();
        $plan= new PlanEstudio();
        $form=$this->createForm(new PlanEstudioType(),$plan);
        return $this->render('cloudBundle:Admin:MA3/ma311.html.twig',array('form'=>$form->createView()));
    }

     /**
     * 
     * @Route("/{id}/actividades/", name="ma32")
     * 
     */
    public function ma32Action(){
        $request= $this->getRequest();
        $plan= new PlanEstudio();
        $form=$this->createForm(new PlanEstudioType(),$plan);
        return $this->render('cloudBundle:Admin:MA3/ma311.html.twig',array('form'=>$form->createView()));
    }
}
