<?php
namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="institucion")
 */
class Institucion
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
     * @ORM\Column(name="direccion", type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $direccion;

    /**
     * @ORM\Column(name="ciudad", type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $ciudad;

     /**
     * @ORM\Column(name="telefono", type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $telefono;

     /**
     * @ORM\Column(name="fax", type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $fax;
    
    /**
     * @ORM\Column(name="nit", type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $nit;

    /**
     * @ORM\Column(name="dane", type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $dane;

    /**
     * @ORM\Column(name="men", type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $men;

     /**
     * @ORM\Column(name="rector", type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $rector;
    
     /**
     * @ORM\Column(name="secretario", type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $secretario;

     /**
     * @ORM\Column(name="email", type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
     * @Assert\Email(message = "Correo incorrecto")
     */
    protected $email;

     /**
     * @ORM\Column(name="distribucion_usuario", type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $distribucion_usuario;

     /**
     * @ORM\Column(name="modelo_pedagogico", type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $modelo_pedagogico;

    /**
     * @ORM\Column(name="url_imagen", type="string", length=255)
     */
    protected $url_imagen;

    /**
     * @ORM\OneToMany(targetEntity="Sede", mappedBy="institucion")
     */
    protected $sede_id;
   

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
     * @return Institucion
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
     * Set direccion
     *
     * @param string $direccion
     * @return Institucion
     */
    public function setDireccion($direccion)
    {
        $this->direccion = $direccion;
    
        return $this;
    }

    /**
     * Get direccion
     *
     * @return string 
     */
    public function getDireccion()
    {
        return $this->direccion;
    }


    /**
     * Set telefono
     *
     * @param string $telefono
     * @return Institucion
     */
    public function setTelefono($telefono)
    {
        $this->telefono = $telefono;
    
        return $this;
    }

    /**
     * Get telefono
     *
     * @return string 
     */
    public function getTelefono()
    {
        return $this->telefono;
    }

    /**
     * Set fax
     *
     * @param string $fax
     * @return Institucion
     */
    public function setFax($fax)
    {
        $this->fax = $fax;
    
        return $this;
    }

    /**
     * Get fax
     *
     * @return string 
     */
    public function getFax()
    {
        return $this->fax;
    }

    /**
     * Set nit
     *
     * @param string $nit
     * @return Institucion
     */
    public function setNit($nit)
    {
        $this->nit = $nit;
    
        return $this;
    }

    /**
     * Get nit
     *
     * @return string 
     */
    public function getNit()
    {
        return $this->nit;
    }

    /**
     * Set dane
     *
     * @param string $dane
     * @return Institucion
     */
    public function setDane($dane)
    {
        $this->dane = $dane;
    
        return $this;
    }

    /**
     * Get dane
     *
     * @return string 
     */
    public function getDane()
    {
        return $this->dane;
    }

    /**
     * Set men
     *
     * @param string $men
     * @return Institucion
     */
    public function setMen($men)
    {
        $this->men = $men;
    
        return $this;
    }

    /**
     * Get men
     *
     * @return string 
     */
    public function getMen()
    {
        return $this->men;
    }

    /**
     * Set rector
     *
     * @param string $rector
     * @return Institucion
     */
    public function setRector($rector)
    {
        $this->rector = $rector;
    
        return $this;
    }

    /**
     * Get rector
     *
     * @return string 
     */
    public function getRector()
    {
        return $this->rector;
    }

    /**
     * Set secretario
     *
     * @param string $secretario
     * @return Institucion
     */
    public function setSecretario($secretario)
    {
        $this->secretario = $secretario;
    
        return $this;
    }

    /**
     * Get secretario
     *
     * @return string 
     */
    public function getSecretario()
    {
        return $this->secretario;
    }

    /**
     * Set email
     *
     * @param string $email
     * @return Institucion
     */
    public function setEmail($email)
    {
        $this->email = $email;
    
        return $this;
    }

    /**
     * Get email
     *
     * @return string 
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set distribucion_usuario
     *
     * @param string $distribucionUsuario
     * @return Institucion
     */
    public function setDistribucionUsuario($distribucionUsuario)
    {
        $this->distribucion_usuario = $distribucionUsuario;
    
        return $this;
    }

    /**
     * Get distribucion_usuario
     *
     * @return string 
     */
    public function getDistribucionUsuario()
    {
        return $this->distribucion_usuario;
    }

    /**
     * Set modelo_pedagogico
     *
     * @param string $modeloPedagogico
     * @return Institucion
     */
    public function setModeloPedagogico($modeloPedagogico)
    {
        $this->modelo_pedagogico = $modeloPedagogico;
    
        return $this;
    }

    /**
     * Get modelo_pedagogico
     *
     * @return string 
     */
    public function getModeloPedagogico()
    {
        return $this->modelo_pedagogico;
    }

    /**
     * Set url_imagen
     *
     * @param string $urlImagen
     * @return Institucion
     */
    public function setUrlImagen($urlImagen)
    {
        $this->url_imagen = $urlImagen;
    
        return $this;
    }

    /**
     * Get url_imagen
     *
     * @return string 
     */
    public function getUrlImagen()
    {
        return $this->url_imagen;
    }

    /**
     * Set ciudad
     *
     * @param string $ciudad
     * @return Institucion
     */
    public function setCiudad($ciudad)
    {
        $this->ciudad = $ciudad;
    
        return $this;
    }

    /**
     * Get ciudad
     *
     * @return string 
     */
    public function getCiudad()
    {
        return $this->ciudad;
    }
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->sede_id = new \Doctrine\Common\Collections\ArrayCollection();
    }
    

    /**
     * Add sede_id
     *
     * @param cloud\siteBundle\Entity\Sede $sedeId
     * @return Institucion
     */
    public function addSedeId(\cloud\siteBundle\Entity\Sede $sedeId)
    {
        $this->sede_id[] = $sedeId;
    
        return $this;
    }

    /**
     * Remove sede_id
     *
     * @param cloud\siteBundle\Entity\Sede $sedeId
     */
    public function removeSedeId(\cloud\siteBundle\Entity\Sede $sedeId)
    {
        $this->sede_id->removeElement($sedeId);
    }

    /**
     * Get sede_id
     *
     * @return Doctrine\Common\Collections\Collection 
     */
    public function getSedeId()
    {
        return $this->sede_id;
    }
}