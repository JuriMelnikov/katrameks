<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Results
 *
 * @ORM\Table(name="results", indexes={@ORM\Index(name="techmap_id", columns={"techmap_id"}), @ORM\Index(name="order_time_id", columns={"order_time_id"}), @ORM\Index(name="order_name_list_id", columns={"order_name_list_id"}), @ORM\Index(name="models_in_order_id", columns={"models_in_order_id"}), @ORM\Index(name="model_list_id", columns={"model_list_id"}), @ORM\Index(name="worker_id", columns={"worker_id"}), @ORM\Index(name="machine_list_id", columns={"machine_list_id"})})
 * @ORM\Entity
 */
class Results
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
     * @var \DateTime
     *
     * @ORM\Column(name="date", type="datetime", nullable=false)
     */
    private $date = 'CURRENT_TIMESTAMP';

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
     * @var integer
     *
     * @ORM\Column(name="countDid", type="integer", nullable=false)
     */
    private $countdid;

    /**
     * @var \MachineList
     *
     * @ORM\ManyToOne(targetEntity="MachineList")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="machine_list_id", referencedColumnName="id")
     * })
     */
    private $machineList;

    /**
     * @var \Techmap
     *
     * @ORM\ManyToOne(targetEntity="Techmap")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="techmap_id", referencedColumnName="id")
     * })
     */
    private $techmap;

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
     * @var \OrderNameList
     *
     * @ORM\ManyToOne(targetEntity="OrderNameList")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="order_name_list_id", referencedColumnName="id")
     * })
     */
    private $orderNameList;

    /**
     * @var \ModelsInOrder
     *
     * @ORM\ManyToOne(targetEntity="ModelsInOrder")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="models_in_order_id", referencedColumnName="id")
     * })
     */
    private $modelsInOrder;

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
     * @var \Workers
     *
     * @ORM\ManyToOne(targetEntity="Workers")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="worker_id", referencedColumnName="id")
     * })
     */
    private $worker;


}

