<?php
namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="anio")
 */
class Anio
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
     * @ORM\Column(name="date_create", type="datetime")
     */
    protected $date_create;

     /**
     * @ORM\Column(name="active", type="boolean", nullable=false) 
     */
    protected $active;

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
     * Set date_create
     *
     * @param \DateTime $dateCreate
     * @return Anio
     */
    public function setDateCreate($dateCreate)
    {
        $this->date_create = $dateCreate;
    
        return $this;
    }

    /**
     * Get date_create
     *
     * @return \DateTime 
     */
    public function getDateCreate()
    {
        return $this->date_create;
    }

    /**
     * Set active
     *
     * @param boolean $active
     * @return Anio
     */
    public function setActive($active)
    {
        $this->active = $active;
    
        return $this;
    }

    /**
     * Get active
     *
     * @return boolean 
     */
    public function getActive()
    {
        return $this->active;
    }
}