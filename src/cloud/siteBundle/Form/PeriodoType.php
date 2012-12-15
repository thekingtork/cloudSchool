<?php

namespace cloud\siteBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class PeriodoType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('periodo_inicio', 'date', array(    'widget' => 'single_text',    'format' => 'yyyy-MM-dd'))
            ->add('periodo_final', 'date', array(    'widget' => 'single_text',    'format' => 'yyyy-MM-dd'))
            ->add('porcentaje')
            ->add('estado_id')
            ->add('actividades_min')
            ->add('actividades_max')
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'cloud\siteBundle\Entity\Periodo'
        ));
    }

    public function getName()
    {
        return 'cloud_sitebundle_periodotype';
    }
}
