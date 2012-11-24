<?php

namespace cloud\siteBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class InscripcionType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('inscripcion_inicio', 'date', array(    'widget' => 'single_text',    'format' => 'yyyy-MM-dd'))
            ->add('inscripcion_final', 'date', array(    'widget' => 'single_text',    'format' => 'yyyy-MM-dd'))
            ->add('anio_id')
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'cloud\siteBundle\Entity\Inscripcion'
        ));
    }

    public function getName()
    {
        return 'cloud_sitebundle_inscripciontype';
    }
}
