<?php

use \Behat\MinkExtension\Context\MinkContext;

/**
 * Feature context.
 */
class FeatureContext extends MinkContext {

  /**
   * Pause execution for given number of seconds.
   *
   * @Then I wait :seconds seconds
   */
  public function iWaitSeconds($seconds) {
    sleep((int) $seconds);
  }

}
