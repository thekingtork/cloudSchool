<?php

namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * cloud\siteBundle\Entity\EscCualitativa
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class EscCualitativa
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
     * @Assert\NotBlank(message = "Campo Obligatorio")
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
     * @return EscCualitativa
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