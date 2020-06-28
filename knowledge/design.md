
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

### Anaemic Domain Model

The `anaemic` term has being used to describe the quality of a designed **designed model** to solve a problem. But wath it really means, wasn't that much straight forward to me to grasp;

It seems that this adjective is describable in two different way:
 - As a model that the `Behaviour`s are excluded from `Data` values and the model is relying on `Transaction Script`s to handle all business logic works, contracted with `Rich Data Model` which have no or small `Service Layer`. This describtion is tightly coupled with `OOP` paradigm. Or,
 - As a model which the `Data` values are not defined in a way that can handle the problem/solution area comprehensively, without considering where the `Behaviours` has been put, and what paradigm has been used (`OOP`, or `FP`)

To me it seems the root of the problem is in the potentiality of instanciating values that are not consistent with the whole `State` of the application. The potentiality of being inconsistent, and spreading the logic, which guarantees the consistency of the system, in different functions! So maybe we need composable functions and a better definition/guarantee of consistency for the application/code that we generate!

Example: If the validation, which is a function needed to be examined on new instances, is implemented separated from the data values, it'll let the developer to instantiate the instance with whatever values.




References
 - [Martin Fowler definition](https://martinfowler.com/bliki/AnemicDomainModel.html)
  - [A well written article defending the patternn](https://blog.codecentric.de/en/2019/10/ddd-vs-anemic-domain-models/#comments)
  - [Justifying ADM with SOLID](https://blog.inf.ed.ac.uk/sapm/2014/02/04/the-anaemic-domain-model-is-no-anti-pattern-its-a-solid-design/)
  - [Comparing DDD -Rich Domain Model- vs. ADM](https://blog.pragmatists.com/domain-driven-design-vs-anemic-model-how-do-they-differ-ffdee9371a86)
  - [Wikipedia](https://en.wikipedia.org/wiki/Anemic_domain_model)
 - [Supporting 2nd describtion](https://softwareengineering.stackexchange.com/questions/317587/is-it-still-valid-to-speak-about-anemic-model-in-the-context-of-functional-progr)

### Notes
##### `Reinventing the Transaction Script - Scott Wlaschin`
[Youtube](https://www.youtube.com/watch?v=USSkidmaS6w)
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

