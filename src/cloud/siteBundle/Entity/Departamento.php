<?php
namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="departamento")
 */
class Departamento
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(name="nombre", type="string", length=255)
     */
    protected $name;
     /**
     * @ORM\OneToMany(targetEntity="Municipio", mappedBy="id")
     */
    protected $municipio_id;
    
    public function __toString() {
        return $this->getName();
    }
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->municipio_id = new \Doctrine\Common\Collections\ArrayCollection();
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
     * @return Departamento
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
     * Add municipio_id
     *
     * @param cloud\siteBundle\Entity\Municipio $municipioId
     * @return Departamento
     */
    public function addMunicipioId(\cloud\siteBundle\Entity\Municipio $municipioId)
    {
        $this->municipio_id[] = $municipioId;
    
        return $this;
    }

    /**
     * Remove municipio_id
     *
     * @param cloud\siteBundle\Entity\Municipio $municipioId
     */
    public function removeMunicipioId(\cloud\siteBundle\Entity\Municipio $municipioId)
    {
        $this->municipio_id->removeElement($municipioId);
    }

    /**
     * Get municipio_id
     *
     * @return Doctrine\Common\Collections\Collection 
     */
    public function getMunicipioId()
    {
        return $this->municipio_id;
    }
}