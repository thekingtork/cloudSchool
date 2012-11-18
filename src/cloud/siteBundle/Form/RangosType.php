<?php

namespace cloud\siteBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class RangosType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('limite1')
            ->add('limite2')
            ->add('limite3')
            ->add('limite4')
            ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'cloud\siteBundle\Entity\RangoCuantitativo'
        ));
    }

    public function getName()
    {
        return 'Rangos';
    }
}
