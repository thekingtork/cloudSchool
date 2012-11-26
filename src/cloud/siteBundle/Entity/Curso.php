<?php
namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="Curso")
 */
class Curso
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
     * @ORM\Column(name="cupo", type="integer")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $cupo;


    /**
     * @ORM\ManyToOne(targetEntity="Jornada", inversedBy="id")
     * @ORM\JoinColumn(name="jornada_id", referencedColumnName="id")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $jornada_id;

     /**
     * @ORM\ManyToOne(targetEntity="Sede", inversedBy="id")
     * @ORM\JoinColumn(name="sede_id", referencedColumnName="id")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $sede_id;

    /**
     * @ORM\ManyToOne(targetEntity="NivelesAcademicos", inversedBy="id")
     * @ORM\JoinColumn(name="nivel_id", referencedColumnName="id")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $nivel_id;

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
     * Set cupo
     *
     * @param integer $cupo
     * @return Curso
     */
    public function setCupo($cupo)
    {
        $this->cupo = $cupo;
    
        return $this;
    }

    /**
     * Get cupo
     *
     * @return integer 
     */
    public function getCupo()
    {
        return $this->cupo;
    }

    /**
     * Set jornada_id
     *
     * @param cloud\siteBundle\Entity\Jornada $jornadaId
     * @return Curso
     */
    public function setJornadaId(\cloud\siteBundle\Entity\Jornada $jornadaId = null)
    {
        $this->jornada_id = $jornadaId;
    
        return $this;
    }

    /**
     * Get jornada_id
     *
     * @return cloud\siteBundle\Entity\Jornada 
     */
    public function getJornadaId()
    {
        return $this->jornada_id;
    }

    /**
     * Set sede_id
     *
     * @param cloud\siteBundle\Entity\Sede $sedeId
     * @return Curso
     */
    public function setSedeId(\cloud\siteBundle\Entity\Sede $sedeId = null)
    {
        $this->sede_id = $sedeId;
    
        return $this;
    }

    /**
     * Get sede_id
     *
     * @return cloud\siteBundle\Entity\Sede 
     */
    public function getSedeId()
    {
        return $this->sede_id;
    }

    /**
     * Set nivel_id
     *
     * @param cloud\siteBundle\Entity\NivelesAcademicos $nivelId
     * @return Curso
     */
    public function setNivelId(\cloud\siteBundle\Entity\NivelesAcademicos $nivelId = null)
    {
        $this->nivel_id = $nivelId;
    
        return $this;
    }

    /**
     * Get nivel_id
     *
     * @return cloud\siteBundle\Entity\NivelesAcademicos 
     */
    public function getNivelId()
    {
        return $this->nivel_id;
    }
}