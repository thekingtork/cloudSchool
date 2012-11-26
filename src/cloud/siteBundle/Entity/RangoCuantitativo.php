<?php

namespace cloud\siteBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * cloud\siteBundle\Entity\RangoCuantitativo
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class RangoCuantitativo
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
     * @var float $limite1
     *
     * @ORM\Column(name="limite1", type="float")
     */
    private $limite1;
    
    /**
     * @var float $limite2
     *
     * @ORM\Column(name="limite2", type="float")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    private $limite2;
    
    /**
     * @var float $limite3
     *
     * @ORM\Column(name="limite3", type="float")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    private $limite3;
    
    /**
     * @var float $limite4
     *
     * @ORM\Column(name="limite4", type="float")
     * @Assert\NotBlank(message = "Campo Obligatorio")
     */
    private $limite4;
    
    /**
     * 
     * @ORM\ManyToOne(targetEntity="Cloud\siteBundle\Entity\EscNacional")
     * 
     */
     private $escalanacional;

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
     * Set escalanacional
     *
     * @param Cloud\sitioBundle\Entity\EscNacional $escalanacional
     * @return RangoCuantitativo
     */
    public function setEscalanacional(\Cloud\sitioBundle\Entity\EscNacional $escalanacional = null)
    {
        $this->escalanacional = $escalanacional;
    
        return $this;
    }

    /**
     * Get escalanacional
     *
     * @return Cloud\sitioBundle\Entity\EscNacional 
     */
    public function getEscalanacional()
    {
        return $this->escalanacional;
    }

    /**
     * Set limite1
     *
     * @param float $limite1
     * @return RangoCuantitativo
     */
    public function setLimite1($limite1)
    {
        $this->limite1 = $limite1;
    
        return $this;
    }

    /**
     * Get limite1
     *
     * @return float 
     */
    public function getLimite1()
    {
        return $this->limite1;
    }

    /**
     * Set limite2
     *
     * @param float $limite2
     * @return RangoCuantitativo
     */
    public function setLimite2($limite2)
    {
        $this->limite2 = $limite2;
    
        return $this;
    }

    /**
     * Get limite2
     *
     * @return float 
     */
    public function getLimite2()
    {
        return $this->limite2;
    }

    /**
     * Set limite3
     *
     * @param float $limite3
     * @return RangoCuantitativo
     */
    public function setLimite3($limite3)
    {
        $this->limite3 = $limite3;
    
        return $this;
    }

    /**
     * Get limite3
     *
     * @return float 
     */
    public function getLimite3()
    {
        return $this->limite3;
    }

    /**
     * Set limite4
     *
     * @param float $limite4
     * @return RangoCuantitativo
     */
    public function setLimite4($limite4)
    {
        $this->limite4 = $limite4;
    
        return $this;
    }

    /**
     * Get limite4
     *
     * @return float 
     */
    public function getLimite4()
    {
        return $this->limite4;
    }
}