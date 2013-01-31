<?php

namespace cloud\siteBundle\Controller\MA4;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\Curso;
use cloud\siteBundle\Entity\Asignatura;
/**
 * Periodo controller.
 *
 * @Route("admin/academica")
 */
class MA4Controller extends Controller{

     /**
     * 
     * @Route("/", name="ma4")
     */
    public function ma4Action()
    {
        return $this->render('cloudBundle:Admin:MA4/ma4.html.twig',array());
    }

     /**
     * 
     * @Route("/AsignarCarga", name="ma41")
     */
    public function ma41Action()
    {
    	$em=$this->getDoctrine()->getEntityManager();
        $entity = $em->getRepository('cloudBundle:Curso')->findAll();
        if(!$entity)
        	return $this->render('cloudBundle:Admin:MA4/ma41.html.twig',array('mje'=>'Sin cursos creados'));
        return $this->render('cloudBundle:Admin:MA4/ma41.html.twig',array('cursos'=>$entity));
    }

     /**
     * 
     * @Route("/AsignarCarga/{id}", name="ma411")
     */
    public function ma411Action($id)
    {
    	$em=$this->getDoctrine()->getEntityManager();
        $entity = $em->getRepository('cloudBundle:Curso')->find($id);
        $entity_asignatura = $em->getRepository('cloudBundle:Asignatura')->findAll();
        if(!$entity_asignatura)
        	return $this->render('cloudBundle:Admin:MA4/ma411.html.twig',array('mje'=>'Sin Asignaturas creadas'));
        return $this->render('cloudBundle:Admin:MA4/ma411.html.twig',array('curso'=>$entity,'asignaturas'=>$entity_asignatura));
    }

    /**
     * 
     * @Route("/AsignarCarga/{id}/docentes", name="ma4111")
     */
    public function ma4111Action($id)
    {
    	$em=$this->getDoctrine()->getEntityManager();
        $entity = $em->getRepository('cloudBundle:Curso')->find($id);
        return $this->render('cloudBundle:Admin:MA4/ma4111.html.twig',array('curso'=>$entity));
    }
}
