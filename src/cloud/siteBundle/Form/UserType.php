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
