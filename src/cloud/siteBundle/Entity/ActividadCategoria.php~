<?php
namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="actividad_categoria")
 */
class ActividadCategoria
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
     * @ORM\OneToMany(targetEntity="ActividadTipo", mappedBy="categoria_id")
     */
    protected $categoria_id;
    


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
        $this->categoria_id = new \Doctrine\Common\Collections\ArrayCollection();
    }
    
    /**
     * Add categoria_id
     *
     * @param cloud\siteBundle\Entity\ActividadTipo $categoriaId
     * @return ActividadCategoria
     */
    public function addCategoriaId(\cloud\siteBundle\Entity\ActividadTipo $categoriaId)
    {
        $this->categoria_id[] = $categoriaId;
    
        return $this;
    }

    /**
     * Remove categoria_id
     *
     * @param cloud\siteBundle\Entity\ActividadTipo $categoriaId
     */
    public function removeCategoriaId(\cloud\siteBundle\Entity\ActividadTipo $categoriaId)
    {
        $this->categoria_id->removeElement($categoriaId);
    }

    /**
     * Get categoria_id
     *
     * @return Doctrine\Common\Collections\Collection 
     */
    public function getCategoriaId()
    {
        return $this->categoria_id;
    }
}