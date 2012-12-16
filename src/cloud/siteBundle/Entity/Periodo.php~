<?php
namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="periodo")
 */
class Periodo
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    

    /**
     * @ORM\Column(name="periodo_inicio", type="datetime")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     * @Assert\DateTime(message = "Campo de Fecha")
     */
    protected $periodo_inicio;


    /**
     * @ORM\Column(name="primer_periodo_final", type="datetime")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     * @Assert\DateTime(message = "Campo de Fecha")
     */
    protected $periodo_final;
    /**
     * @ORM\ManyToOne(targetEntity="EstadoPeriodo")
     * @ORM\JoinColumn(name="estado_id", referencedColumnName="id")
     * @Assert\NotNull(message = "Campo Obligatorio")
     */
    protected $estado_id;

     /**
     * @ORM\Column(name="porcentaje", type="float")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $porcentaje;

     /**
     * @ORM\Column(name="actividades_min", type="integer")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $actividades_min;

    /**
     * @ORM\Column(name="actividades_max", type="integer")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $actividades_max;

     /**
     * @ORM\ManyToOne(targetEntity="Anio", inversedBy="id")
     * @ORM\JoinColumn(name="anio_id", referencedColumnName="id")
     * @Assert\NotNull(message = "Campo Obligatorio")
     */
    protected $anio_id;

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
     * Set periodo_inicio
     *
     * @param \DateTime $periodoInicio
     * @return Periodo
     */
    public function setPeriodoInicio($periodoInicio)
    {
        $this->periodo_inicio = $periodoInicio;
    
        return $this;
    }

    /**
     * Get periodo_inicio
     *
     * @return \DateTime 
     */
    public function getPeriodoInicio()
    {
        return $this->periodo_inicio;
    }

    /**
     * Set periodo_final
     *
     * @param \DateTime $periodoFinal
     * @return Periodo
     */
    public function setPeriodoFinal($periodoFinal)
    {
        $this->periodo_final = $periodoFinal;
    
        return $this;
    }

    /**
     * Get periodo_final
     *
     * @return \DateTime 
     */
    public function getPeriodoFinal()
    {
        return $this->periodo_final;
    }


    /**
     * Set porcentaje
     *
     * @param float $porcentaje
     * @return Periodo
     */
    public function setPorcentaje($porcentaje)
    {
        $this->porcentaje = $porcentaje;
    
        return $this;
    }

    /**
     * Get porcentaje
     *
     * @return float 
     */
    public function getPorcentaje()
    {
        return $this->porcentaje;
    }

    /**
     * Set actividades_min
     *
     * @param integer $actividadesMin
     * @return Periodo
     */
    public function setActividadesMin($actividadesMin)
    {
        $this->actividades_min = $actividadesMin;
    
        return $this;
    }

    /**
     * Get actividades_min
     *
     * @return integer 
     */
    public function getActividadesMin()
    {
        return $this->actividades_min;
    }

    /**
     * Set actividades_max
     *
     * @param integer $actividadesMax
     * @return Periodo
     */
    public function setActividadesMax($actividadesMax)
    {
        $this->actividades_max = $actividadesMax;
    
        return $this;
    }

    /**
     * Get actividades_max
     *
     * @return integer 
     */
    public function getActividadesMax()
    {
        return $this->actividades_max;
    }

    /**
     * Set anio_id
     *
     * @param cloud\siteBundle\Entity\Anio $anioId
     * @return Periodo
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
     * Set estado_id
     *
     * @param cloud\siteBundle\Entity\EstadoPeriodo $estadoId
     * @return Periodo
     */
    public function setEstadoId(\cloud\siteBundle\Entity\EstadoPeriodo $estadoId = null)
    {
        $this->estado_id = $estadoId;
    
        return $this;
    }

    /**
     * Get estado_id
     *
     * @return cloud\siteBundle\Entity\EstadoPeriodo 
     */
    public function getEstadoId()
    {
        return $this->estado_id;
    }
}