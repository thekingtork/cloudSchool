<?php 

namespace cloud\siteBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use cloud\siteBundle\Entity\PerfilDocente;
use cloud\siteBundle\Entity\User;
use cloud\siteBundle\Form\PerfilDocenteType;

/**
 * PerfilDocente controller.
 *
 * @Route("/admincloud/perfildocente")
 */
class PerfilDocenteController extends Controller
{
    /**
     * Lists all PerfilDocente entities.
     *
     * @Route("/", name="admincloud_perfildocente")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('cloudBundle:PerfilDocente')->findAll();

        return array(
            'entities' => $entities,
        );
    }

    /**
     * Finds and displays a PerfilDocente entity.
     *
     * @Route("/{id}/show", name="admincloud_perfildocente_show")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:PerfilDocente')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find PerfilDocente entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Displays a form to create a new PerfilDocente entity.
     *
     * @Route("/new", name="admincloud_perfildocente_new")
     * @Template()
     */
    public function newAction()
    {
        $entity = new PerfilDocente();
        $form   = $this->createForm(new PerfilDocenteType(), $entity);

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Creates a new PerfilDocente entity.
     *
     * @Route("/create", name="admincloud_perfildocente_create")
     * @Method("POST")
     * @Template("cloudBundle:PerfilDocente:new.html.twig")
     */
    public function createAction(Request $request)
    {

        $entity  = new PerfilDocente();
        $entity_user  = new User();
        $form = $this->createForm(new PerfilDocenteType(), $entity);
        $form->bind($request);

        if ($form->isValid()) {
            
            $em = $this->getDoctrine()->getManager();
            
            $ti = $form->get('nmr_documento')->getData();
            $cod = array('O','Z','N','J','L','T','C','P','I','K');
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
            $entity_role = $em->getRepository('cloudBundle:Role')->find(4);
            $entity_user->addUserRole( $entity_role );
            

            $em->persist($entity_user);
            $em->flush();

            $entity->setUserId($entity_user);

            $em->persist($entity);
            $em->flush();


            return $this->redirect($this->generateUrl('admincloud_perfildocente_show', array('id' => $entity->getId())));
        }

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Displays a form to edit an existing PerfilDocente entity.
     *
     * @Route("/{id}/edit", name="admincloud_perfildocente_edit")
     * @Template()
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:PerfilDocente')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find PerfilDocente entity.');
        }

        $editForm = $this->createForm(new PerfilDocenteType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Edits an existing PerfilDocente entity.
     *
     * @Route("/{id}/update", name="admincloud_perfildocente_update")
     * @Method("POST")
     * @Template("cloudBundle:PerfilDocente:edit.html.twig")
     */
    public function updateAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('cloudBundle:PerfilDocente')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find PerfilDocente entity.');
        }

        $deleteForm = $this->createDeleteForm($id);
        $editForm = $this->createForm(new PerfilDocenteType(), $entity);
        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admincloud_perfildocente_edit', array('id' => $id)));
        }

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a PerfilDocente entity.
     *
     * @Route("/{id}/delete", name="admincloud_perfildocente_delete")
     * @Method("POST")
     */
    public function deleteAction(Request $request, $id)
    {
        $form = $this->createDeleteForm($id);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $entity = $em->getRepository('cloudBundle:PerfilDocente')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find PerfilDocente entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('admincloud_perfildocente'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
