<?php

namespace cloud\siteBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class InstitucionType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name')
            ->add('direccion')
            ->add('ciudad','choice',array('choices'=>array('monteria'=>'monteria','cerete'=>'cerete')))
            ->add('telefono')
            ->add('fax')
            ->add('nit')
            ->add('dane')
            ->add('men')
            ->add('rector')
            ->add('secretario')
            ->add('email')
            ->add('distribucion_usuario')
            ->add('modelo_pedagogico')
            ->add('url_imagen')
            ->add('sede_id')
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'cloud\siteBundle\Entity\Institucion'
        ));
    }

    public function getName()
    {
        return 'cloud_sitebundle_instituciontype';
    }
}
