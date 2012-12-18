<?php

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\ActividadTipo;
use cloud\siteBundle\Form\ActividadTipoType;

/**
 * ActividadTipo controller.
 *
 * @Route("/admincloud/actividadtipo")
 */
class ActividadTipoController extends Controller
{
    /**
     * Lists all ActividadTipo entities.
     *
     * @Route("/", name="admincloud_actividadtipo")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('cloudBundle:ActividadTipo')->findAll();

        return array(
            'entities' => $entities,
        );
    }

    /**
     * Finds and displays a ActividadTipo entity.
     *
     * @Route("/{id}/show", name="admincloud_actividadtipo_show")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:ActividadTipo')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find ActividadTipo entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Displays a form to create a new ActividadTipo entity.
     *
     * @Route("/new", name="admincloud_actividadtipo_new")
     * @Template()
     */
    public function newAction()
    {
        $entity = new ActividadTipo();
        $form   = $this->createForm(new ActividadTipoType(), $entity);

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Creates a new ActividadTipo entity.
     *
     * @Route("/create", name="admincloud_actividadtipo_create")
     * @Method("POST")
     * @Template("cloudBundle:ActividadTipo:new.html.twig")
     */
    public function createAction(Request $request)
    {
        $entity  = new ActividadTipo();
        $form = $this->createForm(new ActividadTipoType(), $entity);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_actividadtipo_show', array('id' => $entity->getId())));
        }

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Displays a form to edit an existing ActividadTipo entity.
     *
     * @Route("/{id}/edit", name="admincloud_actividadtipo_edit")
     * @Template()
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:ActividadTipo')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find ActividadTipo entity.');
        }

        $editForm = $this->createForm(new ActividadTipoType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Edits an existing ActividadTipo entity.
     *
     * @Route("/{id}/update", name="admincloud_actividadtipo_update")
     * @Method("POST")
     * @Template("cloudBundle:ActividadTipo:edit.html.twig")
     */
    public function updateAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:ActividadTipo')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find ActividadTipo entity.');
        }

        $deleteForm = $this->createDeleteForm($id);
        $editForm = $this->createForm(new ActividadTipoType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_actividadtipo_edit', array('id' => $id)));
        }

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a ActividadTipo entity.
     *
     * @Route("/{id}/delete", name="admincloud_actividadtipo_delete")
     * @Method("POST")
     */
    public function deleteAction(Request $request, $id)
    {
        $form = $this->createDeleteForm($id);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $entity = $em->getRepository('cloudBundle:ActividadTipo')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find ActividadTipo entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('admincloud_actividadtipo'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
