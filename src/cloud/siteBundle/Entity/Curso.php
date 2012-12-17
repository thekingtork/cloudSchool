<?php
namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="Curso")
 */
class Curso
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(name="nombre", type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $name;


    /**
     * @ORM\Column(name="cupo", type="integer")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $cupo;

    /**
     * @ORM\ManyToOne(targetEntity="Grado", inversedBy="id")
     * @ORM\JoinColumn(name="grado_id", referencedColumnName="id")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $grado_id;

    public function __toString() {
        return $this->getGradoId() ." - ". $this->getName();
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
     * Set name
     *
     * @param string $name
     * @return Curso
     */
    public function setName($name)
    {
        $this->name = $name;
    
        return $this;
    }

    /**
     * Get name
     *
     * @return string 
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set cupo
     *
     * @param integer $cupo
     * @return Curso
     */
    public function setCupo($cupo)
    {
        $this->cupo = $cupo;
    
        return $this;
    }

    /**
     * Get cupo
     *
     * @return integer 
     */
    public function getCupo()
    {
        return $this->cupo;
    }


    /**
     * Set grado_id
     *
     * @param cloud\siteBundle\Entity\Grado $gradoId
     * @return Curso
     */
    public function setGradoId(\cloud\siteBundle\Entity\Grado $gradoId = null)
    {
        $this->grado_id = $gradoId;
    
        return $this;
    }

    /**
     * Get grado_id
     *
     * @return cloud\siteBundle\Entity\Grado 
     */
    public function getGradoId()
    {
        return $this->grado_id;
    }
}