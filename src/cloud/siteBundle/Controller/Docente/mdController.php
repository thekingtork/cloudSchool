<?php

namespace cloud\siteBundle\Controller\Docente;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

/**
 * Periodo controller.
 *
 * @Route("/docente")
 */
class mdController extends Controller
{

    /**
    *
    * @Route("/", name="md")
    */
    public function mdAction(){
       
        return $this->render('cloudBundle:Docente:md.html.twig');
    }

}
