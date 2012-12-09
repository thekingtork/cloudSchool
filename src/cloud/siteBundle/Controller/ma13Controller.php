<?php

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\Periodo;
use cloud\siteBundle\Entity\Grado;
use cloud\siteBundle\Entity\Curso;
use cloud\siteBundle\Entity\Area;
use cloud\siteBundle\Entity\Asignatura;
use cloud\siteBundle\Entity\NivelesAcademicos;

use cloud\siteBundle\Form\PeriodoType;
use cloud\siteBundle\Form\NivelesAcademicosType;
use cloud\siteBundle\Form\GradoType;
use cloud\siteBundle\Form\CursoType;
use cloud\siteBundle\Form\AreaType;
use cloud\siteBundle\Form\AsignaturaType;

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
       $na=$em->getRepository('cloudBundle:Area')->findAll();
       $periodos=$em->getRepository('cloudBundle:Periodo')->findAll();
       if(!$na){
          if(!$periodos)
            return $this->render('cloudBundle:Admin:ma13.html.twig', array('estado'=>'nulo','periodos'=>'periodos'));
          else    
            return $this->render('cloudBundle:Admin:ma13.html.twig', array('estado'=>'nulo','periodos'=>'no-nulo'));
       }
       if(!$periodos)
        return $this->render('cloudBundle:Admin:ma13.html.twig', array('estado'=>'no-nulo','periodos'=>'periodos'));
      else
        return $this->render('cloudBundle:Admin:ma13.html.twig', array('estado'=>'no-nulo','periodos'=>'no-nulo'));
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
     * @Route("/cursos", name="ma133")
     */
    public function ma133Action()
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Grado')->findAll();

        if (!$entity) 
          return $this->render('cloudBundle:Admin:ma133.html.twig', array('mje'=>"Sin Grados Asignados."));
        return $this->render('cloudBundle:Admin:ma133.html.twig', array('grados'=>$entity));
    }

    /** 
      * @Route("/cursos/{id}/crear", name="ma1331")
      */
     public function ma1331Action($id){
        $request=$this->getRequest();
        $em=$this->getDoctrine()->getEntityManager();
        $grado = $em->getRepository('cloudBundle:Grado')->find($id);

        if($request->getMethod()=='POST')
        {
            $numero=$request->request->get('numsede');
            for ($i=1; $i <= $numero; $i++) { 
                $entity  = new Curso();
                $entity->setName("Curso");
                $entity->setGradoId($grado);
                $entity->setCupo(35);
                $em->persist($entity);
                $em->flush();
            }
            $cursos = $em->getRepository('cloudBundle:Curso')->findBy(array('grado_id'=>$id));

            return $this->render('cloudBundle:Admin:ma1331.html.twig', array('curso'=>$cursos));
        }
        
        $cursos = $em->getRepository('cloudBundle:Curso')->findBy(array('grado_id'=>$id));
        if(!$cursos)
            return $this->render('cloudBundle:Admin:ma1331.html.twig', array('mje'=>'No tiene tiene cursos asociados'));
        return $this->render('cloudBundle:Admin:ma1331.html.twig', array('cursos'=>$cursos));
     }

      /**
     *
     * @Route("/cursos/{id}/edit", name="ma13311")
     */
    public function ma13311Action($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Curso')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Curso entity.');
        }

        $editForm = $this->createForm(new CursoType(), $entity);

        return $this->render('cloudBundle:Admin:ma13311.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
        ));
    }

    /**
     * Edits an existing Notificaciones entity.
     *
     * @Route("/cursos/{id}/update", name="ma13312")
     * @Method("POST")
     */
    public function ma13312Action(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Curso')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Curso entity.');
        }

        
        $editForm = $this->createForm(new CursoType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            $grado = $entity->getGradoId();
            return $this->redirect($this->generateUrl('ma1331', array('id'=>$grado->getId())) );
        }

        $niveles = $em->getRepository('cloudBundle:Curso')->findAll();
        return $this->render('cloudBundle:Admin:ma1331.html.twig', array('cursos'=>$niveles));
    }









    /** 
      * @Route("/areas", name="ma134")
      */
     public function ma134Action(){
        $request=$this->getRequest();
        $em=$this->getDoctrine()->getEntityManager();


        if($request->getMethod()=='POST')
        {
            $numero=$request->request->get('numsede');
            for ($i=1; $i <= $numero; $i++) { 
                $entity  = new Area();
                $entity->setName("Area");
                $em->persist($entity);
                $em->flush();
            }
            $areas = $em->getRepository('cloudBundle:Area')->findAll();

            return $this->render('cloudBundle:Admin:ma134.html.twig', array('areas'=>$areas));
        }
        
        $areas=$em->getRepository('cloudBundle:Area')->findAll();
        if(!$areas)
            return $this->render('cloudBundle:Admin:ma134.html.twig', array('mje'=>'No tiene tiene areas asociadas'));
        return $this->render('cloudBundle:Admin:ma134.html.twig', array('areas'=>$areas));
     }



    /** 
      * @Route("/areas/{id}/asignaturas", name="ma1341")
      */
     public function ma1341Action($id){
        $request=$this->getRequest();
        $em=$this->getDoctrine()->getEntityManager();
        $area = $em->getRepository('cloudBundle:Area')->find($id);

        if($request->getMethod()=='POST')
        {
            $numero=$request->request->get('numsede');
            for ($i=1; $i <= $numero; $i++) { 
                $entity  = new Asignatura();
                $entity->setName("Asignatura");
                $entity->setAreaId($area);
                $em->persist($entity);
                $em->flush();
            }
            $asignaturas = $em->getRepository('cloudBundle:Asignatura')->findBy(array('area_id'=>$id));
            

            return $this->render('cloudBundle:Admin:ma1341.html.twig', array('asignaturas'=>$asignaturas));
        }
        
        $asignaturas = $em->getRepository('cloudBundle:Asignatura')->findBy(array('area_id'=>$id));
        
        if(!$asignaturas)
            return $this->render('cloudBundle:Admin:ma1341.html.twig', array('mje'=>'No tiene tiene asignaturas asociadas'));
        return $this->render('cloudBundle:Admin:ma1341.html.twig', array('asignaturas'=>$asignaturas));
     }

       /**
     *
     * @Route("/areas/{id}/asignaturas/edit", name="ma1342")
     */
    public function ma1342Action($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Asignatura')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Curso entity.');
        }

        $editForm = $this->createForm(new AsignaturaType(), $entity);

        return $this->render('cloudBundle:Admin:ma1342.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
        ));
    }

    /**
     *
     * @Route("/areas/{id}/asignaturas/update", name="ma13421")
     * @Method("POST")
     */
    public function ma13421Action(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Asignatura')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Area entity.');
        }

        
        $editForm = $this->createForm(new AsignaturaType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            $area = $entity->getAreaId();

            return $this->redirect($this->generateUrl('ma1341', array('id'=>$area->getId()) ));
        }

        $asignaturas = $em->getRepository('cloudBundle:Asignatura')->findBy(array('area_id'=>$id));
        return $this->render('cloudBundle:Admin:ma134.html.twig', array('asignaturas'=>$asignaturas));
    }

    /**
     *
     * @Route("/areas/{id}/edit", name="ma1343")
     */
    public function ma1343Action($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Area')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Area entity.');
        }

        $editForm = $this->createForm(new AreaType(), $entity);

        return $this->render('cloudBundle:Admin:ma1343.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
        ));
    }


    /**
     *
     * @Route("/areas/{id}/update", name="ma13431")
     * @Method("POST")
     */
    public function ma13431Action(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Area')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Area entity.');
        }

        
        $editForm = $this->createForm(new AreaType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('ma134'));
        }

        $areas = $em->getRepository('cloudBundle:Area')->findAll();
        return $this->render('cloudBundle:Admin:ma134.html.twig', array('areas'=>$areas));
    }

}
