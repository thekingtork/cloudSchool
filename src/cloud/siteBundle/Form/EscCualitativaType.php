<?php

namespace cloud\siteBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class EscCualitativaType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('valoracion','collection',array('type'=>'text'))
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'cloud\siteBundle\Entity\EscCualitativa'
        ));
    }

    public function getName()
    {
        return 'cloud_sitebundle_cualitativo';
    }
}
