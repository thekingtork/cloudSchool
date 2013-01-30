<?php

namespace cloud\siteBundle\Controller\MA4;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

/**
 * Periodo controller.
 *
 * @Route("admin/academica")
 */
class MA4Controller extends Controller{

     /**
     * 
     * @Route("/", name="ma4")
     */
    public function ma4Action()
    {
        return $this->render('cloudBundle:Admin:MA4/ma4.html.twig',array());
    }

    
    
    
}
