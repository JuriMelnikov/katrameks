<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Appointments
 *
 * @ORM\Table(name="appointments", uniqueConstraints={@ORM\UniqueConstraint(name="appointment", columns={"appointment"})})
 * @ORM\Entity
 */
class Appointments
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
     * @ORM\Column(name="appointment", type="string", length=255, nullable=false)
     */
    private $appointment;

    /**
     * @var integer
     *
     * @ORM\Column(name="del", type="integer", nullable=false)
     */
    private $del = '0';


}

