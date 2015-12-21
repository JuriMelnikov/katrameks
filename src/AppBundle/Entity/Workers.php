<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Workers
 *
 * @ORM\Table(name="workers", indexes={@ORM\Index(name="appointment", columns={"appointment_id"})})
 * @ORM\Entity
 */
class Workers
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
     * @var boolean
     *
     * @ORM\Column(name="active", type="boolean", nullable=false)
     */
    private $active;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="begin", type="datetime", nullable=false)
     */
    private $begin = 'CURRENT_TIMESTAMP';

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="end", type="datetime", nullable=true)
     */
    private $end;

    /**
     * @var string
     *
     * @ORM\Column(name="role", type="string", length=20, nullable=false)
     */
    private $role;

    /**
     * @var string
     *
     * @ORM\Column(name="family", type="string", length=30, nullable=false)
     */
    private $family;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=20, nullable=false)
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="kood", type="string", length=11, nullable=false)
     */
    private $kood;

    /**
     * @var string
     *
     * @ORM\Column(name="telefon", type="string", length=15, nullable=false)
     */
    private $telefon;

    /**
     * @var string
     *
     * @ORM\Column(name="bankCount", type="string", length=15, nullable=false)
     */
    private $bankcount;

    /**
     * @var string
     *
     * @ORM\Column(name="city", type="string", length=20, nullable=false)
     */
    private $city;

    /**
     * @var string
     *
     * @ORM\Column(name="adress", type="string", length=255, nullable=false)
     */
    private $adress;

    /**
     * @var \Appointments
     *
     * @ORM\ManyToOne(targetEntity="Appointments")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="appointment_id", referencedColumnName="id")
     * })
     */
    private $appointment;


}

