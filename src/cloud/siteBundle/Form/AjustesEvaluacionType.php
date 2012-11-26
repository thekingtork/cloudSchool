<?php

namespace cloud\siteBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class AjustesEvaluacionType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('modelo_evaluacion','choice',array('label'=>'Modelos de Evaluacion: ','choices'=>array(''=>'Escoja Modelo de Evaluacion','Por Logros'=>'Por Logros','Por Fortaleza y Dificultades'=>'Por Fortaleza y Dificultades')))
            ->add('escala','choice',array('label'=>'Escala en Uso: ','choices'=>array(''=>'Escoja Escala','Escala Cualitativa'=>'Escala Cualitativa','Escala Cuantitativa'=>'Escala Cuantitativa')))
            ->add('acumula','choice',array('label'=>'Acumular Periodo: ','choices'=>array(''=>'Acumular Periodos','1'=>'Si','0'=>'No')))
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'cloud\siteBundle\Entity\AjustesEvaluacion'));
    }

    public function getName()
    {
        return 'cloud_sitebundle_ajustesevaluacion';
    }
}
