<?php
namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="actividad")
 */
class Actividad
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\ManyToOne(targetEntity="PlanEstudio", inversedBy="id")
     * @ORM\JoinColumn(name="plan_id", referencedColumnName="id")
     */
    protected $plan_id;

    /**
     * @ORM\Column(name="nombre", type="string", length=255)
     * @Assert\NotBlank(message = "Nombre  Obligatorio")
     */
    protected $name;

    /**
     * @ORM\Column(name="porcentaje", type="string", length=255)
     * @Assert\NotBlank(message = "Porcentaje Obligatorio")
     */
    protected $Porcentaje;

    /**
     * @ORM\Column(name="publicar", type="string", length=255)
     */
    protected $publicar;

    /**
     * @ORM\Column(name="categoria", type="string", length=255)
     * @Assert\NotBlank(message = "Categoria Obligatorio")
     */
    protected $categoria;

    /**
     * @ORM\Column(name="tipo", type="string", length=255)
     * @Assert\NotBlank(message = "tipo Obligatorio")
     */
    protected $tipo;

    
     /**
     * @ORM\Column(name="date_inicio", type="datetime")
     * @Assert\NotBlank(message = "Fecha de inicio Obligatorio")
     * @Assert\DateTime(message = "Campo de Fecha")
     */
    protected $date_inicio;

     /**
     * @ORM\Column(name="date_final", type="datetime")
     * @Assert\NotBlank(message = "Fecha de final Obligatorio")
     * @Assert\DateTime(message = "Campo de Fecha")
     */
    protected $date_final;

    /**
     * @ORM\Column(name="descripcion", type="text")
     * @Assert\NotBlank(message = "descripcion Obligatorio")
     */
    protected $descripcion;

    /**
     * @ORM\Column(name="logro_competencia", type="text")
     * @Assert\NotBlank(message = "Logro o Compentencia Obligatorio")
     */
    protected $logro_competencia;

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
     * @return Actividad
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
     * Set Porcentaje
     *
     * @param string $porcentaje
     * @return Actividad
     */
    public function setPorcentaje($porcentaje)
    {
        $this->Porcentaje = $porcentaje;
    
        return $this;
    }

    /**
     * Get Porcentaje
     *
     * @return string 
     */
    public function getPorcentaje()
    {
        return $this->Porcentaje;
    }

    /**
     * Set publicar
     *
     * @param string $publicar
     * @return Actividad
     */
    public function setPublicar($publicar)
    {
        $this->publicar = $publicar;
    
        return $this;
    }

    /**
     * Get publicar
     *
     * @return string 
     */
    public function getPublicar()
    {
        return $this->publicar;
    }

    /**
     * Set categoria
     *
     * @param string $categoria
     * @return Actividad
     */
    public function setCategoria($categoria)
    {
        $this->categoria = $categoria;
    
        return $this;
    }

    /**
     * Get categoria
     *
     * @return string 
     */
    public function getCategoria()
    {
        return $this->categoria;
    }

    /**
     * Set tipo
     *
     * @param string $tipo
     * @return Actividad
     */
    public function setTipo($tipo)
    {
        $this->tipo = $tipo;
    
        return $this;
    }

    /**
     * Get tipo
     *
     * @return string 
     */
    public function getTipo()
    {
        return $this->tipo;
    }

    /**
     * Set date_inicio
     *
     * @param \DateTime $dateInicio
     * @return Actividad
     */
    public function setDateInicio($dateInicio)
    {
        $this->date_inicio = $dateInicio;
    
        return $this;
    }

    /**
     * Get date_inicio
     *
     * @return \DateTime 
     */
    public function getDateInicio()
    {
        return $this->date_inicio;
    }

    /**
     * Set date_final
     *
     * @param \DateTime $dateFinal
     * @return Actividad
     */
    public function setDateFinal($dateFinal)
    {
        $this->date_final = $dateFinal;
    
        return $this;
    }

    /**
     * Get date_final
     *
     * @return \DateTime 
     */
    public function getDateFinal()
    {
        return $this->date_final;
    }

    /**
     * Set descripcion
     *
     * @param string $descripcion
     * @return Actividad
     */
    public function setDescripcion($descripcion)
    {
        $this->descripcion = $descripcion;
    
        return $this;
    }

    /**
     * Get descripcion
     *
     * @return string 
     */
    public function getDescripcion()
    {
        return $this->descripcion;
    }

    /**
     * Set logro_competencia
     *
     * @param string $logroCompetencia
     * @return Actividad
     */
    public function setLogroCompetencia($logroCompetencia)
    {
        $this->logro_competencia = $logroCompetencia;
    
        return $this;
    }

    /**
     * Get logro_competencia
     *
     * @return string 
     */
    public function getLogroCompetencia()
    {
        return $this->logro_competencia;
    }

    /**
     * Set plan_id
     *
     * @param cloud\siteBundle\Entity\PlanEstudio $planId
     * @return Actividad
     */
    public function setPlanId(\cloud\siteBundle\Entity\PlanEstudio $planId = null)
    {
        $this->plan_id = $planId;
    
        return $this;
    }

    /**
     * Get plan_id
     *
     * @return cloud\siteBundle\Entity\PlanEstudio 
     */
    public function getPlanId()
    {
        return $this->plan_id;
    }
}