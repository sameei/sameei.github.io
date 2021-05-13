# Design : Abstract and Complexity

## Categories of Complexity
- The nature of the Comlexity : Essential vs. Accidental
- In the process : Analyse, Design, Impl, Operation, Maintenance, ...
- ?

## Essential & Accidental Complexity
- [Accidental and Essential Complexity — Programming Word of the Day](https://medium.com/background-thread/accidental-and-essential-complexity-programming-word-of-the-day-b4db4d2600d4)
  - "Jon Harrop wrote about a project that took over 40 developers almost 15 years to write in C++. He managed to write the whole thing himself in about 3 months in F#. And his version worked better."
  - "Fred Brooks noticed this in 1986, and wrote about it in his amazing paper No Silver Bullet. He calls this inherent complexity of a problem essential complexity."
  - "Essential complexity is how hard something is to do, regardless of how experienced you are, what tools you use or what new and flashy architecture pattern you used to solve the problem."
  - "Essential complexity is a property of the problem you are trying to solve."
  - "While some complexity is inherent to the problem, we also bring our own complexity while writing the program. This is called accidental complexity."
  - "That’s also why it’s important to have juniors in your team. They have no bias, so their solutions are often better than what any senior could have done." (Fresh eyes, less Context; this is the place where ignorace is valueable; the less you know, the more fresh you are)
  - "But this concept doesn’t just have an impact on your work. It also explains a phenomenon in the industry as a whole. See, computers got much, much faster during the last 20 years, but programming didn’t. ... The reason for this is, Brooks argues, that we reduced accidental complexity so much that all we have left is the essential one. This is why we won’t see 10x improvements in the near future. ... Brooks said they were barking at the wrong tree. If we want to get better as an industry, we need to start being more systematical and thinking up front." (In other words, the hardware is optimised as it can be, but the real problem, our thinking and designing skills, is something which we still need to focus on it! this is the essential complexity in software industry with which we have to deal)
- [C2: Accidental Complexity] https://wiki.c2.com/?AccidentalComplexity
  - "It [Accidental Complexity] stems from the complex code resulting from ugly designed interfaces of system routines."
  - "Ugly interface design is a trend that I observe with the current Java platform processes. Many people contribute new ideas and functionality in the form of specifications and packages without being the victims of their own work."
  - "I believe that GreatAbstraction and StableInterface stem from the fact, that their creators are also the most important users of these abstractions.(GreatAbstractions come from creators who 'eat their own DogFood'.)"
  - [Accidental Difficulty](https://wiki.c2.com/?AccidentalDifficulty) : "From FredBrooks' NoSilverBullet. Accidental difficulty in programming arises from the tools and processes we use. It's not inherent in the nature of programming itself. Accidental difficulty can be removed by improving tools and processes."
  - "Brooks later said that maybe the name "IncidentalDifficulty" would have caused fewer misunderstandings."
  - [Essential Difficulty](https://wiki.c2.com/?EssentialDifficulty) : "Essential difficulty in programming is inherent in the nature of programming itself, and may not be reduced or removed.", From NoBulletSilver
  - "Might Fred Brooks have been inspired by MrAristotle's idea of [accidental properties](http://www.wikipedia.org/wiki/Accidental_properties)?"; from wikipedia : "An accident, in philosophy, is an attribute that may or may not belong to a subject, without affecting its essence."


## No Silver Bullet
- [Paper](http://worrydream.com/refs/Brooks-NoSilverBullet.pdf)
- [On C2](https://wiki.c2.com/?NoSilverBullet)
- [Local link](./Brooks-NoSliverBullet.pdf) (not working!)

## Abstraction
- [C2 : Great Abstraction](https://wiki.c2.com/?GreatAbstraction)
  - It serves the needs of the time but also of the future (30 yeas and growing is not bad)
  - It is easy to use by client code (no exceptions, simple return values, well understood, simple state model)
  - it hides implementation details to client code allowing for future changes of implementation without affecting clients
  - it serves a multitude of different clients so well, that they are happy to use it
  - it provides a StableInterface that allows many client software to be developed and deployed (the signature of these calls haven't changed since)
  - its implementation provides extensibility hooks
  - outside configurability (ThirdPartyBinding), i.e. a third party can configure a specific client to use a specific incarnation of the abstraction without requiring both to know about each other except for the interface shared.
  - ...

- [C2 : Stable Interface](https://wiki.c2.com/?StableInterface)
  - it is supported by a GreatAbstraction
  - it incorporates DesignForSlippage (???)
  - easy to use
  - it avoids too strong typing (TypeSafeInterfacesConsideredHarmful) (???)
  - it provides good default behavior, even if it is misused
  - it doesn't leak implementation details, such as data structures
  - it can serve implementations and clients far beyond its initial intention
  - everybody understands it and its limitations
  - it was invented by its users and used by its inventors
  - it is usually a result of rigorous refactoring or designed by very great practical thinkers that are thinking practitioners
  - it lacks any really bad features, so no-one feels driven to fix them
  - it lacks any really obvious gaps or missing features, so no-one feels driven to add them
  - it follows the LawOfDemeter 
  - Tongue in cheek answers:
    - It's too hard to change
    - Nobody's using it, so no need to change
    - It is not permitted to change, everyone codes work arounds to use it
  - A Question :
    - But is a stable interface always worth the cost?
  - Another Question:
    - What's the cost of StableInterface
  - Note: I think that a StableInterface is a synergistic result of several patterns --NatPryce.
- [C2 : Law of Demeter](https://wiki.c2.com/?LawOfDemeter)
  - "Only talk to your immediate friends."
  - [Paper : Object-Oriented Programming : An Objective Sense of Style](https://www2.ccs.neu.edu/research/demeter/papers/law-of-demeter/oopsla88-law-of-demeter.pdf)

