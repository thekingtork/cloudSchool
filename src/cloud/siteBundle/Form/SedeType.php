<?php

namespace cloud\siteBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class SedeType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name',null,array('label'=>'Nombre sede'))
            ->add('direccion')
            ->add('telefono')
            ->add('fax')
            ->add('email')
            ->add('rector',null,array('label'=>'Coordinador'))
            ->add('secretaria')
            ->add('url_imagen','file')
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'cloud\siteBundle\Entity\Sede'
        ));
    }

    public function getName()
    {
        return 'cloud_sitebundle_sedetype';
    }
}
