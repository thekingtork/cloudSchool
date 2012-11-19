<?php

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\CodigoVerificacion;
use cloud\siteBundle\Form\CodigoVerificacionType;

/**
 * CodigoVerificacion controller.
 *
 * @Route("/admincloud/codigoverificacion")
 */
class CodigoVerificacionController extends Controller
{
    /**
     * Lists all CodigoVerificacion entities.
     *
     * @Route("/", name="admincloud_codigoverificacion")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('cloudBundle:CodigoVerificacion')->findAll();

        return array(
            'entities' => $entities,
        );
    }

    /**
     * Finds and displays a CodigoVerificacion entity.
     *
     * @Route("/{id}/show", name="admincloud_codigoverificacion_show")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:CodigoVerificacion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find CodigoVerificacion entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Displays a form to create a new CodigoVerificacion entity.
     *
     * @Route("/new", name="admincloud_codigoverificacion_new")
     * @Template()
     */
    public function newAction()
    {
        $entity = new CodigoVerificacion();
        $form   = $this->createForm(new CodigoVerificacionType(), $entity);

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Creates a new CodigoVerificacion entity.
     *
     * @Route("/create", name="admincloud_codigoverificacion_create")
     * @Method("POST")
     * @Template("cloudBundle:CodigoVerificacion:new.html.twig")
     */
    public function createAction(Request $request)
    {
        $entity  = new CodigoVerificacion();
        $form = $this->createForm(new CodigoVerificacionType(), $entity);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_codigoverificacion_show', array('id' => $entity->getId())));
        }

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Displays a form to edit an existing CodigoVerificacion entity.
     *
     * @Route("/{id}/edit", name="admincloud_codigoverificacion_edit")
     * @Template()
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:CodigoVerificacion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find CodigoVerificacion entity.');
        }

        $editForm = $this->createForm(new CodigoVerificacionType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Edits an existing CodigoVerificacion entity.
     *
     * @Route("/{id}/update", name="admincloud_codigoverificacion_update")
     * @Method("POST")
     * @Template("cloudBundle:CodigoVerificacion:edit.html.twig")
     */
    public function updateAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:CodigoVerificacion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find CodigoVerificacion entity.');
        }

        $deleteForm = $this->createDeleteForm($id);
        $editForm = $this->createForm(new CodigoVerificacionType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_codigoverificacion_edit', array('id' => $id)));
        }

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a CodigoVerificacion entity.
     *
     * @Route("/{id}/delete", name="admincloud_codigoverificacion_delete")
     * @Method("POST")
     */
    public function deleteAction(Request $request, $id)
    {
        $form = $this->createDeleteForm($id);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $entity = $em->getRepository('cloudBundle:CodigoVerificacion')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find CodigoVerificacion entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('admincloud_codigoverificacion'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
