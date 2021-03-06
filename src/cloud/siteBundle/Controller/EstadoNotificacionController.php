<?php

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\EstadoNotificacion;
use cloud\siteBundle\Form\EstadoNotificacionType;

/**
 * EstadoNotificacion controller.
 *
 * @Route("/admincloud/estadonotificacion")
 */
class EstadoNotificacionController extends Controller
{
    /**
     * Lists all EstadoNotificacion entities.
     *
     * @Route("/", name="admincloud_estadonotificacion")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('cloudBundle:EstadoNotificacion')->findAll();

        return array(
            'entities' => $entities,
        );
    }

    /**
     * Finds and displays a EstadoNotificacion entity.
     *
     * @Route("/{id}/show", name="admincloud_estadonotificacion_show")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:EstadoNotificacion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find EstadoNotificacion entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Displays a form to create a new EstadoNotificacion entity.
     *
     * @Route("/new", name="admincloud_estadonotificacion_new")
     * @Template()
     */
    public function newAction()
    {
        $entity = new EstadoNotificacion();
        $form   = $this->createForm(new EstadoNotificacionType(), $entity);

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Creates a new EstadoNotificacion entity.
     *
     * @Route("/create", name="admincloud_estadonotificacion_create")
     * @Method("POST")
     * @Template("cloudBundle:EstadoNotificacion:new.html.twig")
     */
    public function createAction(Request $request)
    {
        $entity  = new EstadoNotificacion();
        $form = $this->createForm(new EstadoNotificacionType(), $entity);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_estadonotificacion_show', array('id' => $entity->getId())));
        }

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Displays a form to edit an existing EstadoNotificacion entity.
     *
     * @Route("/{id}/edit", name="admincloud_estadonotificacion_edit")
     * @Template()
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:EstadoNotificacion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find EstadoNotificacion entity.');
        }

        $editForm = $this->createForm(new EstadoNotificacionType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Edits an existing EstadoNotificacion entity.
     *
     * @Route("/{id}/update", name="admincloud_estadonotificacion_update")
     * @Method("POST")
     * @Template("cloudBundle:EstadoNotificacion:edit.html.twig")
     */
    public function updateAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:EstadoNotificacion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find EstadoNotificacion entity.');
        }

        $deleteForm = $this->createDeleteForm($id);
        $editForm = $this->createForm(new EstadoNotificacionType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_estadonotificacion_edit', array('id' => $id)));
        }

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a EstadoNotificacion entity.
     *
     * @Route("/{id}/delete", name="admincloud_estadonotificacion_delete")
     * @Method("POST")
     */
    public function deleteAction(Request $request, $id)
    {
        $form = $this->createDeleteForm($id);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $entity = $em->getRepository('cloudBundle:EstadoNotificacion')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find EstadoNotificacion entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('admincloud_estadonotificacion'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
