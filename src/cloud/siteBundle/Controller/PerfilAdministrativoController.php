<?php

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\PerfilAdministrativo;
use cloud\siteBundle\Entity\User;
use cloud\siteBundle\Form\PerfilAdministrativoType;
 
/**
 * PerfilAdministrativo controller.
 *
 * @Route("/admincloud/perfiladministrativo")
 */
class PerfilAdministrativoController extends Controller
{
    /**
     * Lists all PerfilAdministrativo entities.
     *
     * @Route("/", name="admincloud_perfiladministrativo")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('cloudBundle:PerfilAdministrativo')->findAll();

        return array(
            'entities' => $entities,
        );
    }

    /**
     * Finds and displays a PerfilAdministrativo entity.
     *
     * @Route("/{id}/show", name="admincloud_perfiladministrativo_show")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:PerfilAdministrativo')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find PerfilAdministrativo entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Displays a form to create a new PerfilAdministrativo entity.
     *
     * @Route("/new", name="admincloud_perfiladministrativo_new")
     * @Template()
     */
    public function newAction()
    {
        $entity = new PerfilAdministrativo();
        $form   = $this->createForm(new PerfilAdministrativoType(), $entity);

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Creates a new PerfilAdministrativo entity.
     *
     * @Route("/create", name="admincloud_perfiladministrativo_create")
     * @Method("POST")
     * @Template("cloudBundle:PerfilAdministrativo:new.html.twig")
     */
    public function createAction(Request $request)
    {
        $entity  = new PerfilAdministrativo();
        $form = $this->createForm(new PerfilAdministrativoType(), $entity);
        $entity_user  = new User();
        $form->bind($request);

        if ($form->isValid()) {
            
            $em = $this->getDoctrine()->getManager();
            
            $ti = $form->get('nmr_documento')->getData();
             $cod = array('M','D','C','F','O','E','T','A','L','J');
            $username = "";
            for ($i=0; $i < strlen($ti); $i++)  
                $username .= $cod[$ti[$i]];

            $encoder = new \Symfony\Component\Security\Core\Encoder\MessageDigestPasswordEncoder('sha512', true, 10);

            $entity_user->setNombre($form->get('nombre')->getData());
            $entity_user->setApellido($form->get('apellido')->getData());
            $entity_user->setAvatarUrl("images.png");
            $entity_user->setUsername($username);
            $entity_user->setSalt(md5(time()));
            
            $password = $encoder->encodePassword($ti, $entity_user->getSalt());
            
            $entity_user->setPassword($password);
            $entity_role = $em->getRepository('cloudBundle:Role')->find(5);
            $entity_user->addUserRole( $entity_role );
            

            $em->persist($entity_user);
            $em->flush();

            $entity->setUserId($entity_user);

            $em->persist($entity);
            $em->flush();


            return $this->redirect($this->generateUrl('admincloud_perfiladministrativo_show', array('id' => $entity->getId())));
        }

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Displays a form to edit an existing PerfilAdministrativo entity.
     *
     * @Route("/{id}/edit", name="admincloud_perfiladministrativo_edit")
     * @Template()
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:PerfilAdministrativo')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find PerfilAdministrativo entity.');
        }

        $editForm = $this->createForm(new PerfilAdministrativoType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Edits an existing PerfilAdministrativo entity.
     *
     * @Route("/{id}/update", name="admincloud_perfiladministrativo_update")
     * @Method("POST")
     * @Template("cloudBundle:PerfilAdministrativo:edit.html.twig")
     */
    public function updateAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:PerfilAdministrativo')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find PerfilAdministrativo entity.');
        }

        $deleteForm = $this->createDeleteForm($id);
        $editForm = $this->createForm(new PerfilAdministrativoType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_perfiladministrativo_edit', array('id' => $id)));
        }

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a PerfilAdministrativo entity.
     *
     * @Route("/{id}/delete", name="admincloud_perfiladministrativo_delete")
     * @Method("POST")
     */
    public function deleteAction(Request $request, $id)
    {
        $form = $this->createDeleteForm($id);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $entity = $em->getRepository('cloudBundle:PerfilAdministrativo')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find PerfilAdministrativo entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('admincloud_perfiladministrativo'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
