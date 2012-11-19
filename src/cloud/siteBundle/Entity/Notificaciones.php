<?php
namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="notificaciones")
 */
class Notificaciones
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(name="asunto", type="string", length=255)
     */
    protected $asunto;

    /**
     * @ORM\Column(name="mensaje", type="text")
     */
    protected $mensaje;

    /**
     * @ORM\ManyToOne(targetEntity="User", inversedBy="id")
     * @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     */
    protected $user_id;

    /**
     * @ORM\ManyToOne(targetEntity="Curso", inversedBy="id")
     * @ORM\JoinColumn(name="curso_id", referencedColumnName="id")
     */
    protected $curso_id;

    /**
     * @ORM\ManyToOne(targetEntity="TipoNotificacion", inversedBy="id")
     * @ORM\JoinColumn(name="tipo_id", referencedColumnName="id")
     */
    protected $tipo_id;

    /**
     * @ORM\ManyToOne(targetEntity="EstadoNotificacion", inversedBy="id")
     * @ORM\JoinColumn(name="estado_id", referencedColumnName="id")
     */
    protected $estado_id;
    
     /**
     * @ORM\Column(name="date_create", type="datetime")
     */
    protected $date_create;

    public function __toString() {
        return $this->getAsunto();
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
     * Set asunto
     *
     * @param string $asunto
     * @return Notificaciones
     */
    public function setAsunto($asunto)
    {
        $this->asunto = $asunto;
    
        return $this;
    }

    /**
     * Get asunto
     *
     * @return string 
     */
    public function getAsunto()
    {
        return $this->asunto;
    }

    /**
     * Set mensaje
     *
     * @param string $mensaje
     * @return Notificaciones
     */
    public function setMensaje($mensaje)
    {
        $this->mensaje = $mensaje;
    
        return $this;
    }

    /**
     * Get mensaje
     *
     * @return string 
     */
    public function getMensaje()
    {
        return $this->mensaje;
    }

    

    


    /**
     * Set user_id
     *
     * @param cloud\siteBundle\Entity\User $userId
     * @return Notificaciones
     */
    public function setUserId(\cloud\siteBundle\Entity\User $userId = null)
    {
        $this->user_id = $userId;
    
        return $this;
    }

    /**
     * Get user_id
     *
     * @return cloud\siteBundle\Entity\User 
     */
    public function getUserId()
    {
        return $this->user_id;
    }

    /**
     * Set curso_id
     *
     * @param cloud\siteBundle\Entity\Curso $cursoId
     * @return Notificaciones
     */
    public function setCursoId(\cloud\siteBundle\Entity\Curso $cursoId = null)
    {
        $this->curso_id = $cursoId;
    
        return $this;
    }

    /**
     * Get curso_id
     *
     * @return cloud\siteBundle\Entity\Curso 
     */
    public function getCursoId()
    {
        return $this->curso_id;
    }

    /**
     * Set tipo_id
     *
     * @param cloud\siteBundle\Entity\TipoNotificacion $tipoId
     * @return Notificaciones
     */
    public function setTipoId(\cloud\siteBundle\Entity\TipoNotificacion $tipoId = null)
    {
        $this->tipo_id = $tipoId;
    
        return $this;
    }

    /**
     * Get tipo_id
     *
     * @return cloud\siteBundle\Entity\TipoNotificacion 
     */
    public function getTipoId()
    {
        return $this->tipo_id;
    }

    /**
     * Set estado_id
     *
     * @param cloud\siteBundle\Entity\EstadoNotificacion $estadoId
     * @return Notificaciones
     */
    public function setEstadoId(\cloud\siteBundle\Entity\EstadoNotificacion $estadoId = null)
    {
        $this->estado_id = $estadoId;
    
        return $this;
    }

    /**
     * Get estado_id
     *
     * @return cloud\siteBundle\Entity\EstadoNotificacion 
     */
    public function getEstadoId()
    {
        return $this->estado_id;
    }
}