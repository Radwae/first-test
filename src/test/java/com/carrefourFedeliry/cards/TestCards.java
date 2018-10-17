package com.carrefourFedeliry.cards;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
        monochrome = false, 
        snippets=SnippetType.CAMELCASE
) 
public class TestCards {
  
}
