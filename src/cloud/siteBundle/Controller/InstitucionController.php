<?php

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\Institucion;
use cloud\siteBundle\Form\InstitucionType;

/**
 * Institucion controller.
 *
 * @Route("/admincloud/institucion")
 */
class InstitucionController extends Controller
{
    /**
     * Lists all Institucion entities.
     *
     * @Route("/", name="admincloud_institucion")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('cloudBundle:Institucion')->findAll();

        return array(
            'entities' => $entities,
        );
    }

    /**
     * Finds and displays a Institucion entity.
     *
     * @Route("/{id}/show", name="admincloud_institucion_show")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Institucion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Institucion entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Displays a form to create a new Institucion entity.
     *
     * @Route("/new", name="admincloud_institucion_new")
     * @Template()
     */
    public function newAction()
    {
        $entity = new Institucion();
        $form   = $this->createForm(new InstitucionType(), $entity);

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Creates a new Institucion entity.
     *
     * @Route("/create", name="admincloud_institucion_create")
     * @Method("POST")
     * @Template("cloudBundle:Institucion:new.html.twig")
     */
    public function createAction(Request $request)
    {
        $entity  = new Institucion();
        $form = $this->createForm(new InstitucionType(), $entity);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_institucion_show', array('id' => $entity->getId())));
        }

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Displays a form to edit an existing Institucion entity.
     *
     * @Route("/{id}/edit", name="admincloud_institucion_edit")
     * @Template()
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Institucion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Institucion entity.');
        }

        $editForm = $this->createForm(new InstitucionType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Edits an existing Institucion entity.
     *
     * @Route("/{id}/update", name="admincloud_institucion_update")
     * @Method("POST")
     * @Template("cloudBundle:Institucion:edit.html.twig")
     */
    public function updateAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Institucion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Institucion entity.');
        }

        $deleteForm = $this->createDeleteForm($id);
        $editForm = $this->createForm(new InstitucionType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_institucion_edit', array('id' => $id)));
        }

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a Institucion entity.
     *
     * @Route("/{id}/delete", name="admincloud_institucion_delete")
     * @Method("POST")
     */
    public function deleteAction(Request $request, $id)
    {
        $form = $this->createDeleteForm($id);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $entity = $em->getRepository('cloudBundle:Institucion')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find Institucion entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('admincloud_institucion'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
