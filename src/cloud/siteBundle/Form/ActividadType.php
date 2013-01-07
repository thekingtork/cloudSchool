<?php

namespace cloud\siteBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class ActividadType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name')
            ->add('Porcentaje')
            ->add('publicar','choice',array('choices'=>array('si'=>'Si','no'=>'No')))
            ->add('categoria','choice')
            ->add('tipo','choice')
            ->add('date_inicio', 'date', array(    'widget' => 'single_text',    'format' => 'yyyy-MM-dd'))
            ->add('date_final', 'date', array(    'widget' => 'single_text',    'format' => 'yyyy-MM-dd'))
            ->add('descripcion')
            ->add('logro_competencia')
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'cloud\siteBundle\Entity\Actividad'
        ));
    }

    public function getName()
    {
        return 'cloud_sitebundle_actividadtype';
    }
}
