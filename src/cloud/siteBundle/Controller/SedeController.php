<?php

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\Sede;
use cloud\siteBundle\Form\SedeType;

/**
 * Sede controller.
 *
 * @Route("/admincloud/sede")
 */
class SedeController extends Controller
{
    /**
     * Lists all Sede entities.
     *
     * @Route("/", name="admincloud_sede")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('cloudBundle:Sede')->findAll();

        return array(
            'entities' => $entities,
        );
    }

    /**
     * Finds and displays a Sede entity.
     *
     * @Route("/{id}/show", name="admincloud_sede_show")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Sede')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Sede entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Displays a form to create a new Sede entity.
     *
     * @Route("/new", name="admincloud_sede_new")
     * @Template()
     */
    public function newAction()
    {
        $entity = new Sede();
        $form   = $this->createForm(new SedeType(), $entity);

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Creates a new Sede entity.
     *
     * @Route("/create", name="admincloud_sede_create")
     * @Method("POST")
     * @Template("cloudBundle:Sede:new.html.twig")
     */
    public function createAction(Request $request)
    {
        $entity  = new Sede();
        $form = $this->createForm(new SedeType(), $entity);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_sede_show', array('id' => $entity->getId())));
        }

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Displays a form to edit an existing Sede entity.
     *
     * @Route("/{id}/edit", name="admincloud_sede_edit")
     * @Template()
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Sede')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Sede entity.');
        }

        $editForm = $this->createForm(new SedeType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Edits an existing Sede entity.
     *
     * @Route("/{id}/update", name="admincloud_sede_update")
     * @Method("POST")
     * @Template("cloudBundle:Sede:edit.html.twig")
     */
    public function updateAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Sede')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Sede entity.');
        }

        $deleteForm = $this->createDeleteForm($id);
        $editForm = $this->createForm(new SedeType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_sede_edit', array('id' => $id)));
        }

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a Sede entity.
     *
     * @Route("/{id}/delete", name="admincloud_sede_delete")
     * @Method("POST")
     */
    public function deleteAction(Request $request, $id)
    {
        $form = $this->createDeleteForm($id);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $entity = $em->getRepository('cloudBundle:Sede')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find Sede entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('admincloud_sede'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
