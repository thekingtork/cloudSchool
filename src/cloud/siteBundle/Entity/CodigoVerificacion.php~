<?php
namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="codigo_verificacion")
 */
class CodigoVerificacion
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(name="codigo", type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $codigo;

    /**
     * @ORM\ManyToOne(targetEntity="User", inversedBy="id")
     * @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $user_id;

    /**
     * @ORM\ManyToOne(targetEntity="ModuloCodigo", inversedBy="id")
     * @ORM\JoinColumn(name="modulo_id", referencedColumnName="id")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $modulo_id;
    
     /**
     * @ORM\Column(name="date_create", type="datetime")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     * @Assert\DateTime(message = "Campo de Fecha")
     */
    protected $date_create;

     /**
     * @ORM\Column(name="expire", type="boolean")
     * @Assert\NotNull(message = "Campo Obligatorio")
     */
    protected $expire;

    public function __toString() {
        return $this->getCodigo();
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
     * Set codigo
     *
     * @param string $codigo
     * @return CodigoVerificacion
     */
    public function setCodigo($codigo)
    {
        $this->codigo = $codigo;
    
        return $this;
    }

    /**
     * Get codigo
     *
     * @return string 
     */
    public function getCodigo()
    {
        return $this->codigo;
    }

    /**
     * Set date_create
     *
     * @param \DateTime $dateCreate
     * @return CodigoVerificacion
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
     * Set user_id
     *
     * @param cloud\siteBundle\Entity\User $userId
     * @return CodigoVerificacion
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
     * Set modulo_id
     *
     * @param cloud\siteBundle\Entity\ModuloCodigo $moduloId
     * @return CodigoVerificacion
     */
    public function setModuloId(\cloud\siteBundle\Entity\ModuloCodigo $moduloId = null)
    {
        $this->modulo_id = $moduloId;
    
        return $this;
    }

    /**
     * Get modulo_id
     *
     * @return cloud\siteBundle\Entity\ModuloCodigo 
     */
    public function getModuloId()
    {
        return $this->modulo_id;
    }

    /**
     * Set expire
     *
     * @param boolean $expire
     * @return CodigoVerificacion
     */
    public function setExpire($expire)
    {
        $this->expire = $expire;
    
        return $this;
    }

    /**
     * Get expire
     *
     * @return boolean 
     */
    public function getExpire()
    {
        return $this->expire;
    }
}