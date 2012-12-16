<?php
namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="perfil_docente")
 */
class PerfilDocente
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\OneToOne(targetEntity="User", mappedBy="profile_docente")
     */
    private $user_id;


    /*:::::::::::::::::::::::INFO PERSONAL ::::::::::::::::::::::::::::::::::::::::*/

     /**
     * @ORM\Column(name="nombre", type="string", length=255)
     * @Assert\NotBlank(message = "nombre Campo Obligatorio")
     */
    protected $nombre;

    /**
     * @ORM\Column(name="apellido", type="string", length=255)
     * @Assert\NotBlank(message = "apellido Campo Obligatorio")
     */
    protected $apellido;

    /**
     * @ORM\Column(name="fecha_nacimiento", type="datetime")
     * @Assert\NotBlank(message = "fecha Campo Obligatorio")
     * @Assert\DateTime(message = "Campo de Fecha")
     */
    protected $fecha_nacimiento;

    /**
     * @ORM\ManyToOne(targetEntity="Municipio", inversedBy="id")
     * @ORM\JoinColumn(name="municipio_id", referencedColumnName="id")
     * @Assert\NotNull(message = "municipio Campo Obligatorio")
     */
    protected $municipio_id;

    /**
     * @ORM\Column(name="direccion", type="string", length=255)
     * @Assert\NotBlank(message = "direccion Campo Obligatorio")
     */
    protected $direccion;

    /**
     * @ORM\Column(name="lugar_nacimiento", type="string", length=255)
     * @Assert\NotBlank(message = "lugar nacimiento Campo Obligatorio")
     */
    protected $lugar_nacimiento;

    /**
     * @ORM\ManyToOne(targetEntity="TipoDocumento")
     * @ORM\JoinColumn(name="tipodocumento_id", referencedColumnName="id")
     * @Assert\NotNull(message = "tipo documento Campo Obligatorio")
     */
    private $tipodocumento_id;

    /**
     * @ORM\Column(name="nmr_documento", type="string", length=255)
     * @Assert\NotBlank(message = "nmr documento Campo Obligatorio")
     */
    protected $nmr_documento;
     /**
     * @ORM\Column(name="de", type="string", length=255)
     * @Assert\NotBlank(message = " de Campo Obligatorio")
     */
    protected $de;



    /**
     * @ORM\Column(name="sexo", type="string", length=255)
     * @Assert\NotNull(message = "sexo Campo Obligatorio")
     */
    protected $sexo;

     /**
     * @ORM\Column(name="email", type="string", length=255)
     * @Assert\NotBlank(message = "email Campo Obligatorio")
     * @Assert\Email(message = "Correo incorrecto")
     */
    protected $email;

     /**
     * @ORM\Column(name="barrio", type="string", length=255)
     * @Assert\NotBlank(message = "barrio Campo Obligatorio")
     */
    protected $barrio;

     /**
     * @ORM\Column(name="estrato", type="integer")
     * @Assert\NotBlank(message = "estrato Campo Obligatorio")
     */
    protected $estrato;

     /**
     * @ORM\Column(name="telefono", type="string", length=255)
     * @Assert\NotBlank(message = "telefono Campo Obligatorio")
     */
    protected $telefono;

     /**
     * @ORM\Column(name="celular", type="string", length=255)
     * @Assert\NotBlank(message = "celular Campo Obligatorio")
     */
    protected $celular;

     /**
     * @ORM\Column(name="personas_cargo", type="integer")
     * @Assert\NotBlank(message = "Personas a cargo Campo Obligatorio")
     */
    protected $personas_cargo;

     /**
     * @ORM\Column(name="titulo_profesional", type="string", length=255)
     * @Assert\NotBlank(message = "celular Campo Obligatorio")
     */
    protected $titulo_profesional;

     /**
     * @ORM\Column(name="anios_experienca", type="integer")
     * @Assert\NotBlank(message = "Personas a cargo Campo Obligatorio")
     */
    protected $anios_experienca;

   

    /*:::::::::::::::::::::::::::::::INFO LABORAL::::::::::::::::::::::::::::::::::::::::::::::::::::*/

   /**
     * @ORM\Column(name="fecha_ingreso", type="datetime")
     * @Assert\NotBlank(message = "fecha ingreso Campo Obligatorio")
     * @Assert\DateTime(message = "Campo de Fecha")
     */
    protected $fecha_ingreso;

     /**
     * @ORM\Column(name="salario", type="string", length=255)
     * @Assert\NotBlank(message = "salario Campo Obligatorio")
     */
    protected $salario;

    /**
     * @ORM\ManyToOne(targetEntity="CargoDocente", inversedBy="id")
     * @ORM\JoinColumn(name="cargo_id", referencedColumnName="id")
     * @Assert\NotNull(message = "cargo Campo Obligatorio")
     */
    protected $cargo_id;

     /**
     * @ORM\Column(name="tipo_contrado", type="string", length=255)
     * @Assert\NotBlank(message = "tipo contrato Campo Obligatorio")
     */
    protected $tipo_contrado;

     /**
     * @ORM\Column(name="numero_contrado", type="string", length=255)
     * @Assert\NotBlank(message = "numero contrato Campo Obligatorio")
     */
    protected $numero_contrado;

     /**
     * @ORM\Column(name="titulo_pregrado", type="string", length=255)
     * @Assert\NotBlank(message = "titulo postgrado Campo Obligatorio")
     */
    protected $titulo_pregrado;

     /**
     * @ORM\Column(name="titulo_postgrado", type="string", length=255)
     * @Assert\NotBlank(message = "titulo pregado Campo Obligatorio")
     */
    protected $titulo_postgrado;

    /**
     * @ORM\Column(name="especialidad", type="string", length=255)
     * @Assert\NotBlank(message = "especialidad Campo Obligatorio")
     */
    protected $especialidad;

     /**
     * @ORM\Column(name="escalafon", type="string", length=255)
     * @Assert\NotBlank(message = "escalafon Campo Obligatorio")
     */
    protected $escalafon;

     /**
     * @ORM\Column(name="resolucion", type="string", length=255)
     * @Assert\NotBlank(message = "resolucion Campo Obligatorio")
     */
    protected $resolucion;

     /**
     * @ORM\Column(name="fecha_resolucion", type="datetime")
     * @Assert\NotBlank(message = "fecha resolucion Campo Obligatorio")
     * @Assert\DateTime(message = "Campo de Fecha")
     */
    protected $fecha_resolucion;





    public function __toString() {
        return $this->getNombre();
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
     * Set nombre
     *
     * @param string $nombre
     * @return PerfilDocente
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
     * @return PerfilDocente
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
     * Set fecha_nacimiento
     *
     * @param \DateTime $fechaNacimiento
     * @return PerfilDocente
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
     * @return PerfilDocente
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
     * @return PerfilDocente
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
     * @return PerfilDocente
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
     * Set de
     *
     * @param string $de
     * @return PerfilDocente
     */
    public function setDe($de)
    {
        $this->de = $de;
    
        return $this;
    }

    /**
     * Get de
     *
     * @return string 
     */
    public function getDe()
    {
        return $this->de;
    }

    /**
     * Set sexo
     *
     * @param string $sexo
     * @return PerfilDocente
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
     * @return PerfilDocente
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
     * Set barrio
     *
     * @param string $barrio
     * @return PerfilDocente
     */
    public function setBarrio($barrio)
    {
        $this->barrio = $barrio;
    
        return $this;
    }

    /**
     * Get barrio
     *
     * @return string 
     */
    public function getBarrio()
    {
        return $this->barrio;
    }

    /**
     * Set estrato
     *
     * @param integer $estrato
     * @return PerfilDocente
     */
    public function setEstrato($estrato)
    {
        $this->estrato = $estrato;
    
        return $this;
    }

    /**
     * Get estrato
     *
     * @return integer 
     */
    public function getEstrato()
    {
        return $this->estrato;
    }

    /**
     * Set telefono
     *
     * @param string $telefono
     * @return PerfilDocente
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
     * Set celular
     *
     * @param string $celular
     * @return PerfilDocente
     */
    public function setCelular($celular)
    {
        $this->celular = $celular;
    
        return $this;
    }

    /**
     * Get celular
     *
     * @return string 
     */
    public function getCelular()
    {
        return $this->celular;
    }

    /**
     * Set personas_cargo
     *
     * @param integer $personasCargo
     * @return PerfilDocente
     */
    public function setPersonasCargo($personasCargo)
    {
        $this->personas_cargo = $personasCargo;
    
        return $this;
    }

    /**
     * Get personas_cargo
     *
     * @return integer 
     */
    public function getPersonasCargo()
    {
        return $this->personas_cargo;
    }

    /**
     * Set titulo_profesional
     *
     * @param string $tituloProfesional
     * @return PerfilDocente
     */
    public function setTituloProfesional($tituloProfesional)
    {
        $this->titulo_profesional = $tituloProfesional;
    
        return $this;
    }

    /**
     * Get titulo_profesional
     *
     * @return string 
     */
    public function getTituloProfesional()
    {
        return $this->titulo_profesional;
    }

    /**
     * Set anios_experienca
     *
     * @param integer $aniosExperienca
     * @return PerfilDocente
     */
    public function setAniosExperienca($aniosExperienca)
    {
        $this->anios_experienca = $aniosExperienca;
    
        return $this;
    }

    /**
     * Get anios_experienca
     *
     * @return integer 
     */
    public function getAniosExperienca()
    {
        return $this->anios_experienca;
    }

    /**
     * Set fecha_ingreso
     *
     * @param \DateTime $fechaIngreso
     * @return PerfilDocente
     */
    public function setFechaIngreso($fechaIngreso)
    {
        $this->fecha_ingreso = $fechaIngreso;
    
        return $this;
    }

    /**
     * Get fecha_ingreso
     *
     * @return \DateTime 
     */
    public function getFechaIngreso()
    {
        return $this->fecha_ingreso;
    }

    /**
     * Set salario
     *
     * @param string $salario
     * @return PerfilDocente
     */
    public function setSalario($salario)
    {
        $this->salario = $salario;
    
        return $this;
    }

    /**
     * Get salario
     *
     * @return string 
     */
    public function getSalario()
    {
        return $this->salario;
    }

    /**
     * Set tipo_contrado
     *
     * @param string $tipoContrado
     * @return PerfilDocente
     */
    public function setTipoContrado($tipoContrado)
    {
        $this->tipo_contrado = $tipoContrado;
    
        return $this;
    }

    /**
     * Get tipo_contrado
     *
     * @return string 
     */
    public function getTipoContrado()
    {
        return $this->tipo_contrado;
    }

    /**
     * Set numero_contrado
     *
     * @param string $numeroContrado
     * @return PerfilDocente
     */
    public function setNumeroContrado($numeroContrado)
    {
        $this->numero_contrado = $numeroContrado;
    
        return $this;
    }

    /**
     * Get numero_contrado
     *
     * @return string 
     */
    public function getNumeroContrado()
    {
        return $this->numero_contrado;
    }

    /**
     * Set titulo_pregrado
     *
     * @param string $tituloPregrado
     * @return PerfilDocente
     */
    public function setTituloPregrado($tituloPregrado)
    {
        $this->titulo_pregrado = $tituloPregrado;
    
        return $this;
    }

    /**
     * Get titulo_pregrado
     *
     * @return string 
     */
    public function getTituloPregrado()
    {
        return $this->titulo_pregrado;
    }

    /**
     * Set titulo_postgrado
     *
     * @param string $tituloPostgrado
     * @return PerfilDocente
     */
    public function setTituloPostgrado($tituloPostgrado)
    {
        $this->titulo_postgrado = $tituloPostgrado;
    
        return $this;
    }

    /**
     * Get titulo_postgrado
     *
     * @return string 
     */
    public function getTituloPostgrado()
    {
        return $this->titulo_postgrado;
    }

    /**
     * Set especialidad
     *
     * @param string $especialidad
     * @return PerfilDocente
     */
    public function setEspecialidad($especialidad)
    {
        $this->especialidad = $especialidad;
    
        return $this;
    }

    /**
     * Get especialidad
     *
     * @return string 
     */
    public function getEspecialidad()
    {
        return $this->especialidad;
    }

    /**
     * Set escalafon
     *
     * @param string $escalafon
     * @return PerfilDocente
     */
    public function setEscalafon($escalafon)
    {
        $this->escalafon = $escalafon;
    
        return $this;
    }

    /**
     * Get escalafon
     *
     * @return string 
     */
    public function getEscalafon()
    {
        return $this->escalafon;
    }

    /**
     * Set resolucion
     *
     * @param string $resolucion
     * @return PerfilDocente
     */
    public function setResolucion($resolucion)
    {
        $this->resolucion = $resolucion;
    
        return $this;
    }

    /**
     * Get resolucion
     *
     * @return string 
     */
    public function getResolucion()
    {
        return $this->resolucion;
    }

    /**
     * Set fecha_resolucion
     *
     * @param \DateTime $fechaResolucion
     * @return PerfilDocente
     */
    public function setFechaResolucion($fechaResolucion)
    {
        $this->fecha_resolucion = $fechaResolucion;
    
        return $this;
    }

    /**
     * Get fecha_resolucion
     *
     * @return \DateTime 
     */
    public function getFechaResolucion()
    {
        return $this->fecha_resolucion;
    }

    /**
     * Set municipio_id
     *
     * @param cloud\siteBundle\Entity\Municipio $municipioId
     * @return PerfilDocente
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
     * @return PerfilDocente
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

  

    /**
     * Set cargo_id
     *
     * @param cloud\siteBundle\Entity\CargoDocente $cargoId
     * @return PerfilDocente
     */
    public function setCargoId(\cloud\siteBundle\Entity\CargoDocente $cargoId = null)
    {
        $this->cargo_id = $cargoId;
    
        return $this;
    }

    /**
     * Get cargo_id
     *
     * @return cloud\siteBundle\Entity\CargoDocente 
     */
    public function getCargoId()
    {
        return $this->cargo_id;
    }

    /**
     * Set user_id
     *
     * @param cloud\siteBundle\Entity\User $userId
     * @return PerfilDocente
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
}