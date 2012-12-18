<?php

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\ActividadCategoria;
use cloud\siteBundle\Form\ActividadCategoriaType;

/**
 * ActividadCategoria controller.
 *
 * @Route("/admincloud/actividadcategoria")
 */
class ActividadCategoriaController extends Controller
{
    /**
     * Lists all ActividadCategoria entities.
     *
     * @Route("/", name="admincloud_actividadcategoria")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('cloudBundle:ActividadCategoria')->findAll();

        return array(
            'entities' => $entities,
        );
    }

    /**
     * Finds and displays a ActividadCategoria entity.
     *
     * @Route("/{id}/show", name="admincloud_actividadcategoria_show")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:ActividadCategoria')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find ActividadCategoria entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Displays a form to create a new ActividadCategoria entity.
     *
     * @Route("/new", name="admincloud_actividadcategoria_new")
     * @Template()
     */
    public function newAction()
    {
        $entity = new ActividadCategoria();
        $form   = $this->createForm(new ActividadCategoriaType(), $entity);

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Creates a new ActividadCategoria entity.
     *
     * @Route("/create", name="admincloud_actividadcategoria_create")
     * @Method("POST")
     * @Template("cloudBundle:ActividadCategoria:new.html.twig")
     */
    public function createAction(Request $request)
    {
        $entity  = new ActividadCategoria();
        $form = $this->createForm(new ActividadCategoriaType(), $entity);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_actividadcategoria_show', array('id' => $entity->getId())));
        }

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Displays a form to edit an existing ActividadCategoria entity.
     *
     * @Route("/{id}/edit", name="admincloud_actividadcategoria_edit")
     * @Template()
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:ActividadCategoria')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find ActividadCategoria entity.');
        }

        $editForm = $this->createForm(new ActividadCategoriaType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Edits an existing ActividadCategoria entity.
     *
     * @Route("/{id}/update", name="admincloud_actividadcategoria_update")
     * @Method("POST")
     * @Template("cloudBundle:ActividadCategoria:edit.html.twig")
     */
    public function updateAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:ActividadCategoria')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find ActividadCategoria entity.');
        }

        $deleteForm = $this->createDeleteForm($id);
        $editForm = $this->createForm(new ActividadCategoriaType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_actividadcategoria_edit', array('id' => $id)));
        }

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a ActividadCategoria entity.
     *
     * @Route("/{id}/delete", name="admincloud_actividadcategoria_delete")
     * @Method("POST")
     */
    public function deleteAction(Request $request, $id)
    {
        $form = $this->createDeleteForm($id);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $entity = $em->getRepository('cloudBundle:ActividadCategoria')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find ActividadCategoria entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('admincloud_actividadcategoria'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
