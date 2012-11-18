<?php

namespace cloud\siteBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;


class CloudController extends Controller
{
	/**
     *
     * @Route("/admincloud/", name="admincloud_home")
     */
    public function indexAction()
    {
    	
    	$em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('cloudBundle:User')->findAll();

        return $this->render('cloudBundle:User:index.html.twig',array(
            'entities' => $entities,
        ));
    }

    /**
     * @Route("r/{id}", name="admincloud_show")
     */
    public function showAction($id)
    {
        return $this->redirect($this->generateUrl($id));
    }
}
