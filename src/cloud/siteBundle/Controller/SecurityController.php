<?php
// proyecto/src/MDW/BlogBundle/Controller/SecurityController.php
namespace cloud\siteBundle\Controller;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\Security\Core\SecurityContext;

class SecurityController extends Controller
{
    /**
     * Definimos las rutas para el login:
     * @Route("/login", name="login")
     * @Route("/login_check", name="login_check")
     */
    public function loginAction()
    {
        $request = $this->getRequest();
        $session = $request->getSession();
        // obtiene el error de inicio de sesión si lo hay
        if ($request->attributes->has(SecurityContext::AUTHENTICATION_ERROR)) {
            $error = $request->attributes->get(SecurityContext::AUTHENTICATION_ERROR);
        } else {
            $error = $session->get(SecurityContext::AUTHENTICATION_ERROR);
        }
        return $this->render('cloudBundle:security:login.html.twig', array(
            // el último nombre de usuario ingresado por el usuario
            'last_username' => $session->get(SecurityContext::LAST_USERNAME),
            'error'         => $error,
        ));
    }


    /**
     * @Route("/logout", name="logout")
     */
    public function logoutAction()
    {
        return $this->redirect($this->generateUrl('cloud_homepage'));
    }

    /**
     * @Route("/redirect", name="_redirect")
     */
    public function redirectAction()
    {
        if( true === $this->get('security.context')->isGranted('ROLE_SUPER_ADMIN')) 
            return $this->redirect($this->generateUrl('admincloud_home'));
        else
        if( true === $this->get('security.context')->isGranted('ROLE_ADMIN')) 
            return $this->redirect($this->generateUrl('ma'));
        else
        if( true === $this->get('security.context')->isGranted('ROLE_DOCENTE')) 
            return $this->redirect($this->generateUrl('admin'));
        else
        if( true === $this->get('security.context')->isGranted('ROLE_USER')) 
            return $this->redirect($this->generateUrl('admin'));
        
        return $this->redirect($this->generateUrl('login'));
    }
}
?>