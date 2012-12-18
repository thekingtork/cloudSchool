<?php
namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="actividad_tipo")
 */
class ActividadTipo
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
     * @ORM\ManyToOne(targetEntity="ActividadCategoria", inversedBy="id")
     * @ORM\JoinColumn(name="categoria_id", referencedColumnName="id")
     * @Assert\NotBlank(message = "Categoria Obligatorio")
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
     * Set categoria_id
     *
     * @param cloud\siteBundle\Entity\ActividadCategoria $categoriaId
     * @return ActividadTipo
     */
    public function setCategoriaId(\cloud\siteBundle\Entity\ActividadCategoria $categoriaId = null)
    {
        $this->categoria_id = $categoriaId;
    
        return $this;
    }

    /**
     * Get categoria_id
     *
     * @return cloud\siteBundle\Entity\ActividadCategoria 
     */
    public function getCategoriaId()
    {
        return $this->categoria_id;
    }
}