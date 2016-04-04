Gilded Rose Kata in Ruby
========================

The Gilded Rose Kata in Ruby following the style from the [Sandi Metz](https://twitter.com/sandimetz)
presentation [All the Little Things](https://www.youtube.com/watch?v=8bZh5LMaSmE).

The objective of this kata is to practice refactoring. This kata motivates the need for refactoring as follows:

* The implementation is spaghetti code, and difficult to glean context.
* The tests of the current implementation pass, but there are a number of pending tests.
* You are asked to implement the code to get the pending tests to pass.
* This isn't easy, because the implementation is so messy.
* Consider using the passing tests to refactor the code to make it more habitable before implementing new functionality.
Also known as a [preparatory refactoring](http://martinfowler.com/articles/workflowsOfRefactoring/#preparatory).

## Where to Start

Begin refactoring the existing `lib/gilded_rose.rb` class.

## Original Requirements

Here are the [requirements](https://github.com/jimweirich/gilded_rose_kata#original-description-of-the-gilded-rose)
as given in the original version of the kata. It may help you to understand the problem domain if you know
that the [Gilded Rose](http://wowwiki.wikia.com/wiki/Gilded_Rose) is an inn from the World of Warcraft.
