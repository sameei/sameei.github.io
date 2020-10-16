# Design : Functional Programin

## Questions
- What's the value of postponing side effect? Why IO Monad?
  - ["IO Foo" is a receipe to get "Foo"][https://stackoverflow.com/questions/4063778/in-what-sense-is-the-io-monad-pure]
    - If I have 'f = X => IO Foo', isn't my X a recipe itself!
- [What's the value of IO Moand?](https://softwareengineering.stackexchange.com/questions/412100/whats-the-value-of-io-monad) : Returning a none-pure function, as naming that un-evaluated value, and delaying the side-effect, is not the value which would compromise the usage. The other things which one of the answers mentioned, is that in this case you can evalute your recipe in different schedule; In other words in abstraction provide the feature for you to call it with other in serial or in parallel. (That's just a function); The down side is that you have a code base harder for general to understand, and also harder to debug, as you don't have the stack-calls.
