<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Easy\Collections\Test;

/**
 * Description of CollectionTest
 *
 * @author italo
 */
class DictionaryTest extends CollectionsTestCase
{

    /**
     * @var \Easy\Collections\Dictionary
     */
    private $coll;

    protected function setUp()
    {
        $this->coll = new \Easy\Collections\Dictionary();
    }

    public function testNewInstance()
    {
        $this->assertNotNull($this->coll);
    }

    public function testAddItem()
    {
        $this->coll->add('key', 'testing');
        $this->assertTrue(is_string((string) $this->coll));
    }

    /**
     * @expectedException \InvalidArgumentException
     */
    public function testAddDuplicateKey()
    {
        $this->coll->add('key', 'testing');
        $this->coll->add('key', 'testing2');
    }

    public function testSetItem()
    {
        $this->coll->set('key', 'testing');
        $this->assertTrue(is_string((string) $this->coll));
    }

    public function testGetItem()
    {
        $this->coll->set('keyOne', 'testing');
        $this->assertEquals('testing', $this->coll->get('keyOne'));
    }

    /**
     * @expectedException \InvalidArgumentException
     */
    public function testSetNullKey()
    {
        $this->coll->set(null, 'testing');
    }

    /**
     * @expectedException \InvalidArgumentException
     */
    public function testRemovingNonExistentEntryReturnsNull()
    {
        $this->assertEquals(null, $this->coll->remove('testing_does_not_exist'));
    }

    public function testArrayAccess()
    {
        $this->coll['keyOne'] = 'one';
        $this->coll['keyTwo'] = 'two';

        $this->assertEquals($this->coll['keyOne'], 'one');
        $this->assertEquals($this->coll['keyTwo'], 'two');

        unset($this->coll['keyOne']);
        $this->assertEquals($this->coll->count(), 1);
    }

}
