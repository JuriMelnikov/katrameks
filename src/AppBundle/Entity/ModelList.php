<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ModelList
 *
 * @ORM\Table(name="model_list")
 * @ORM\Entity
 */
class ModelList
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="model_name", type="string", length=256, nullable=false)
     */
    private $modelName;


}

