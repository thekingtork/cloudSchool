<?php

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\Periodo;
use cloud\siteBundle\Entity\Grado;
use cloud\siteBundle\Entity\NivelesAcademicos;

use cloud\siteBundle\Form\PeriodoType;
use cloud\siteBundle\Form\NivelesAcademicosType;
use cloud\siteBundle\Form\GradoType;

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
        $em=$this->getDoctrine()->getEntityManager();
        
        $na=$em->getRepository('cloudBundle:NivelesAcademicos')->findAll();
        if (!$na)
          $estado = "nulo";
        else
          $estado = "no-nulo";
       return $this->render('cloudBundle:Admin:ma132.html.twig',array("estado"=>$estado));
     }
     
     
    
    /**
     * @Route("/peridos/create", name="ma1311")
     *  @Method("POST")
     */
    public function ma1311Action()
    {
        $entity  = new Periodo();
        $form = $this->createForm(new PeriodoType(), $entity);
        
        return $this->render('cloudBundle:Admin:ma1311.html.twig', array(
            'form'   => $form->createView(),
        ));
    }



     /** 
      * @Route("/niveles-grados/grados", name="ma1322")
      */
     public function ma1322Action(){
        $em=$this->getDoctrine()->getEntityManager();
        $niveles=$em->getRepository('cloudBundle:NivelesAcademicos')->findAll();

        if(!$niveles)
            return $this->render('cloudBundle:Admin:ma1322.html.twig', array('mje'=>'No tiene tiene niveles academicos asociadas'));
        return $this->render('cloudBundle:Admin:ma1322.html.twig', array('niveles'=>$niveles));
     }

      /** 
      * @Route("/niveles-grados/grados/{id}/crear", name="ma13221")
      */
     public function ma13221Action($id){
        $request=$this->getRequest();
        $em=$this->getDoctrine()->getEntityManager();
        $nivel = $em->getRepository('cloudBundle:NivelesAcademicos')->find($id);

        if($request->getMethod()=='POST')
        {
            $numero=$request->request->get('numsede');
            for ($i=1; $i <= $numero; $i++) { 
                $entity  = new Grado();
                $entity->setName("Grado");
                $entity->setNivelId($nivel);
                $em->persist($entity);
                $em->flush();
            }
            $grados = $em->getRepository('cloudBundle:Grado')->findBy(array('nivel_id'=>$id));

            return $this->render('cloudBundle:Admin:ma13221.html.twig', array('grados'=>$grados));
        }
        
        $grados=$em->getRepository('cloudBundle:Grado')->findBy(array( 'nivel_id'=>$id));
        if(!$grados)
            return $this->render('cloudBundle:Admin:ma13221.html.twig', array('mje'=>'No tiene tiene grados academicos asociadas'));
        return $this->render('cloudBundle:Admin:ma13221.html.twig', array('grados'=>$grados));
     }

      /**
     *
     * @Route("/niveles-grados/grados/{id}/edit", name="ma13222")
     */
    public function ma13222Action($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Grado')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Grado entity.');
        }

        $editForm = $this->createForm(new GradoType(), $entity);

        return $this->render('cloudBundle:Admin:ma13222.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
        ));
    }

     /**
     *
     * @Route("/niveles-grados/grados/{id}/update", name="ma13223")
     * @Method("POST")
     */
    public function ma13223Action(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Grado')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Grado entity.');
        }

        
        $editForm = $this->createForm(new GradoType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            $nivel = $entity->getNivelId();
            return $this->redirect($this->generateUrl('ma13221',array('id'=> $nivel->getId() )) );
        }

        $entity = $em->getRepository('cloudBundle:Grado')->findAll();
        return $this->render('cloudBundle:Admin:ma13222.html.twig', array('grados'=>$entity));
    }










     /** 
      * @Route("/niveles-grados/niveles", name="ma1321")
      */
     public function ma1321Action(){
        $request=$this->getRequest();
        $em=$this->getDoctrine()->getEntityManager();
        if($request->getMethod()=='POST')
        {
            $numero=$request->request->get('numsede');
            for ($i=1; $i <= $numero; $i++) { 
                $entity  = new NivelesAcademicos();
                $entity->setName("Nivel");
                $em->persist($entity);
                $em->flush();
            }
            $niveles = $em->getRepository('cloudBundle:NivelesAcademicos')->findAll();

            return $this->render('cloudBundle:Admin:ma1321.html.twig', array('niveles'=>$niveles));
        }
        
        $niveles=$em->getRepository('cloudBundle:NivelesAcademicos')->findAll();
        if(!$niveles)
            return $this->render('cloudBundle:Admin:ma1321.html.twig', array('mje'=>'No tiene tiene niveles academicos asociadas'));
        return $this->render('cloudBundle:Admin:ma1321.html.twig', array('niveles'=>$niveles));
     }

     /**
     *
     * @Route("/niveles-grados/niveles/{id}/edit", name="ma13211")
     */
    public function ma13211Action($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:NivelesAcademicos')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Niveles Academicos entity.');
        }

        $editForm = $this->createForm(new NivelesAcademicosType(), $entity);

        return $this->render('cloudBundle:Admin:ma13211.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
        ));
    }

    /**
     * Edits an existing Notificaciones entity.
     *
     * @Route("/niveles-grados/niveles/{id}/update", name="ma13212")
     * @Method("POST")
     */
    public function ma13212Action(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:NivelesAcademicos')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find NivelesAcademicos entity.');
        }

        
        $editForm = $this->createForm(new NivelesAcademicosType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('ma1321') );
        }

        $niveles = $em->getRepository('cloudBundle:NivelesAcademicos')->findAll();
        return $this->render('cloudBundle:Admin:ma1321.html.twig', array('niveles'=>$niveles));
    }
    
    


     /**
     *
     * @Route("/curso", name="ma133")
     */
    public function ma133Action()
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Grado')->findAll();

        if (!$entity) 
          return $this->render('cloudBundle:Admin:ma133.html.twig', array('mje'=>"Sin Grados Asignados."));
        return $this->render('cloudBundle:Admin:ma133.html.twig', array('grados'=>$entity));
    }

}
