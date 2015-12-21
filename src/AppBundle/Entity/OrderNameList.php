<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * OrderNameList
 *
 * @ORM\Table(name="order_name_list")
 * @ORM\Entity
 */
class OrderNameList
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
     * @ORM\Column(name="order_name", type="string", length=256, nullable=false)
     */
    private $orderName;


}

