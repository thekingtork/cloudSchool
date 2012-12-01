<?php

namespace cloud\siteBundle\Controller\Estudiante;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

/**
 * Periodo controller.
 *
 * @Route("/estudiante")
 */
class meController extends Controller
{

    /**
    *
    * @Route("/", name="me")
    */
    public function meAction(){
       
        return $this->render('cloudBundle:Estudiante:me.html.twig');
    }

}
