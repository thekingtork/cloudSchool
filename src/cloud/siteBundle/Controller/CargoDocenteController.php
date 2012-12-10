<?php

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\CargoDocente;
use cloud\siteBundle\Form\CargoDocenteType;

/**
 * CargoDocente controller.
 *
 * @Route("/admincloud/cargodocente")
 */
class CargoDocenteController extends Controller
{
    /**
     * Lists all CargoDocente entities.
     *
     * @Route("/", name="admincloud_cargodocente")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('cloudBundle:CargoDocente')->findAll();

        return array(
            'entities' => $entities,
        );
    }

    /**
     * Finds and displays a CargoDocente entity.
     *
     * @Route("/{id}/show", name="admincloud_cargodocente_show")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:CargoDocente')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find CargoDocente entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Displays a form to create a new CargoDocente entity.
     *
     * @Route("/new", name="admincloud_cargodocente_new")
     * @Template()
     */
    public function newAction()
    {
        $entity = new CargoDocente();
        $form   = $this->createForm(new CargoDocenteType(), $entity);

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Creates a new CargoDocente entity.
     *
     * @Route("/create", name="admincloud_cargodocente_create")
     * @Method("POST")
     * @Template("cloudBundle:CargoDocente:new.html.twig")
     */
    public function createAction(Request $request)
    {
        $entity  = new CargoDocente();
        $form = $this->createForm(new CargoDocenteType(), $entity);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_cargodocente_show', array('id' => $entity->getId())));
        }

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Displays a form to edit an existing CargoDocente entity.
     *
     * @Route("/{id}/edit", name="admincloud_cargodocente_edit")
     * @Template()
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:CargoDocente')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find CargoDocente entity.');
        }

        $editForm = $this->createForm(new CargoDocenteType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Edits an existing CargoDocente entity.
     *
     * @Route("/{id}/update", name="admincloud_cargodocente_update")
     * @Method("POST")
     * @Template("cloudBundle:CargoDocente:edit.html.twig")
     */
    public function updateAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:CargoDocente')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find CargoDocente entity.');
        }

        $deleteForm = $this->createDeleteForm($id);
        $editForm = $this->createForm(new CargoDocenteType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_cargodocente_edit', array('id' => $id)));
        }

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a CargoDocente entity.
     *
     * @Route("/{id}/delete", name="admincloud_cargodocente_delete")
     * @Method("POST")
     */
    public function deleteAction(Request $request, $id)
    {
        $form = $this->createDeleteForm($id);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $entity = $em->getRepository('cloudBundle:CargoDocente')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find CargoDocente entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('admincloud_cargodocente'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
