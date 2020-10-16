
### Important
- "Fast Experience" / "Rapid Feedback" from "Agile" #PROCESS #TEAM #BUSINESS
- "Shared Language " / "Shared Mental Model" from "DDD" #DESIGN #TEAM
- Fast Experiment" & "Rapid Feedback" will lead to "Fast Fail", if required! #PROCESS #DESIGN #BUSINESS
- Context Boundaries #DESIGN
- Consistency Boundaries; (Aggregates in DDD) #CAP
- Consistency Windows #CAP
- Availability #CAP
- Blast Radius Reduction #CAP
    - [Morning Paper][https://blog.acolyer.org/2020/03/04/millions-of-tiny-databases/]
    - [Usenix Entry][https://www.usenix.org/conference/nsdi20/presentation/brooker]
    - [Paper in Usenix][https://www.usenix.org/system/files/nsdi20-paper-brooker.pdf]
- Avoid Cylic Dependencies #CODE #PROCESS #BUSINESS #TEAM
- Segeration Principle : Don't force people to rely on things that they don't need/use #DESIGN #CODE #PROCESS
- You are master when you know why to follow a rule, an when to break it #PROCESS #DESIGN
- Code/Things that change together, should live together.
- When learning a new thing, get sure that it have a mind blowing value in it! learning a new accent of English is not going to add breakthrough values.


### Question
- What's the value of postponing side effect? Why IO Monad?
    - ["IO Foo" is a receipe to get "Foo"][https://stackoverflow.com/questions/4063778/in-what-sense-is-the-io-monad-pure]
        - If I have 'f = X => IO Foo', isn't my X a recipe itself! what's


### Notes

#### `Functional Core. Imperative Shell.`
[Youtube][https://www.youtube.com/watch?v=SH5-Si8hwv8]

#### `Four Distributed Systems Architectural Patterns by Tim Berglund`
[Youtube][https://www.youtube.com/watch?v=tpspO9K28PM]
 - From 2017
 - Hipness ≈ Maturity | Coolness
 - Flexibility ≈ What kinds of system could be designed in this way
 - Reference Architecture vs. Patterns/Ways
     - Modern 3-tier: Classic or Modern
         - Strengths
             - Rich frontend framework (scale,UX)
             - Hip, scalable middle tier
             - Basically infinitely scalable data tier
        - Weaknesses
            - State in the middle tier
        - Examples
            - Walmart
        - Overall Rating
            - Scalability: 4
            - Hipness: 2
            - Difficulty: 3
            - Flexibility: 5
    - Sharded
        - Strengths
            - Client isolation is easy (data & deployment) 
            - Known, simple technology
        - Weaknesses
            - Complexity
            - No comprehensive view of data (ETL)
            - Oversized shards (imbalanced)
        - Examples
            - Slack
        - Overal Rating
            - Scalability: 3
            - Hipness: 1
            - Difficulty: 4
            - Flexibility: 3
    - Lambda
        - http://softwareengineeringdaily.com/2016/08/19/apache-beam-with-frances-perry/
        - Messaging
        - Kafka
        - Strengths
            - Optimizes subsystems based on operational requirements (a batch and a streaming optimized for througput and latency)
            - Good at unbounded data
        - Weaknesses
            - Complexity to operate and maintain (write it twice)
            - No, seriously!
        - Examples
            - ?
        - Overall Rating
            - Scalability: 5
            - Hipness: 1
            - Difficulty: 5
            - Flexibility: 2
    - Streaming
        - Streaming
            - Integration is a first-class concern
            - Life is dynamic; databases are static
            - Tables are streams and streams are tables
            - Keep your services close, your computation closer
        - Integration
        - Database Abstraction
        - Stroing Data in Messages
            - Retention Policy? Don't be so hasty
            - Whole-hearted I/O performance
            - O(1) writes
            - Partioning, replication
            - Elastic escale
        - First class events
        - Streams API for Kafka
        - Overall Rating
            - Scalability: 5
            - Hipness: 5
            - Difficulty: 4
            - Flexibility: 5
 - A Sharded system is trying to hide the destributed/scalable nature of the application; If shared/dispatching is working good, and imbalanced situations are handled, it's fine.
 - Lambda is more kind of analytical framework, and is not usable as a generic framework.
 - In Streaming it's advices to put the computation and data close; locality is always advised if the location transparency is achieved/guaranted.

#### `Four Languages from Forty Years Ago - Scott Wlaschin`
[Youtube][https://www.youtube.com/watch?v=0fpDlAEQio4]
- Search: Worst is Better
- Search: Thinking Forth (FORTH a PL
- Learn a new language when it's mind blowing! there is no gain in learing a new accent of English, but learning a new language with a grammar and way of thinking is really usefull.
- Consistency => Predictability
- What can we learn from SQL?
    - Be predictable: use a consistent model
    - Expression based: means code is composable
    - Declarative interfaces: focus on exposing the what, not the how
    - Seperation of Concerns
    - Interactivity is important: You can play and experiment
- Prolog is about Facts & Rules; ~ is Delarative;
- Query language based on Prolog: Datalog.
- What can we learn from Prolog?
    - Be consistent & predictable (again)
    - Declarative (again)
    - Unification is very cool
        - Bi-directional queries
        - Ask both "is true?" and "what matches?"
    - Interactivity is important (again)
- ML: Meta Language; Impure functional language
- Type Ingerence; Immutable by default Non-null type by default; Structural equality by default;
- What can we learn from ML?
    - Expression-based (again)
    - Type inference
    - Make bad things harder
    - Paragmatic polymorphism (aka generics)
- Smalltalk; everything is an object;
- What can we learn from Smalltalk?
    - Consistent
    - Minimize syntax

#### `Functional architecture - The pits of success - Mark Seemann`
[Youtube][https://www.youtube.com/watch?v=US8QG9I1XW0]
- Your goal is not something to acheive; you need to be consistantly keep track of it.
- F# based talk :)
- Ports & Adapters
- Services, Entities, Value Objects
- Testability



### `GOTO 2019 • "Good Enough" Architecture • Stefan Tilkov`
[Youtube](https://www.youtube.com/watch?v=PzEox3szeRc)

### `Tagless Tutorial / Workshop`
[Youtube](https://www.youtube.com/watch?v=mkQLU7OzqYM)

### `Free Monad vs. Tagless Final`
[Youtube](https://www.youtube.com/watch?v=IhVdU4Xiz2U)



| Subject | Free Monad | Tagless |
| -------- | -------- | -------- |
| Program is ... | Data | Expression |
| Programs are build from | Constructors - ADTs | Functions |
| Programs are | Plain Values | Expressions Parameterize with by a type constructor F\[\_\] |
| Stack Safty ? | Stack Safe | Depends on the taget Monad; Future itself is Stack safe, so Monad\[Future\] is stack-safe |
| | Each operation is reified as a Value, or two | Can have less overhead, without creating intermediate objects |
| | Easy pattern matching for inspection and optimization | Pattern matching possible, but harder |
| Combining Multiple Ones | Using `Coproduct` and implicit `Inject` instance, some biolderplate | Using multiple algebras (traits only), less/no boilerplate | 

When to use Free Monad?
- Cross-cutting concerns: libraries, Slick(DBIO action)
- Libraries
- Passing values representing programs

When to use Tagless?
- Higher-level business concepts
- A large number of languages to combine

[Blog](https://softwaremill.com/free-tagless-compared-how-not-to-commit-to-monad-too-early/)
[Blog](https://softwaremill.com/free-monad-or-tagless-final-pres/)


### ???
- https://softwareengineering.stackexchange.com/questions/161568/critique-of-the-io-monad-being-viewed-as-a-state-monad-operating-on-the-world
- https://www.youtube.com/watch?v=mkQLU7OzqYM
- https://www.youtube.com/watch?v=Qg48XucSvlg
- https://www.youtube.com/watch?v=g_jP47HFpWA
- https://stackoverflow.com/questions/4063778/in-what-sense-is-the-io-monad-pure
- https://www.youtube.com/watch?v=t1e8gqXLbsU
- https://www.youtube.com/watch?v=6avJHaC3C2U
- *** https://www.youtube.com/watch?v=vtIzMaLkCaM
- *** https://www.youtube.com/watch?v=PzEox3szeRc
- *** https://typelevel.org/cats-effect/datatypes/io.html
- *** https://kubuszok.com/2019/io-monad-which-why-and-how/
- *** https://typelevel.org/cats/datatypes/freemonad.html
- *** https://typelevel.org/cats/typeclasses/monad.html
- *** 
