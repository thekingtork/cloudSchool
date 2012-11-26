<?php

namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * cloud\siteBundle\Entity\AjustesEvaluacion
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class AjustesEvaluacion
{
    /**
     * @var integer $id
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string $modelo_evaluacion
     *
     * @ORM\Column(name="modelo_evaluacion", type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    private $modelo_evaluacion;

    /**
     *
     * @ORM\Column(name="escala",type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    private $escala;

    /**
     * @var boolean $acumula
     *
     * @ORM\Column(name="acumula", type="boolean")
     * @Assert\NotNull(message = "Campo Obligatorio")
     */
    private $acumula;

    public function __toString() {
        return (string) $this->getId();
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
     * Set modelo_evaluacion
     *
     * @param string $modeloEvaluacion
     * @return AjustesEvaluacion
     */
    public function setModeloEvaluacion($modeloEvaluacion)
    {
        $this->modelo_evaluacion = $modeloEvaluacion;
    
        return $this;
    }

    /**
     * Get modelo_evaluacion
     *
     * @return string 
     */
    public function getModeloEvaluacion()
    {
        return $this->modelo_evaluacion;
    }

    /**
     * Set acumula
     *
     * @param boolean $acumula
     * @return AjustesEvaluacion
     */
    public function setAcumula($acumula)
    {
        $this->acumula = $acumula;
    
        return $this;
    }

    /**
     * Get acumula
     *
     * @return boolean 
     */
    public function getAcumula()
    {
        return $this->acumula;
    }

    /**
     * Set escala
     *
     * @param string $escala
     * @return AjustesEvaluacion
     */
    public function setEscala($escala)
    {
        $this->escala = $escala;
    
        return $this;
    }

    /**
     * Get escala
     *
     * @return string 
     */
    public function getEscala()
    {
        return $this->escala;
    }
}