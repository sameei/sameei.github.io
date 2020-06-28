#### Anaemic Domain Model

The `anaemic` term has being used to describe the quality of a designed **designed model** to solve a problem. But wath it really means, wasn't that much straight forward to me to grasp;

It seems that this adjective is describable in two different way:
 - As a model that the `Behaviour`s are excluded from `Data` values and the model is relying on `Transaction Script`s to handle all business logic works, contracted with `Rich Data Model` which have no or small `Service Layer`. This describtion is tightly coupled with `OOP` paradigm. Or,
 - As a model which the `Data` values are not defined in a way that can handle the problem/solution area comprehensively, without considering where the `Behaviours` has been put, and what paradigm has been used (`OOP`, or `FP`)

To me it sounds like that the root of the problem is in the potentiality of instanciating values that are not consistent with the whole `State` that application is in it.

Example: If the validation, which is a function needed to be examined on new instances, is implemented separated from the data values, it'll let the developer to instantiate the instance with whatever values.




References
 - [Martin Fowler definition](https://martinfowler.com/bliki/AnemicDomainModel.html)
  - [A well written article defending the patternn](https://blog.codecentric.de/en/2019/10/ddd-vs-anemic-domain-models/#comments)
  - [Justifying ADM with SOLID](https://blog.inf.ed.ac.uk/sapm/2014/02/04/the-anaemic-domain-model-is-no-anti-pattern-its-a-solid-design/)
 - [Supporting 2nd describtion](https://softwareengineering.stackexchange.com/questions/317587/is-it-still-valid-to-speak-about-anemic-model-in-the-context-of-functional-progr)
