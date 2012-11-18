<?php

namespace cloud\siteBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class UserType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('institucion_id')
            ->add('nombre',null,array('label'=>'Nombres: '))
            ->add('apellido',null,array('label'=>'Primer Apellido: '))
            ->add('apellido_materno',null,array('label'=>'Segundo Apellido: '))
            ->add('sexo','choice',array('label'=>'Sexo: ','choices'=>array('f'=>'Femenino','m'=>'Masculino')))
            ->add('lugar_nacimiento',null,array('label'=>'Lugar de Nacimiento: '))
            ->add('fecha_nacimiento', 'date', array(    'widget' => 'single_text',    'format' => 'yyyy-MM-dd'))
            ->add('municipio_id',null,array('label'=>'Municipio: '))
            ->add('direccion',null,array('label'=>'Direccion: '))
            ->add('tipodocumento_id',null,array('label'=>'Tipo de Documento: '))
            ->add('nmr_documento',null,array('label'=>'N° Documento: '))
            ->add('email',null,array('label'=>'Correo Electronico:'))
            ->add('avatar_url',null,array('label'=>'Imagen: '))
            ->add('user_roles',null,array('label'=>'Rol'))
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'cloud\siteBundle\Entity\User'
        ));
    }

    public function getName()
    {
        return 'cloud_sitebundle_usertype';
    }
}
