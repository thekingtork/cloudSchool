<?php

namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * cloud\siteBundle\Entity\ModeloCarnet
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class ModeloCarnet
{
    /**
     * @var integer $id
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string $modelo
     *
     * @ORM\Column(name="modelo", type="string", length=50)
     */
    private $modelo;


    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set modelo
     *
     * @param string $modelo
     * @return ModeloCarnet
     */
    public function setModelo($modelo)
    {
        $this->modelo = $modelo;
    
        return $this;
    }

    /**
     * Get modelo
     *
     * @return string 
     */
    public function getModelo()
    {
        return $this->modelo;
    }
}
