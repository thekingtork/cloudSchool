<?php

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\Anio;
use cloud\siteBundle\Form\AnioType;

/**
 * Anio controller.
 *
 * @Route("/admincloud/anio")
 */
class AnioController extends Controller
{
    /**
     * Lists all Anio entities.
     *
     * @Route("/", name="admincloud_anio")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('cloudBundle:Anio')->findAll();

        return array(
            'entities' => $entities,
        );
    }

    /**
     * Finds and displays a Anio entity.
     *
     * @Route("/{id}/show", name="admincloud_anio_show")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Anio')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Anio entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Displays a form to create a new Anio entity.
     *
     * @Route("/new", name="admincloud_anio_new")
     * @Template()
     */
    public function newAction()
    {
        $entity = new Anio();
        $form   = $this->createForm(new AnioType(), $entity);

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Creates a new Anio entity.
     *
     * @Route("/create", name="admincloud_anio_create")
     * @Method("POST")
     * @Template("cloudBundle:Anio:new.html.twig")
     */
    public function createAction(Request $request)
    {
        $entity  = new Anio();
        $form = $this->createForm(new AnioType(), $entity);
        $form->bind($request);
        $entity->setDateCreate(new \DateTime());
        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('ma1131'));
        }

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Displays a form to edit an existing Anio entity.
     *
     * @Route("/{id}/edit", name="admincloud_anio_edit")
     * @Template()
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Anio')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Anio entity.');
        }

        $editForm = $this->createForm(new AnioType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Edits an existing Anio entity.
     *
     * @Route("/{id}/update", name="admincloud_anio_update")
     * @Method("POST")
     * @Template("cloudBundle:Anio:edit.html.twig")
     */
    public function updateAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:Anio')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Anio entity.');
        }

        $deleteForm = $this->createDeleteForm($id);
        $editForm = $this->createForm(new AnioType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_anio_edit', array('id' => $id)));
        }

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a Anio entity.
     *
     * @Route("/{id}/delete", name="admincloud_anio_delete")
     * @Method("POST")
     */
    public function deleteAction(Request $request, $id)
    {
        $form = $this->createDeleteForm($id);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $entity = $em->getRepository('cloudBundle:Anio')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find Anio entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('admincloud_anio'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
