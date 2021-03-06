<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Easy\Collections\Test;

use Easy\Collections\Linq\Expr\Comparison;
use Easy\Collections\Linq\Expr\CompositeExpression;
use Easy\Collections\Linq\ExpressionBuilder;

/**
 * Description of Collection
 *
 * @author italo
 */
class ExpressionBuilderTest extends CollectionsTestCase
{

    private $builder;

    public function setUp()
    {
        $this->builder = new ExpressionBuilder();
    }

    public function testAndX()
    {
        $expr = $this->builder->andX($this->builder->eq("a", "b"));

        $this->assertInstanceOf("Easy\Collections\Linq\Expr\CompositeExpression", $expr);
        $this->assertEquals(CompositeExpression::TYPE_AND, $expr->getType());
    }

    public function testOrX()
    {
        $expr = $this->builder->orX($this->builder->eq("a", "b"));

        $this->assertInstanceOf("Easy\Collections\Linq\Expr\CompositeExpression", $expr);
        $this->assertEquals(CompositeExpression::TYPE_OR, $expr->getType());
    }

    public function testInvalidAndXArgument()
    {
        $this->setExpectedException("RuntimeException");
        $this->builder->andX("foo");
    }

    public function testEq()
    {
        $expr = $this->builder->eq("a", "b");

        $this->assertInstanceOf("Easy\Collections\Linq\Expr\Comparison", $expr);
        $this->assertEquals(Comparison::EQ, $expr->getOperator());
    }

    public function testNeq()
    {
        $expr = $this->builder->neq("a", "b");

        $this->assertInstanceOf("Easy\Collections\Linq\Expr\Comparison", $expr);
        $this->assertEquals(Comparison::NEQ, $expr->getOperator());
    }

    public function testLt()
    {
        $expr = $this->builder->lt("a", "b");

        $this->assertInstanceOf("Easy\Collections\Linq\Expr\Comparison", $expr);
        $this->assertEquals(Comparison::LT, $expr->getOperator());
    }

    public function testGt()
    {
        $expr = $this->builder->gt("a", "b");

        $this->assertInstanceOf("Easy\Collections\Linq\Expr\Comparison", $expr);
        $this->assertEquals(Comparison::GT, $expr->getOperator());
    }

    public function testGte()
    {
        $expr = $this->builder->gte("a", "b");

        $this->assertInstanceOf("Easy\Collections\Linq\Expr\Comparison", $expr);
        $this->assertEquals(Comparison::GTE, $expr->getOperator());
    }

    public function testLte()
    {
        $expr = $this->builder->lte("a", "b");

        $this->assertInstanceOf("Easy\Collections\Linq\Expr\Comparison", $expr);
        $this->assertEquals(Comparison::LTE, $expr->getOperator());
    }

    public function testIn()
    {
        $expr = $this->builder->in("a", array("b"));

        $this->assertInstanceOf("Easy\Collections\Linq\Expr\Comparison", $expr);
        $this->assertEquals(Comparison::IN, $expr->getOperator());
    }

    public function testNotIn()
    {
        $expr = $this->builder->notIn("a", array("b"));

        $this->assertInstanceOf("Easy\Collections\Linq\Expr\Comparison", $expr);
        $this->assertEquals(Comparison::NIN, $expr->getOperator());
    }

    public function testIsNull()
    {
        $expr = $this->builder->isNull("a");

        $this->assertInstanceOf("Easy\Collections\Linq\Expr\Comparison", $expr);
        $this->assertEquals(Comparison::EQ, $expr->getOperator());
    }

    public function testContains()
    {
        $expr = $this->builder->contains("a", "b");

        $this->assertInstanceOf("Easy\Collections\Linq\Expr\Comparison", $expr);
        $this->assertEquals(Comparison::CONTAINS, $expr->getOperator());
    }

}
