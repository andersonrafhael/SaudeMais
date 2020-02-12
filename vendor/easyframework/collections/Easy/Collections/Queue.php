<?php

// Copyright (c) Lellys Informática. All rights reserved. See License.txt in the project root for license information.

namespace Easy\Collections;

use BadFunctionCallException;
use Easy\Collections\CollectionArray;

/**
 * Represents a first-in, first-out collection of objects.
 */
class Queue extends CollectionArray implements QueueInterface
{

    /**
     * Adds an object to the end of the Queue.
     * @param mixed $item The object to add to the Queue. The value can be null.
     */
    public function enqueue($item)
    {
        array_push($this->array, $item);
    }

    /**
     * Adds multiples objects to the end of the Queue.
     * @param ICollection|array $items The objects to add to the Queue. The value can be null.
     */
    public function enqueueMultiple($items)
    {
        $this->addMultiple($items);
    }

    /**
     * Removes and returns the object at the beginning of the Queue.
     * @return mixed The object that is removed from the beginning of the Queue.
     * @throws BadFunctionCallException
     */
    public function dequeue()
    {
        if ($this->isEmpty()) {
            throw new BadFunctionCallException(_('Cannot use method Dequeue on an empty Queue'));
        }
        return array_shift($this->array);
    }

    /**
     * Returns the object at the beginning of the Queue without removing it.
     * @return mixed The object at the beginning of the Queue.
     * @throws BadFunctionCallException
     */
    public function peek()
    {
        if ($this->isEmpty()) {
            throw new BadFunctionCallException(__('Cannot use method Peek on an empty Queue'));
        }

        return $this->array[0];
    }

}
