<?php
namespace cloud\siteBundle\Entity;

use Symfony\Component\Security\Core\User\UserInterface;
use Doctrine\ORM\Mapping as ORM;
/**
  * @ORM\Entity
  * @ORM\Table(name="user")
  */
class User implements UserInterface
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
    * @ORM\Column(type="string", length=255, unique=true)
    */
    protected $username;

    /**
     * @ORM\Column(name="password", type="string", length=255)
     */
    protected $password;

    /**
     * @ORM\Column(name="salt", type="string", length=255)
     */
    protected $salt;


    /**
     * se utilizó user_roles para no hacer conflicto al aplicar ->toArray en getRoles()
     * @ORM\ManyToMany(targetEntity="Role")
     * @ORM\JoinTable(name="user_role",
     *     joinColumns={@ORM\JoinColumn(name="user_id", referencedColumnName="id")},
     *     inverseJoinColumns={@ORM\JoinColumn(name="role_id", referencedColumnName="id")}
     * )
     */
    protected $user_roles;

     /**
     * @ORM\Column(name="nombre", type="string", length=255)
     */
    protected $nombre;

    /**
     * @ORM\Column(name="apellido", type="string", length=255)
     */
    protected $apellido;

    /**
     * @ORM\Column(name="apellido_materno", type="string", length=255)
     */
    protected $apellido_materno;

    /**
     * @ORM\Column(name="fecha_nacimiento", type="datetime")
     */
    protected $fecha_nacimiento;

    /**
     * @ORM\ManyToOne(targetEntity="Municipio", inversedBy="id")
     * @ORM\JoinColumn(name="municipio_id", referencedColumnName="id")
     */
    protected $municipio_id;

    /**
     * @ORM\Column(name="direccion", type="string", length=255)
     */
    protected $direccion;

    /**
     * @ORM\Column(name="lugar_nacimiento", type="string", length=255)
     */
    protected $lugar_nacimiento;

    /**
     * @ORM\ManyToOne(targetEntity="TipoDocumento")
     * @ORM\JoinColumn(name="tipodocumento_id", referencedColumnName="id")
     */
    private $tipodocumento_id;

    /**
     * @ORM\Column(name="nmr_documento", type="string", length=255)
     */
    protected $nmr_documento;

    /**
     * @ORM\Column(name="sexo", type="string", length=255)
     */
    protected $sexo;

     /**
     * @ORM\Column(name="email", type="string", length=255)
     */
    protected $email;

   

     /**
     * @ORM\Column(name="avatar_url", type="string", length=255)
     */
    protected $avatar_url;

    /**
     * @ORM\ManyToOne(targetEntity="Institucion")
     * @ORM\JoinColumn(name="institucion_id", referencedColumnName="id")
     */
    protected $institucion_id;
   
   public function __toString() {
        return $this->getApellido() . " " . $this->getNombre();
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     * @return Perfil
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;
    
        return $this;
    }

    /**
     * Get nombre
     *
     * @return string 
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Set apellido
     *
     * @param string $apellido
     * @return Perfil
     */
    public function setApellido($apellido)
    {
        $this->apellido = $apellido;
    
        return $this;
    }

    /**
     * Get apellido
     *
     * @return string 
     */
    public function getApellido()
    {
        return $this->apellido;
    }

    /**
     * Set apellido_materno
     *
     * @param string $apellidoMaterno
     * @return Perfil
     */
    public function setApellidoMaterno($apellidoMaterno)
    {
        $this->apellido_materno = $apellidoMaterno;
    
        return $this;
    }

    /**
     * Get apellido_materno
     *
     * @return string 
     */
    public function getApellidoMaterno()
    {
        return $this->apellido_materno;
    }

    /**
     * Set fecha_nacimiento
     *
     * @param \DateTime $fechaNacimiento
     * @return Perfil
     */
    public function setFechaNacimiento($fechaNacimiento)
    {
        $this->fecha_nacimiento = $fechaNacimiento;
    
        return $this;
    }

    /**
     * Get fecha_nacimiento
     *
     * @return \DateTime 
     */
    public function getFechaNacimiento()
    {
        return $this->fecha_nacimiento;
    }

    /**
     * Set direccion
     *
     * @param string $direccion
     * @return Perfil
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
     * Set lugar_nacimiento
     *
     * @param string $lugarNacimiento
     * @return Perfil
     */
    public function setLugarNacimiento($lugarNacimiento)
    {
        $this->lugar_nacimiento = $lugarNacimiento;
    
        return $this;
    }

    /**
     * Get lugar_nacimiento
     *
     * @return string 
     */
    public function getLugarNacimiento()
    {
        return $this->lugar_nacimiento;
    }

    /** 
     * Set nmr_documento
     *
     * @param string $nmrDocumento
     * @return Perfil
     */
    public function setNmrDocumento($nmrDocumento)
    {
        $this->nmr_documento = $nmrDocumento;
    
        return $this;
    }

    /**
     * Get nmr_documento
     *
     * @return string 
     */
    public function getNmrDocumento()
    {
        return $this->nmr_documento;
    }

    /**
     * Set sexo
     *
     * @param string $sexo
     * @return Perfil
     */
    public function setSexo($sexo)
    {
        $this->sexo = $sexo;
    
        return $this;
    }

    /**
     * Get sexo
     *
     * @return string 
     */
    public function getSexo()
    {
        return $this->sexo;
    }

    /**
     * Set email
     *
     * @param string $email
     * @return Perfil
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
     * Set avatar_url
     *
     * @param string $avatarUrl
     * @return Perfil
     */
    public function setAvatarUrl($avatarUrl)
    {
        $this->avatar_url = $avatarUrl;
    
        return $this;
    }

    /**
     * Get avatar_url
     *
     * @return string 
     */
    public function getAvatarUrl()
    {
        return $this->avatar_url;
    }

    /**
     * Set municipio_id
     *
     * @param cloud\siteBundle\Entity\Municipio $municipioId
     * @return Perfil
     */
    public function setMunicipioId(\cloud\siteBundle\Entity\Municipio $municipioId = null)
    {
        $this->municipio_id = $municipioId;
    
        return $this;
    }

    /**
     * Get municipio_id
     *
     * @return cloud\siteBundle\Entity\Municipio 
     */
    public function getMunicipioId()
    {
        return $this->municipio_id;
    }

    /**
     * Set tipodocumento_id
     *
     * @param cloud\siteBundle\Entity\TipoDocumento $tipodocumentoId
     * @return Perfil
     */
    public function setTipodocumentoId(\cloud\siteBundle\Entity\TipoDocumento $tipodocumentoId = null)
    {
        $this->tipodocumento_id = $tipodocumentoId;
    
        return $this;
    }

    /**
     * Get tipodocumento_id
     *
     * @return cloud\siteBundle\Entity\TipoDocumento 
     */
    public function getTipodocumentoId()
    {
        return $this->tipodocumento_id;
    }

   

    public function __construct()
    {
        $this->user_roles = new \Doctrine\Common\Collections\ArrayCollection();
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
     * Set username
     *
     * @param string $username
     */
    public function setUsername($username)
    {
        $this->username = $username;
    }

    /**
     * Get username
     *
     * @return string
     */
    public function getUsername()
    {
        return $this->username;
    }

    /**
     * Set password
     *
     * @param string $password
     */
    public function setPassword($password)
    {
        $this->password = $password;
    }

    /**
     * Get password
     *
     * @return string
     */
    public function getPassword()
    {
        return $this->password;
    }

    /**
     * Set salt
     *
     * @param string $salt
     */
    public function setSalt($salt)
    {
        $this->salt = $salt;
    }

    /**
     * Get salt
     *
     * @return string
     */
    public function getSalt()
    {
        return $this->salt;
    }

    /**
     * Add user_roles
     *
     * @param cloud\siteBundle\Entity\Role $userRoles
     */
    public function addRole( cloud\siteBundle\Entity\Role $userRoles)
    {
        $this->user_roles[] = $userRoles;
    }

    public function setUserRoles($roles) {
        $this->user_roles = $roles;
    }

    /**
     * Get user_roles
     *
     * @return Doctrine\Common\Collections\Collection
     */
    public function getUserRoles()
    {
        return $this->user_roles;
    }

    /**
     * Get roles
     *
     * @return Doctrine\Common\Collections\Collection
     */
    public function getRoles()
    {
        return $this->user_roles->toArray(); //IMPORTANTE: el mecanismo de seguridad de Sf2 requiere ésto como un array
    }

    /**
     * Compares this user to another to determine if they are the same.
     *
     * @param UserInterface $user The user
     * @return boolean True if equal, false othwerwise.
     */
    public function equals(UserInterface $user) {
        return md5($this->getUsername()) == md5($user->getUsername());

    }

    /**
     * Erases the user credentials.
     */
    public function eraseCredentials() {

    }

    /**
     * Add user_roles
     *
     * @param cloud\siteBundle\Entity\Role $userRoles
     * @return User
     */
    public function addUserRole(\cloud\siteBundle\Entity\Role $userRoles)
    {
        $this->user_roles[] = $userRoles;
    
        return $this;
    }

    /**
     * Remove user_roles
     *
     * @param cloud\siteBundle\Entity\Role $userRoles
     */
    public function removeUserRole(\cloud\siteBundle\Entity\Role $userRoles)
    {
        $this->user_roles->removeElement($userRoles);
    }
   

    /**
     * Set institucion_id
     *
     * @param cloud\siteBundle\Entity\Institucion $institucionId
     * @return User
     */
    public function setInstitucionId(\cloud\siteBundle\Entity\Institucion $institucionId = null)
    {
        $this->institucion_id = $institucionId;
    
        return $this;
    }

    /**
     * Get institucion_id
     *
     * @return cloud\siteBundle\Entity\Institucion 
     */
    public function getInstitucionId()
    {
        return $this->institucion_id;
    }
}