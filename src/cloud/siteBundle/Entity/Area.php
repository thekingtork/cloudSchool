<?php
namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="area")
 */
class Area
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
     * 
     */
    protected $name;

    /**
     * @ORM\OneToMany(targetEntity="Asignatura", mappedBy="area_id")
     */
    protected $area_id;
    


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
        $this->area_id = new \Doctrine\Common\Collections\ArrayCollection();
    }
    
    /**
     * Add area_id
     *
     * @param cloud\siteBundle\Entity\Asignatura $areaId
     * @return Area
     */
    public function addAreaId(\cloud\siteBundle\Entity\Asignatura $areaId)
    {
        $this->area_id[] = $areaId;
    
        return $this;
    }

    /**
     * Remove area_id
     *
     * @param cloud\siteBundle\Entity\Asignatura $areaId
     */
    public function removeAreaId(\cloud\siteBundle\Entity\Asignatura $areaId)
    {
        $this->area_id->removeElement($areaId);
    }

    /**
     * Get area_id
     *
     * @return Doctrine\Common\Collections\Collection 
     */
    public function getAreaId()
    {
        return $this->area_id;
    }
}