<?php

namespace cloud\siteBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class PerfilDocenteType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nombre')
            ->add('apellido')
            ->add('fecha_nacimiento', 'date', array(    'widget' => 'single_text',    'format' => 'yyyy-MM-dd'))
            ->add('direccion')
            ->add('lugar_nacimiento')
            ->add('nmr_documento')
            ->add('de')
            ->add('sexo','choice',array('label'=>'Sexo: ','choices'=>array('f'=>'Femenino','m'=>'Masculino')))
            ->add('email')
            ->add('barrio')
            ->add('estrato')
            ->add('telefono')
            ->add('celular')
            ->add('personas_cargo')
            ->add('titulo_profesional')
            ->add('anios_experienca')
            ->add('fecha_ingreso', 'date', array(    'widget' => 'single_text',    'format' => 'yyyy-MM-dd'))
            ->add('salario')
            ->add('tipo_contrado')
            ->add('numero_contrado')
            ->add('titulo_pregrado')
            ->add('titulo_postgrado')
            ->add('especialidad')
            ->add('escalafon')
            ->add('resolucion')
            ->add('fecha_resolucion', 'date', array(    'widget' => 'single_text',    'format' => 'yyyy-MM-dd'))
            ->add('municipio_id')
            ->add('tipodocumento_id')
            ->add('cargo_id')
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'cloud\siteBundle\Entity\PerfilDocente'
        ));
    }

    public function getName()
    {
        return 'cloud_sitebundle_perfildocentetype';
    }
}
