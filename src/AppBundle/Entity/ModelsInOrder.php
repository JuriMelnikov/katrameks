<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ModelsInOrder
 *
 * @ORM\Table(name="models_in_order", indexes={@ORM\Index(name="a_id", columns={"order_id"}), @ORM\Index(name="model_list_id", columns={"model_list_id"})})
 * @ORM\Entity
 */
class ModelsInOrder
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
     * @ORM\Column(name="order_id", type="integer", nullable=false)
     */
    private $orderId;

    /**
     * @var \ModelList
     *
     * @ORM\ManyToOne(targetEntity="ModelList")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="model_list_id", referencedColumnName="id")
     * })
     */
    private $modelList;


}

