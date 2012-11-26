<?php
namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="inscripcion")
 */
class Inscripcion
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\OneToOne(targetEntity="Anio")
     * @ORM\JoinColumn(name="anio_id", referencedColumnName="id")
     */
    protected $anio_id;

    /**
     * @ORM\Column(name="inscripcion_inicio", type="datetime")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     * @Assert\DateTime(message = "Campo de fecha")
     */
    protected $inscripcion_inicio;


    /**
     * @ORM\Column(name="primer_periodo_final", type="datetime")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     * @Assert\DateTime(message = "Campo de fecha")
     */
    protected $inscripcion_final;
    
     /**
     * @ORM\Column(name="active", type="boolean", nullable=false)
     * @Assert\NotNull(message = "Campo de fecha") 
     */
    protected $active;

    public function __construct()
    {
        $this->anio_id = new \Doctrine\Common\Collections\ArrayCollection();
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
     * Set inscripcion_inicio
     *
     * @param \DateTime $inscripcionInicio
     * @return Inscripcion
     */
    public function setInscripcionInicio($inscripcionInicio)
    {
        $this->inscripcion_inicio = $inscripcionInicio;
    
        return $this;
    }

    /**
     * Get inscripcion_inicio
     *
     * @return \DateTime 
     */
    public function getInscripcionInicio()
    {
        return $this->inscripcion_inicio;
    }

    /**
     * Set inscripcion_final
     *
     * @param \DateTime $inscripcionFinal
     * @return Inscripcion
     */
    public function setInscripcionFinal($inscripcionFinal)
    {
        $this->inscripcion_final = $inscripcionFinal;
    
        return $this;
    }

    /**
     * Get inscripcion_final
     *
     * @return \DateTime 
     */
    public function getInscripcionFinal()
    {
        return $this->inscripcion_final;
    }

    /**
     * Set anio_id
     *
     * @param cloud\siteBundle\Entity\Anio $anioId
     * @return Inscripcion
     */
    public function setAnioId(\cloud\siteBundle\Entity\Anio $anioId = null)
    {
        $this->anio_id = $anioId;
    
        return $this;
    }

    /**
     * Get anio_id
     *
     * @return cloud\siteBundle\Entity\Anio 
     */
    public function getAnioId()
    {
        return $this->anio_id;
    }

    /**
     * Set active
     *
     * @param boolean $active
     * @return Inscripcion
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