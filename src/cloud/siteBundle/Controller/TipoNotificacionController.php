<?php

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\TipoNotificacion;
use cloud\siteBundle\Form\TipoNotificacionType;

/**
 * TipoNotificacion controller.
 *
 * @Route("/admincloud/tiponotificacion")
 */
class TipoNotificacionController extends Controller
{
    /**
     * Lists all TipoNotificacion entities.
     *
     * @Route("/", name="admincloud_tiponotificacion")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('cloudBundle:TipoNotificacion')->findAll();

        return array(
            'entities' => $entities,
        );
    }

    /**
     * Finds and displays a TipoNotificacion entity.
     *
     * @Route("/{id}/show", name="admincloud_tiponotificacion_show")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:TipoNotificacion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find TipoNotificacion entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Displays a form to create a new TipoNotificacion entity.
     *
     * @Route("/new", name="admincloud_tiponotificacion_new")
     * @Template()
     */
    public function newAction()
    {
        $entity = new TipoNotificacion();
        $form   = $this->createForm(new TipoNotificacionType(), $entity);

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Creates a new TipoNotificacion entity.
     *
     * @Route("/create", name="admincloud_tiponotificacion_create")
     * @Method("POST")
     * @Template("cloudBundle:TipoNotificacion:new.html.twig")
     */
    public function createAction(Request $request)
    {
        $entity  = new TipoNotificacion();
        $form = $this->createForm(new TipoNotificacionType(), $entity);
        $form->bind($request);

        $entity->setDateCreate( new \DateTime());

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_tiponotificacion_show', array('id' => $entity->getId())));
        }

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Displays a form to edit an existing TipoNotificacion entity.
     *
     * @Route("/{id}/edit", name="admincloud_tiponotificacion_edit")
     * @Template()
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:TipoNotificacion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find TipoNotificacion entity.');
        }

        $editForm = $this->createForm(new TipoNotificacionType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Edits an existing TipoNotificacion entity.
     *
     * @Route("/{id}/update", name="admincloud_tiponotificacion_update")
     * @Method("POST")
     * @Template("cloudBundle:TipoNotificacion:edit.html.twig")
     */
    public function updateAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:TipoNotificacion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find TipoNotificacion entity.');
        }

        $deleteForm = $this->createDeleteForm($id);
        $editForm = $this->createForm(new TipoNotificacionType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_tiponotificacion_edit', array('id' => $id)));
        }

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a TipoNotificacion entity.
     *
     * @Route("/{id}/delete", name="admincloud_tiponotificacion_delete")
     * @Method("POST")
     */
    public function deleteAction(Request $request, $id)
    {
        $form = $this->createDeleteForm($id);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $entity = $em->getRepository('cloudBundle:TipoNotificacion')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find TipoNotificacion entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('admincloud_tiponotificacion'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
