<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * OrderDubl
 *
 * @ORM\Table(name="order_dubl", indexes={@ORM\Index(name="order_name_id", columns={"order_name_id"})})
 * @ORM\Entity
 */
class OrderDubl
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
     * @ORM\Column(name="week", type="integer", nullable=false)
     */
    private $week;

    /**
     * @var integer
     *
     * @ORM\Column(name="month", type="integer", nullable=false)
     */
    private $month;

    /**
     * @var integer
     *
     * @ORM\Column(name="year", type="integer", nullable=false)
     */
    private $year;

    /**
     * @var \OrderNameList
     *
     * @ORM\ManyToOne(targetEntity="OrderNameList")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="order_name_id", referencedColumnName="id")
     * })
     */
    private $orderName;


}

