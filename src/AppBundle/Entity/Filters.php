<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Filters
 *
 * @ORM\Table(name="filters")
 * @ORM\Entity
 */
class Filters
{
    /**
     * @var boolean
     *
     * @ORM\Column(name="id", type="boolean", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var integer
     *
     * @ORM\Column(name="work_show", type="integer", nullable=false)
     */
    private $workShow;

    /**
     * @var integer
     *
     * @ORM\Column(name="dayStop", type="integer", nullable=false)
     */
    private $daystop = '10';


}

