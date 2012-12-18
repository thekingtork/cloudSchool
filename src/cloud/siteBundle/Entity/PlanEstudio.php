<?php

namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * cloud\siteBundle\Entity\PlanEstudio
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="cloud\siteBundle\Entity\PlanEstudioRepository")
 */
class PlanEstudio
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
     * @var string $periodo
     *
     * @ORM\ManyToOne(targetEntity="Cloud\siteBundle\Entity\Periodo")
     */
    private $periodo;

    /**
     * @var string $sede
     *
     * @ORM\ManyToOne(targetEntity="Cloud\siteBundle\Entity\Sede")
     */
    private $sede;
    
    /**
     * @var string $curso
     *
     * @ORM\ManyToOne(targetEntity="Cloud\siteBundle\Entity\Curso")
     */
    private $curso;

    /**
     * @var string $asignatura
     *
     * @ORM\ManyToOne(targetEntity="Cloud\siteBundle\Entity\Asignatura")
     */
    private $asignatura;
    
    /**
     * @var string $nactividades
     *
     * @ORM\Column(name="nactividades", type="integer")
     */
    private $nactividades;

    /**
     * @var string $principal
     *
     * @ORM\Column(name="principal", type="boolean")
     */
    private $principal;


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
     * Set sede
     *
     * @param string $sede
     * @return PlanEstudio
     */
    public function setSede($sede)
    {
        $this->sede = $sede;
    
        return $this;
    }

    /**
     * Get sede
     *
     * @return string 
     */
    public function getSede()
    {
        return $this->sede;
    }
    

    /**
     * Set nactividades
     *
     * @param integer $nactividades
     * @return PlanEstudio
     */
    public function setNactividades($nactividades)
    {
        $this->nactividades = $nactividades;
    
        return $this;
    }

    /**
     * Get nactividades
     *
     * @return integer 
     */
    public function getNactividades()
    {
        return $this->nactividades;
    }

    /**
     * Set asignatura
     *
     * @param Cloud\siteBundle\Entity\Asignatura $asignatura
     * @return PlanEstudio
     */
    public function setAsignatura(\Cloud\siteBundle\Entity\Asignatura $asignatura = null)
    {
        $this->asignatura = $asignatura;
    
        return $this;
    }

    /**
     * Get asignatura
     *
     * @return Cloud\siteBundle\Entity\Asignatura 
     */
    public function getAsignatura()
    {
        return $this->asignatura;
    }

    /**
     * Set curso
     *
     * @param Cloud\siteBundle\Entity\Curso $curso
     * @return PlanEstudio
     */
    public function setCurso(\Cloud\siteBundle\Entity\Curso $curso = null)
    {
        $this->curso = $curso;
    
        return $this;
    }

    /**
     * Get curso
     *
     * @return Cloud\siteBundle\Entity\Curso 
     */
    public function getCurso()
    {
        return $this->curso;
    }

    /**
     * Set periodo
     *
     * @param Cloud\siteBundle\Entity\Periodo $periodo
     * @return PlanEstudio
     */
    public function setPeriodo(\Cloud\siteBundle\Entity\Periodo $periodo = null)
    {
        $this->periodo = $periodo;
    
        return $this;
    }

    /**
     * Get periodo
     *
     * @return Cloud\siteBundle\Entity\Periodo 
     */
    public function getPeriodo()
    {
        return $this->periodo;
    }

    /**
     * Set principal
     *
     * @param boolean $principal
     * @return PlanEstudio
     */
    public function setPrincipal($principal)
    {
        $this->principal = $principal;
    
        return $this;
    }

    /**
     * Get principal
     *
     * @return boolean 
     */
    public function getPrincipal()
    {
        return $this->principal;
    }
}