<?php
namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="municipio")
 */
class Municipio
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
     * @ORM\ManyToOne(targetEntity="Departamento", inversedBy="id")
     * @ORM\JoinColumn(name="departamento_id", referencedColumnName="id")
     */
    protected $departamento_id;


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
     * @return Municipio
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
     * Set departamento_id
     *
     * @param cloud\siteBundle\Entity\Departamento $departamentoId
     * @return Municipio
     */
    public function setDepartamentoId(\cloud\siteBundle\Entity\Departamento $departamentoId = null)
    {
        $this->departamento_id = $departamentoId;
    
        return $this;
    }

    /**
     * Get departamento_id
     *
     * @return cloud\siteBundle\Entity\Departamento 
     */
    public function getDepartamentoId()
    {
        return $this->departamento_id;
    }
}