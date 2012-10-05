# Introducing ColdFusion Components #

Introducing is right. This chapter takes you all the way back, which is helpful but wasn't ultimately useful to me except for a couple things.

## `variables` Scope and `this` Scope ##

Until now, I had known about `this` scope, and I've used it for my object properties. However, I also knew that these properties were public for code instantiating my object. The solution for private variables, I thought, was to wrap the value in a `get` method and return the value static.

Now I know that the `variables` scope (which I actually thought was an antiquated `local` scope) is used to make properties private and the `this` scope was used to make properties public.

## `init` Method Instantiation ##

This wasn't mentioned in the book specifically, but I did some experimentation to figure it out. Essentially, if you use the `new` keyword in CF9 when instantiating a CFC as an object, then it automatically calls your `init` method. All other methods of instantiation require manually calls to `init`.

