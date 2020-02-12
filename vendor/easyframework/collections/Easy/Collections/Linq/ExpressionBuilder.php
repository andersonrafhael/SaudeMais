<?php

// Copyright (c) Lellys Informática. All rights reserved. See License.txt in the project root for license information.

namespace Easy\Collections\Linq;

use Easy\Collections\Linq\Expr\Comparison;
use Easy\Collections\Linq\Expr\CompositeExpression;
use Easy\Collections\Linq\Expr\Value;

/**
 * Builder for Expressions in the {@link Selectable} interface.
 *
 * @author Benjamin Eberlei <kontakt@beberlei.de>
 * @since  2.1
 */
class ExpressionBuilder
{

    /**
     * @param mixed $x
     *
     * @return CompositeExpression
     */
    public function andX($x = null)
    {
        return new CompositeExpression(CompositeExpression::TYPE_AND, func_get_args());
    }

    /**
     * @param mixed $x
     *
     * @return CompositeExpression
     */
    public function orX($x = null)
    {
        return new CompositeExpression(CompositeExpression::TYPE_OR, func_get_args());
    }

    /**
     * @param string $field
     * @param mixed  $value
     *
     * @return Comparison
     */
    public function eq($field, $value)
    {
        return new Comparison($field, Comparison::EQ, new Value($value));
    }

    /**
     * @param string $field
     * @param mixed  $value
     *
     * @return Comparison
     */
    public function gt($field, $value)
    {
        return new Comparison($field, Comparison::GT, new Value($value));
    }

    /**
     * @param string $field
     * @param mixed  $value
     *
     * @return Comparison
     */
    public function lt($field, $value)
    {
        return new Comparison($field, Comparison::LT, new Value($value));
    }

    /**
     * @param string $field
     * @param mixed  $value
     *
     * @return Comparison
     */
    public function gte($field, $value)
    {
        return new Comparison($field, Comparison::GTE, new Value($value));
    }

    /**
     * @param string $field
     * @param mixed  $value
     *
     * @return Comparison
     */
    public function lte($field, $value)
    {
        return new Comparison($field, Comparison::LTE, new Value($value));
    }

    /**
     * @param string $field
     * @param mixed  $value
     *
     * @return Comparison
     */
    public function neq($field, $value)
    {
        return new Comparison($field, Comparison::NEQ, new Value($value));
    }

    /**
     * @param string $field
     *
     * @return Comparison
     */
    public function isNull($field)
    {
        return new Comparison($field, Comparison::EQ, new Value(null));
    }

    /**
     * @param string $field
     * @param mixed  $values
     *
     * @return Comparison
     */
    public function in($field, array $values)
    {
        return new Comparison($field, Comparison::IN, new Value($values));
    }

    /**
     * @param string $field
     * @param mixed  $values
     *
     * @return Comparison
     */
    public function notIn($field, array $values)
    {
        return new Comparison($field, Comparison::NIN, new Value($values));
    }

    /**
     * @param string $field
     * @param mixed  $value
     *
     * @return Comparison
     */
    public function contains($field, $value)
    {
        return new Comparison($field, Comparison::CONTAINS, new Value($value));
    }

}
