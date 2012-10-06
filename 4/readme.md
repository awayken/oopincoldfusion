# Inheritance and Object-Oriented Concepts #

While your extended objects will have all the inherent getters and setters as your base, it's still a good idea to call `super.init()` when your object's `init()` is called. This means having the same arguments in your `init()` as the base, which duplicates a little, but it's better for inspection and allows you to set unique defaults if you want to.

Apparently **super-component** is a thing.