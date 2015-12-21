<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * OrderTime
 *
 * @ORM\Table(name="order_time", indexes={@ORM\Index(name="order_name_id", columns={"order_name_id"})})
 * @ORM\Entity
 */
class OrderTime
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
     * @var integer
     *
     * @ORM\Column(name="order_name_id", type="integer", nullable=false)
     */
    private $orderNameId;

    /**
     * @var string
     *
     * @ORM\Column(name="year", type="string", length=5, nullable=false)
     */
    private $year;

    /**
     * @var integer
     *
     * @ORM\Column(name="month", type="integer", nullable=false)
     */
    private $month;

    /**
     * @var integer
     *
     * @ORM\Column(name="week", type="integer", nullable=false)
     */
    private $week;


}

