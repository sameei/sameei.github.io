# Design : Code

## Functional Programin
- 

## Transaction Script
- [Reinventing the Transaction Script - Scott Wlaschin : Youtube](https://www.youtube.com/watch?v=USSkidmaS6w)
  - As in FP the Functions' types are more generalized, in comparision to Interfaces/Traits/Classes, They are more **composable**; He describes this while he's convying the composition using Lego.
  - "Because I'm over 40 I'll use Service, but if you are under 40, you can use Microservice term"
  - Http applications are just a big function from HttpRequest to HttpResponse
  - Algebriac Data Type = `And` and `Or` types; ≈ Composable Data Types
  - He uses F#
  - He claims that ADT is possible because in FP langs the Behaviour and Data definition are encouraged to be separated!!!
  - Workflow = Transaction = Story = Use-case = Function
  - Trigger -> \[Workflow\] => Events
  - Event Storming!
  - Services should "interact with each other", not "to be attached"
  - Code is the translation of the developers understanding of problem and solution and his capabilities
  - Agile is all about "Fast Experiment" / "Rapid Feedback"
  - DDD is about Shared Mental Model, which is going to be used in Code; In this way the DomainExpert will be easy understand the `domain code`. I think this is the reason why DDD evangelist care about DSLs.
  - Share Language in Code, Mind, Meeting, and Documentation
  - Domain Driven Design vs. Database Driven Design: In DBDD, the model also contains the fields for FK,JOIN functions, ...
  - A Pure DDD Model is **Persistence Ignorant**
  - Why "Bounded Context"?
    - "Context"
      - Specialized Knowledge
      - Some information out of context are confusing and unusable (!= clear * useful)
    - "Bounded"
      - To be "autonomous", so it can evolve independently: You can't run if your knee is attached to someone else.
      - Keep you focused; No scope creep
  - A BC is a set of related Workflows, which have something in common, such as terminology.
  - Transaction Script
    - Pros
      - Easy to Undestand
      - Focused: all code is relavent
    - Cons:
      - Hard to evolve
      - Hard to reuse
      - No Rich Domain Model
      - Hard to Test
  - Comparing OO vs. FP workflows: https://youtu.be/USSkidmaS6w?t=2372
  - In OOP (and also Actor model) arrows/relation can go in any direction, while in FP the in -> out relation is clear! that's why reactive have because such a great model (Data Flow). The Stream of data :)
  - [Cyclice Dependencies][https://youtu.be/USSkidmaS6w?t=2506]
  - FP-style TS are Oniion/Clean/Hexagonal Architecture
  - Change in a layerd design propagates change in all levels : [link](https://youtu.be/USSkidmaS6w?t=3046)
    - Code/Things that change together, should live together.
    - Vertical vs. Horizontal [link](https://youtu.be/USSkidmaS6w?t=3066)
  - On Testing
    - The SUT (System Under Test) should be a unit of business value
      - Test Transaction, Not Classes
    - Tests should apply to the boundaries of a system, not its internals
      - Test should be done at the transaction level
    - A "Unit" test means the test is isolated
      - That is, it produces no side effects and can be run in isolation
      - A unit is not a class!

