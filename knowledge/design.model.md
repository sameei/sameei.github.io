# Design : Model

## Domain Model

## Anaemic Domain Model 
- The `anaemic` term has being used to describe the quality of a designed **designed model** to solve a problem. But wath it really means, wasn't that much straight forward to me to grasp; It seems that this adjective has been used in two different ways:
  -  As a model that the `Behaviour`s are excluded from `Data` values and the model is relying on `Transaction Script`s to handle all business logic works, contracted with `Rich Data Model` which have no or small `Service Layer`. This describtion is tightly coupled with `OOP` paradigm. Or,
  - As a model which the `Data` values are not defined in a way that can handle the problem/solution area comprehensively, without considering where the `Behaviours` has been put, and what paradigm has been used (`OOP`, or `FP`). For example if the `Data Model` doesn't express the Domain clearly, (using ADT, GADT, Products & Sum types, and it's possible to define incorrect state using Data, and without considering Functions), that models has the `Anaemic` attribute.
- To me it seems the root of the problem is in the potentiality of instanciating values that are not consistent with the whole `State` of the application. The potentiality of being inconsistent/or violating integrity[1], and spreading the logic, which guarantees the consistency of the system, in different functions! So maybe we need composable functions and a better definition/guarantee of consistency for the application/code that we generate!
  - [1] : With an example I can express it more clearly: Thining of a `Person` class two attributes as `State`, and `Activeness`; `State`: `Alive` & `Dead`, `Activeness`: `High`, `Medium`, `Low`. By this model it's possible to define a Person as `Dead` and with `High` Activeness! The model which lets this happen, is volnurable to bad-data. The solution to this problem could be either have only one attribute to represent this (Activeness: High, Medium, Low, Dead), or letting depending the Activeness on the `State`, and let it have another value of None, or take null; in the second case the process/transaction-script/constructor should be used to prevent the bad-data usage.
- References:
  - [Martin Fowler definition](https://martinfowler.com/bliki/AnemicDomainModel.html)
  - [A well written article defending the patternn](https://blog.codecentric.de/en/2019/10/ddd-vs-anemic-domain-models/#comments)
  - [Justifying ADM with SOLID](https://blog.inf.ed.ac.uk/sapm/2014/02/04/the-anaemic-domain-model-is-no-anti-pattern-its-a-solid-design/)
  - [Comparing DDD -Rich Domain Model- vs. ADM](https://blog.pragmatists.com/domain-driven-design-vs-anemic-model-how-do-they-differ-ffdee9371a86)
  - [Wikipedia](https://en.wikipedia.org/wiki/Anemic_domain_model)
 - [Supporting 2nd describtion](https://softwareengineering.stackexchange.com/questions/317587/is-it-still-valid-to-speak-about-anemic-model-in-the-context-of-functional-progr)

