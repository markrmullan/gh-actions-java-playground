package com.example.tests;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class ExampleTest {
  @Test
  public void testExample() {
    Assertions.assertEquals(11, "hello world".length());
  }

  @Test
  public void testFailingTest() {
    Assertions.assertTrue(1 > 2); // fixme!
  }
}
