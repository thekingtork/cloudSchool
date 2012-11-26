<?php
namespace cloud\siteBundle\Entity;

use Symfony\Component\Security\Core\User\UserInterface;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
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
    * @Assert\NotBlank(message = "Campo Obligatorio")
    */
    protected $username;

    /**
     * @ORM\Column(name="password", type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $password;

    /**
     * @ORM\Column(name="salt", type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
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
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $nombre;

    /**
     * @ORM\Column(name="apellido", type="string", length=255)
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    protected $apellido;

     /**
     * @ORM\Column(name="avatar_url", type="string", length=255)
     */
    protected $avatar_url;

    /**
     * @ORM\ManyToOne(targetEntity="Institucion")
     * @ORM\JoinColumn(name="institucion_id", referencedColumnName="id")
     * @Assert\NotNull(message = "Campo Obligatorio")
     */
    protected $institucion_id;

     /**
     * @ORM\OneToMany(targetEntity="Notificaciones", mappedBy="id")
     * @Assert\NotNull(message = "Campo Obligatorio")
     */
    protected $notificacion_id;
   
   public function __toString() {
        return  $this->getNombre();
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

    /**
     * Add notificacion_id
     *
     * @param cloud\siteBundle\Entity\Notificaciones $notificacionId
     * @return User
     */
    public function addNotificacionId(\cloud\siteBundle\Entity\Notificaciones $notificacionId)
    {
        $this->notificacion_id[] = $notificacionId;
    
        return $this;
    }

    /**
     * Remove notificacion_id
     *
     * @param cloud\siteBundle\Entity\Notificaciones $notificacionId
     */
    public function removeNotificacionId(\cloud\siteBundle\Entity\Notificaciones $notificacionId)
    {
        $this->notificacion_id->removeElement($notificacionId);
    }

    /**
     * Get notificacion_id
     *
     * @return Doctrine\Common\Collections\Collection 
     */
    public function getNotificacionId()
    {
        return $this->notificacion_id;
    }
}