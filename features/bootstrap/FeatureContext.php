<?php

use Behat\Behat\Context\ClosuredContextInterface,
    Behat\Behat\Context\TranslatedContextInterface,
    Behat\Behat\Context\BehatContext,
    Behat\Behat\Exception\PendingException;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode,
    Behat\Behat\Context\Step as Step;
    

//
// Require 3rd-party libraries here:
//
//   require_once 'PHPUnit/Autoload.php';
//   require_once 'PHPUnit/Framework/Assert/Functions.php';
//
use Behat\MinkExtension\Context\MinkDictionary;

/**
 * Features context.
 */
class FeatureContext extends BehatContext
{
    use MinkDictionary;
    /**
     * Initializes context.
     * Every scenario gets it's own context object.
     *
     * @param array $parameters context parameters (set them up through behat.yml)
     */
    public function __construct(array $parameters)
    {
        // Initialize your context here
    }

    /**
     * @Given /^I am authenticated$/
     */
    public function iAmAuthenticated()
    {
        return array(
            new Step\Given("I am on \"/?logout\""),
            new Step\When("I fill in \"login\" with \"poche\""),
            new Step\When("I fill in \"password\" with \"poche\""),
            new Step\When("I press \"Sign in\""),
            new Step\Then("I should see \"welcome in your pocket\""),
        );
    }

}
