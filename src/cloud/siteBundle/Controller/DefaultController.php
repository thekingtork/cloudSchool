<?php

namespace cloud\siteBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class DefaultController extends Controller
{
	/**
     *
     * @Route("/", name="_home")
     */
    public function indexAction()
    {
    	 return $this->redirect($this->generateUrl('_redirect'));
    }
}
