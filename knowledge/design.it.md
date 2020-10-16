
# Design It 

## Software Architecture : How are they?
- They define problems from an Engineering perspective: purposes (functional), qualities(non-functional)
- Keep an eye on the design constraint
- Define componentns (technical), and contect-bounds (business) and how they connect/affect to each other
- Keep the big-picture & rich-picture updated, conprehensive, and working, and conveyable
- Find trade-offs and decide on them (balance between cost and outcome)
  - Manage technical debt
  - Architects make technical-debt visible, and help stack-holders decide on them
- Improve team members, do HR; be a leader
- Knows Stackholders and what they want (primary business goals)
- Knows about the whole solution, technologies, biggest risks 
- What they do?
  - Turn a big problem into smaller & mangable problems
  - Shows people how to work together
  - Provide Vocabulary for talking about complex ideas

## Basics
### Essential Structures & Elements
- Design Time Entities & Their Realtionships
		- Such as `Class`, `Package`, `Store Procedure`, `DB`, `Config`, etc.
		- They `USE`, or `DEPEND ON` each other
		- We name them as `Module`
	- Runtime Artifacts & Their Relationships
		- Such as `Connection`, `Port`, `IP`, `Thread`, `Process`, `Task`, `Query`, etc.
		- They `RUN`, `CONNECT`, `CALL`, `RETURN`, `PUBLISH`, `SUBSCRIBE`, `RECIEVE` to/from/on each other
		- We name them as `Component & Connector`
	- Resources we use to form `Module`s and `C&C`s to acheive goals
		- Such as `Server`, `Sensor`, `Developer`, `Team`, `Load Balancer`, `Person`, `Docker Container`, ...
		- They can be `Used to run`, `Be responsible`, `Develop`, `Pay(ed) for`, etc.
		- We name them as `Allocation`
- Example of Essential Structures/Elements and how they a are combined together
	- We allocate a `Team`(allocation) to deliver an `Microserice`(module)
	- We run the `Microserice`(module -> component)
	- We implement a `Config` for our `DB`, and deploy it (component; deployed db)
### What is Design about : Four Principle
- Human rule : all design is social in nature; design for Humans. Empathizing with the humans who directly and indirectly interact with the architecture makes us a better desiger, communicator, and leader.
- Ambiguity rule : Preserve ambiguity; Ambiguity in engineering is dangerous, but before soldifying a design decision, we can use ambiguity to keep options open.
- Redesign rule : reuse adjustable patterns; you are not the first person encountering this problem.
	- Tangibility : Make ideas tangile to faciliate communication; Draw it, create MVPs/Prototypes, create relatable meaphors. Make things tangle for others (stackholders, users, team-members); remember the human rule.
### A Design Mindset
- Design Thinking
	- Understand : Seek information, understand assumptions and goals
	- Explor : Brainstorming, Search, Read.
	- Make : Make it real and tangible : documents, diagrams, MVPs, etc.
	- Evaluate : See whether you have meet the requirements (from Understanding) or not. And how this could be improved (Explore)
- Think, Do, Check : A design approach with a tight feedback loop
### A Plan for Design Phase / Project
### What you need to focus on it
- Risks (Constraint, Achieveablity, Costs, ...)
- Knowledge (Transferable)
- Meeting Functional & Non-Functional Requirements
- Iteration of Making & Evaluating

## Understanding
- We should understand why we are here, what is the goal, and how it will affect the people/env
- Resources : What , FromWhom/Where, How
	- Stakholders : Finding key stakholders in each project is very important; the first risk in each project is not be able to know key stakholders.
	- People who will be affected by this Software (They are more important, as they are the real users of our system)
- Stakholders know what they want, but People know who (in what quality) they want it.
- Sessions & Conversations are the best place to find information/data
- `Language/Terminology` which will be used through the project/session is important; if you can't descirbe it or recieve it from, you can't understand the context and goals of the project.
- The input should be the people/stakholders/env, and the output should be : ASD : Architecturaly Significant Requirements
- Express the stackholder's need as a measurable outcome; you have the deliver that (functional requirement)
- Business goals also seed the conversation about quiality attributes, trade-offs, and technical debt
- Considerations
	- Human language is messy, complicated, and full of culturally loaded messages
	- Many stackholders find it difficult to articulate their needs as measurable statements
- Language, Terminology; Design a Vocabulary to let you talk about things
	

## Language, Terminology, Ubiquitous Language, etc. (Understanding)
- You can not convey what you can't name it
- Use names as a litmus test to determine how well you understand the concepts in the architecture
- Terminology mismatch is a common source of confusion when moving from architectural abstractions to
- Naming Stages (: Example)
	- Missing : The thing that does the thing
	- Nonesense : Canberry
	- Honest and Complete: Job Starter Process
	- Does the Right Thing : Data Transformation Job Runner
	- Intent : Data Preparer
	- Domain Abstraction : Data Preparation Agent

## Participant in a Project (Understanding)
- Don't remember, design is social activity
- Stakholders
- People which will be affected by this software system.
- Team members who will develop and maintain the project
- Find the right people to talk (stackholders are not the final users of the system; find the users who would be affected by your design)
- Create a Stackholder Map ???

## Architecturally Significant Requirements (Understanding)
- Start with : Who, What, and Why
	- Who is affected by the software system
	- Why they care
	- What the requirements are (from different people perspective)
- Categories of Requirements
	- Constraints : Unchangeable design decision, usually given, sometime chosen
	- Quality Attributes : Externally visit properties that characterise how the system operats in a specific context
	- Influential Functional Requirements : Features and functions that reqiuire special attention in  the architecture (architecture killers)
	- Other Influences : Time, Knowledge, Experience, Skills, Office politics, ...
- Limit design optiona with Constraints
	- Ex: Programin language, team members that you have, budget, delivery time, integration with other systems, ...
- The early made decisions will become the constrains in future (if project doesn't fail till then)
- Quality Attributes
	- "A quality attribute is any externally visible characteristic by which stakeholders judge a software system’s goodness." : Scalability, Availablitly, Maintainability, Testability, etc.
	- "When you choose an architectural structure, you are choosing the quality attributes you want to be promoted in the software system."
	- Categories of QA:
		- Design time: Modifiablity, Maintainability, Reusability, Testability, Buildabitlity (TimeToMarket)
		- Runtime : Availability, Reliability, Performance, Scalability, Security, Easy Operation
		- Conceptual: Managability, Supportability, Simplicity, Teachability
- Every architecture decision promotes or inhibits at least one quality attribute
- Promote desired quality attributes, (see what you promote with every decision)
- Trade one quality attribute for another by choosing a structure that favors that one
- Capture QualityAttributes as Scenarios : To provide unambiguous description (IMPORTANT)
- Constraints are non-negiotiable, QualityAttributes are trade-offs, ...
- Sample ASR Workbook Outline:
```
  - Purpose and Scope
  - Intended Audience
  - Business Context
    - Stakholders
    - Business Goals
  - Architecturally Significant Requirements
  - Technical Constraint
  - Business Constrains
  - Quality Attribute Requirements
    - Top Scenarios
  - Influential Functional Requirements
    - Top Users or User Personas
    - Use Cases or User Stories
  - Appendix A : Glossary
  - Appendix B : Quality Attributes Taxonomy
```

## Sessions (Understanding, Exploring, Evaluting, ...)
- Prepare : do research to understand the problem you're going to explore
  - also : choose goals and decide whom to invite
- Kick-off : describe the workshop goals and problems context to the group
- Create : make models, draw sketches, build protoypes (a time-boned activity)
- Share : present / convery what you have understood
- Critique : give feedbacks
- Iterate : Repeat from Create to Critique, till you go out of time, or you reach the goal
- Follow-up : decide on next step for the pormising ideas, risks, questions
- Conflict defines the boundaries of exploration and highlights important concepts.
- Who is slient? Why?
- Set expectations from the Start

- Faciliate Decision Making : Decide / Plan together :) More minds, better result, probably

## Risks (Understanding, Exploring, Evaluating)
- Let risk be your guid : evaluate risks, and if they are potential, try to reduce them
- Risk is something bad which might happen in future; if it's already happened, it's a problem.
- If you can pick a condition and consequence that captures the essence of your bad feeling, then we can use that information to guide our design activities : <Condition>; might <Consequence>
- Condition : a new burito restaurant opened across the street from my office
- Consequence: Teammates might get sick eating too many burritos.
- How to address Risk C&C:
	- Reduce the probablity : Hire catering at work
	- Reduce the impact : Keep a supply of antacids in the office
	- Push out the time frame of the risk : Schedule meeting at lunchso people can eat burritos only for dinner
	- Remove the condition : Move the office to a new location
	- Accept it an do nothing : We'll deal with it when it's a problem
- "Risks are the GPS for our design process. They tell us where we are, where we’re going, and how much we have left to design." (GOOD)
- "reduce technical risks to the point where architecture is no longer the biggest source of risk in the system." (GOOD)
- Software deisng is about making decision under uncertainity : acceptable trade-offs

## Make it Tangible : Doc & KT
- How will you show Quality Attributes in Doc/Diagrams
- Label components with their charasteristics : stateless, search-index, ....
- Mapping Views ???
- Work assigments, and deployment ???
- Architecture Description Language : ADLs ???
- Choos right medium and vocabulary/language/format for documentation
- Which architecture description approach should i use
```
                              Difficult to Change
                                        ^
                Formal (go here only    |   Waste of time
                when it's required      |   (avoid this)
Easy to Share  <------------------------+----------------------> Difficult to Share
                Communal                |   Tribal
                evolve to this          |   Start here
                                        |
                                  Easy to Change
```

- All traditional architecture descriptions include the same basic parts:
	- Introductions and preamble information:
	- the title page, update notes, signature page, table of contents, a list of figures, licensing and legal boilerplate, ... (anything that a formal document needs)
	- Overview and introductions of SAD : Describe th epurpose of the document, method used to organise it.
	- Context View : Overview of the system, and where it fits in (how it connects to others, and what it does)
	- Summary of stakholders, business goals, ASRs : Architecture Significant Requirements
	- Relevant Views :  ???
	- Risks, Open Questions, Future Works
	- Appendices : Vocab, Terminology, ...
- **Architecture Decision Records** : Record every design decision

## Make it Tangible : Prototype

## Patterns
- For differnet things you can Patterns: Team, Org, C&C, Modules, Allocations, ...
- You should be able to compare patterns (e. use cost/benefit table and evaluate them)
- You should be able to explore for more patterns
- List of Patterns
	- Layers
		- promotes: decreased coupling between layers (really? how a change -in function signature- will affect others?) and higher cohesion, which promotes maintainability (I doubt it)
		- Concerns : over abstraction will harm performance; leaky abstractions
	- Service Oriented
		- Concerns: distributed system challenges; right context-bound
	- Shared Data
		- simple to implement, prone to abuse
		- Promotes reliability via data  consistency, security, and privacy!
		- Concerns : availability,
	- Centre of Competence
		- "In the center of competence pattern , a team of experts is charged with defining patterns, establishing best practices, developing support tools, and providing education for a subset of the architecture."
		- Not deliver, but help other to make better decisions
	- Big Ball of Mud
		- Promotes short-tem development seepd at the cost of long term design integrity.

## Evaluate
- Quality charasteristics of a design
	- `Flexibility` : A software system’s architecture provides the structure within which change is possible.
	- `Cost` : Of Impl/Runtime/etc.
- A design should be well documented/conveyed to be able to evaluated
- Created a cost estimation model. The model demonstrated pros and cons of different design options to stakeholders. Pushed out the risk’s time frame by changing backlog priorities.
- Evaluate a design decision
	- ?
- Test the design, with draws, with prototypes, ...; Make something to evaluate your thinking
- Summarise the result of an experiment in a presentation or whitepaper
- Use tables and rating to rate QualityAttributes (you can't do this for Constraints), and base on that see what's more important and how your design supports that. 
- You should be able to
	- tell the importance of the each QA's effect on the design, and show/prove it
	- They should be measurable,
	- Be precise and unambiguous
- Review the design with team members: more eyes, better; fresh eyes, even better.
- The relation of the review-lenght and evaluation:
	- Deep evaluation : might take days
	- Targeted Evalution : Evalute specific things
	- Quick checks : even in minutes
- Architectural Issues Rainbow
	- Risk [RED]
	- Unkown [Orange]
	- Problems [Yellow]
	- Gaps in Understanding [Dark Green]
		- When you zig and your team zags there is a gap in understanding.
		- Gaps in understanding arise when what stakeholders think they know about the architecture doesn’t match the current design.
		- In rapidly evolving architectures, gaps can arise quickly and without warning.
	- Erosion ? [Dark Blue]
		- The implemented system almost never turns out the way we imagined it. This gap between the designed architecture and the as-built architecture is called architectural erosion , sometimes called architectural drift or architectural rot .
		- Architectural erosion can be addressed by paying attention to the little details—in code or documentation—on a regular basis.
	- Contextual Drift [Violet]
		- Contextual drift happens any time the business drivers or context driving our decisions changes after we’ve made a design decision.
	
## Estimation, Timing, etc.
- How much time will you spend on the design? Would you continue that till you reduce all risks? Or would you compromise potential quiality growth and certainity with soonner delivery?
- Find `Sweet spot` of you design/dev journay



## Rule of Thumbs & etc.
- Smaller things are easier to reason about
- Being about to convey a complexity/problem, is the first step to handle it correctly
- Ambiguity in engineering is dangerous
- Sometime defering the decisions which should be made, can be helpful
- A Software system is never finished; it's only released
- Iteration and Feedback is the key; iterate quickly
- Architecture/Strategy is a long-term things. Focus on reducing risks
- Faling fast means learning fast
- Design sweet spot: How much to design up from
- Let risk be your guid : evaluate risks, and if they are potential, try to reduce them
- Even if the env doesn't change, our understanding of that will change
- Right time to make a decision :
  - Does a lack of a decision prevent foward progress?
  - Does the decision resolve a problem that cannot wait?
  - Does the decision create more optionas or new oppotrunities?
  - Does delay the decision introduce significant more risk?
  - Do I understand and accept the implications of the decision?
  - Do I have a clear rationale for why I'm making this decision now?
  - Do I have the time to undo this decision if it's wrong? Can I afford to make a mistake?
- maintainability. Architecture patterns define solutions for a variety of quality attributes scenarios—design time, runtime, and conceptual—and often deal with multiple components of a software system. The scope is broader in an architecture pattern regarding both the quality attributes and the granularity of abstractions in play.
- one person’s architecture might be another person’s detailed design.
- Patterns are usefull, because:
  - They are practiced; their pros and cons are known
  - They are named things which make it easier to communicate
- If you are fighting the framework, it means that needs has changed, or you tool wasn't a good choice.
- Naming is a design tool; Good naming is a process, not a single step.
- The names we choose reflects how well we understand what we're designing. As our understanding improves, so too do the name we give the concepts.
- Conway's Law : How your team is organised and prefers to collaborate influences the architecture
- The Decision Matrix is handy for summarising trade-offs
- If a design decision is easy to change later, then it is no longer an architectural concern.
- There are many ways to move design decisions out of the architecture, including pluggable architectures, external configuration, self-describing
- What would you use to document the design? share that with team members.
- Time line : describe the key design milestone within the project schedule.
- Document top risks
