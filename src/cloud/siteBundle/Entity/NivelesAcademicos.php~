<?php
namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="nivelesacademicos")
 */
class NivelesAcademicos
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
     * @ORM\OneToMany(targetEntity="Grado", mappedBy="nivel_id")
     */
    protected $nivel_id;

    public function __toString() {
        return $this->getName();
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
     * @return Jornada
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
     * Constructor
     */
    public function __construct()
    {
        $this->nivel_id = new \Doctrine\Common\Collections\ArrayCollection();
    }
    
    /**
     * Add nivel_id
     *
     * @param cloud\siteBundle\Entity\Grado $nivelId
     * @return NivelesAcademicos
     */
    public function addNivelId(\cloud\siteBundle\Entity\Grado $nivelId)
    {
        $this->nivel_id[] = $nivelId;
    
        return $this;
    }

    /**
     * Remove nivel_id
     *
     * @param cloud\siteBundle\Entity\Grado $nivelId
     */
    public function removeNivelId(\cloud\siteBundle\Entity\Grado $nivelId)
    {
        $this->nivel_id->removeElement($nivelId);
    }

    /**
     * Get nivel_id
     *
     * @return Doctrine\Common\Collections\Collection 
     */
    public function getNivelId()
    {
        return $this->nivel_id;
    }
}