<?php

namespace cloud\siteBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class NotificacionesType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('user_id',null,array('required'=>false))
            ->add('curso_id',null,array('required'=>false))
            ->add('asunto')
            ->add('mensaje')
            ->add('tipo_id')
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'cloud\siteBundle\Entity\Notificaciones'
        ));
    }

    public function getName()
    {
        return 'cloud_sitebundle_notificacionestype';
    }
}
