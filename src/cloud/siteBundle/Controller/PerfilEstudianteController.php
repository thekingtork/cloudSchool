<?php

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\PerfilEstudiante;
use cloud\siteBundle\Form\PerfilEstudianteType;

/**
 * PerfilEstudiante controller.
 *
 * @Route("/admincloud/perfilestudiante")
 */
class PerfilEstudianteController extends Controller
{
    /**
     * Lists all PerfilEstudiante entities.
     *
     * @Route("/", name="admincloud_perfilestudiante")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('cloudBundle:PerfilEstudiante')->findAll();

        return array(
            'entities' => $entities,
        );
    }

    /**
     * Finds and displays a PerfilEstudiante entity.
     *
     * @Route("/{id}/show", name="admincloud_perfilestudiante_show")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:PerfilEstudiante')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find PerfilEstudiante entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Displays a form to create a new PerfilEstudiante entity.
     *
     * @Route("/new", name="admincloud_perfilestudiante_new")
     * @Template()
     */
    public function newAction()
    {
        $entity = new PerfilEstudiante();
        $form   = $this->createForm(new PerfilEstudianteType(), $entity);

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Creates a new PerfilEstudiante entity.
     *
     * @Route("/create", name="admincloud_perfilestudiante_create")
     * @Method("POST")
     * @Template("cloudBundle:PerfilEstudiante:new.html.twig")
     */
    public function createAction(Request $request)
    {
        $entity  = new PerfilEstudiante();
        $form = $this->createForm(new PerfilEstudianteType(), $entity);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_perfilestudiante_show', array('id' => $entity->getId())));
        }

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Displays a form to edit an existing PerfilEstudiante entity.
     *
     * @Route("/{id}/edit", name="admincloud_perfilestudiante_edit")
     * @Template()
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:PerfilEstudiante')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find PerfilEstudiante entity.');
        }

        $editForm = $this->createForm(new PerfilEstudianteType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Edits an existing PerfilEstudiante entity.
     *
     * @Route("/{id}/update", name="admincloud_perfilestudiante_update")
     * @Method("POST")
     * @Template("cloudBundle:PerfilEstudiante:edit.html.twig")
     */
    public function updateAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:PerfilEstudiante')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find PerfilEstudiante entity.');
        }

        $deleteForm = $this->createDeleteForm($id);
        $editForm = $this->createForm(new PerfilEstudianteType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_perfilestudiante_edit', array('id' => $id)));
        }

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a PerfilEstudiante entity.
     *
     * @Route("/{id}/delete", name="admincloud_perfilestudiante_delete")
     * @Method("POST")
     */
    public function deleteAction(Request $request, $id)
    {
        $form = $this->createDeleteForm($id);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $entity = $em->getRepository('cloudBundle:PerfilEstudiante')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find PerfilEstudiante entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('admincloud_perfilestudiante'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
