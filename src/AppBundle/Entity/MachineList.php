<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * MachineList
 *
 * @ORM\Table(name="machine_list")
 * @ORM\Entity
 */
class MachineList
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
     * @ORM\Column(name="machine_name", type="string", length=256, nullable=false)
     */
    private $machineName;


}

