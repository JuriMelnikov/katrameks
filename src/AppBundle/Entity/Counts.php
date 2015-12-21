<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Counts
 *
 * @ORM\Table(name="counts", indexes={@ORM\Index(name="order_id", columns={"order_time_id"}), @ORM\Index(name="model_id", columns={"models_in_order_id"})})
 * @ORM\Entity
 */
class Counts
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
     * @ORM\Column(name="count", type="integer", nullable=false)
     */
    private $count;

    /**
     * @var \OrderTime
     *
     * @ORM\ManyToOne(targetEntity="OrderTime")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="order_time_id", referencedColumnName="id")
     * })
     */
    private $orderTime;

    /**
     * @var \ModelsInOrder
     *
     * @ORM\ManyToOne(targetEntity="ModelsInOrder")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="models_in_order_id", referencedColumnName="id")
     * })
     */
    private $modelsInOrder;


}

