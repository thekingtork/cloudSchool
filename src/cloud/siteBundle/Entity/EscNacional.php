<?php

namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * cloud\siteBundle\Entity\EscNacional
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class EscNacional
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
     * @var string $valoracion
     *
     * @ORM\Column(name="valoracion", type="string", length=255)
     */
    private $valoracion;
    
    public function __toString() {
        return $this->getValoracion();
    }

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
     * Set valoracion
     *
     * @param string $valoracion
     * @return EscNacional
     */
    public function setValoracion($valoracion)
    {
        $this->valoracion = $valoracion;
    
        return $this;
    }

    /**
     * Get valoracion
     *
     * @return string 
     */
    public function getValoracion()
    {
        return $this->valoracion;
    }
}