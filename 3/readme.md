# Building Your First Bean #

A "bean" is a relatively simple CFC that has two roles:

* to store information
* to return that information when asked

A bean represents a single entity: one car, one building, one person. It's a blueprint.

See `Person1.cfc` for more details.

What makes a CFC a bean?

1. Must have public default or no-argument contructor
1. Properties must allow for easy inspection

I'm confused on part 1 above. He states that this constructor should not require any arguments and set defaults for those arguments, but his code example is the opposite. Is his description wrong or code sample? I've set required="false" for my code. After some testing, I'm pretty sure his code sample is wrong.

Implicit Setters are a Godsend. Saves a lot of code.

See `Person2.cfc` for more details.