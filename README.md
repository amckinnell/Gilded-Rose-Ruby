# Gilded Rose
Hi and welcome to team Gilded Rose. As you know, we are a small inn with a prime location in a prominent
city run by a friendly innkeeper named Allison. We also buy and sell only the finest goods. Unfortunately,
our goods are constantly degrading in quality as they approach their sell-by date. We have a system in place
that updates our inventory for us. It was developed by a no-nonsense type named Leeroy, who has moved onto new
adventures. You task is to add a feature to the system so that we can begin selling a new category of items.

### An Introduction to our System
All items have a `days_remaining` value which denotes the number of days we have to sell the item. All items
have a `quality` value which denotes how valuable the item is. At the end of each day, our system lowers
both values for every item. Pretty simple, right? Well, this is where it gets interesting.

Once the sell-by date has passed, quality degrades twice as fast - however, the quality of an item is never negative.
Some items, like "Aged Brie", actually increase in quality the older they get! The quality of our stock is never higher than 50,
with the exception of "Sulfuras", which is a legendary item whose quality is 80 and never alters.

"Aged Brie" increases in quality by one point with each passing day, until the sell-by date. From that day on, it will
increase in quality twice as fast!

"Backstage Passes", like "Aged Brie", increase in quality as their sell-by date approaches; quality increases by 2
when there are 10 days or less, by 3 when there are 5 days or less, and quality drops to zero after the sell-by date has passed.

### The New Feature
We are now going to begin selling "conjured" items; conjured items degrade in quality twice as fast as normal items. This means
that each day the quality will be lowered by 2 points until the sell-by date; at that time the quality will be lowered by 4 points each day.

### Requirements
- Refactor the `tick` method to be more readable; any code in that method can be altered or removed, and other methods can be added to the class.
  However, do not alter the class' name or its properties as those belong to the goblin in the corner who will insta-rage and one-shot
  you as he doesn't believe in shared code ownership.
- Add logic to the program to accommodate "conjured" items, and modify their quality appropriately each day.
- Make specs pass; the tests can be run in a console with `bundle exec rspec ./spec`. There are some disabled
  tests which cover the handling of conjured items - those should be enabled and passing at the end of the challenge.
