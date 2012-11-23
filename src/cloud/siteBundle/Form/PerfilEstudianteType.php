<?php

namespace cloud\siteBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class PerfilEstudianteType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nombre')
            ->add('apellido')
            ->add('fecha_nacimiento')
            ->add('direccion')
            ->add('lugar_nacimiento')
            ->add('nmr_documento')
            ->add('de')
            ->add('sexo')
            ->add('email')
            ->add('barrio')
            ->add('estrato')
            ->add('telefono')
            ->add('celular')
            ->add('salud')
            ->add('observaciones_personal')
            ->add('colegio_procedencia')
            ->add('sede_procedencia')
            ->add('jornada_procedencia')
            ->add('nivel_procedencia')
            ->add('curso_procedencia')
            ->add('observaciones_academica')
            ->add('nmrPersonas')
            ->add('casa_direccion')
            ->add('telefono_familia')
            ->add('vive_con')
            ->add('nmr_hermanos')
            ->add('celular_familia')
            ->add('datos_madre')
            ->add('cc_madre')
            ->add('datos_padre')
            ->add('cc_padre')
            ->add('datos_acudiente')
            ->add('cc_acudiente')
            ->add('direccion_familia')
            ->add('municipio_id')
            ->add('tipodocumento_id')
            ->add('user_id')
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'cloud\siteBundle\Entity\PerfilEstudiante'
        ));
    }

    public function getName()
    {
        return 'cloud_sitebundle_perfilestudiantetype';
    }
}
