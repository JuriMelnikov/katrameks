<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Techmap
 *
 * @ORM\Table(name="techmap", indexes={@ORM\Index(name="serial", columns={"serial"}), @ORM\Index(name="machine_id", columns={"machine_list_id"}), @ORM\Index(name="category_id", columns={"category_id"}), @ORM\Index(name="modellistid", columns={"model_list_id"})})
 * @ORM\Entity
 */
class Techmap
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
     * @ORM\Column(name="serial", type="string", length=5, nullable=false)
     */
    private $serial;

    /**
     * @var string
     *
     * @ORM\Column(name="descript", type="string", length=255, nullable=false)
     */
    private $descript;

    /**
     * @var string
     *
     * @ORM\Column(name="time", type="string", length=11, nullable=false)
     */
    private $time;

    /**
     * @var \ModelList
     *
     * @ORM\ManyToOne(targetEntity="ModelList")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="model_list_id", referencedColumnName="id")
     * })
     */
    private $modelList;

    /**
     * @var \Category
     *
     * @ORM\ManyToOne(targetEntity="Category")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="category_id", referencedColumnName="id")
     * })
     */
    private $category;

    /**
     * @var \MachineList
     *
     * @ORM\ManyToOne(targetEntity="MachineList")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="machine_list_id", referencedColumnName="id")
     * })
     */
    private $machineList;


}

