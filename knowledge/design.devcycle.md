# Design : Context

## Non Functional Requirements
- Not a process/task defined by business (Functional Requirements), but attributes which affects them, such as:
  - Usability
  - Reliablity
  - Interoperability
  - Scalability
  - Security
  - Performance : Throghput (bath, non-realtime) or Latency (realtime)
- The mentioned attributes/concerns was only considering TechnicalPerspective; here comes some NonTechnical objectives:
  - Time to market
  - Cost of Runtime
  - Cost of Maintenance
  - Cost of Development & Delivery
- [C2](https://wiki.c2.com/?NonFunctionalRequirements):
  - "Functional Requirements are either met or not met. Non-functional requirements tend to be things that you can measure."
  - "It helps if you can translate each one into some measurable property of the final product otherwise the client can always claim that the product is not good enough."
  - "It helps a lot if you know what is the ``most critical`` non-functional requirement because this can dominate the best choice of development technique and internal design. For example: If reliability is critical because a bug will kill a lot of people then you might use more peer review, independent validation, multi-version, etc. If time to market is the critical thing, then you might do something quite different."
  - "Unfortunately, the criticality of requirements vary. For example, as reliability increases, performance or cost may overtake it as the most critical requirement."
  - "To carry the "balance" analogy further, hold a broom on end in your open hand. What is the "most critical" adjustment?"
  - "I tend to call the Non-Functional requirements qualities and functions/user-stories/use-cases purposes. I see them as two out of five types of constraint that act while developing software. the other three being ..." (DickBotting / Richard Botting)
- "I think these sorts of nonfunctional requirements are only strictly nonfunctional if there are not rigidly defined areas of success and failure, or if the requirement is a subjective evaluation, such as usability."
  - "All requirements that seem to be qualitative instead of quantitative can still be expressed as hard numbers if the client and developers are willing to work together to establish measurements."
  - "This is not quite true. You can provide measurements as surrogates for the quality you are trying to improve, but do not forget that the measurement is only a very small piece of the desired quality. It is too easy to destroy the system while improving the measure."
  - "BenKovitz's PracticalSoftwareRequirements has some very useful sections on different types of requirements, what they're useful for, and how to represent them in text. One helpful suggestion is that, if you can't specify how the product can behave ("easy to use" -- huh?), you can still usually describe the people and things around the product. ... One helpful suggestion is that, if you can't specify how the product can behave ("easy to use" -- huh?), you can still usually describe the people and things around the product."
- "Concept Engineering : ... The focus of this approach was to rely less on numeric requirements and instead focus on the operational environment. Instead of using requirements such as "Open a new page in 8 seconds or less", make use of descriptive statements such as "I have a long line of people who I need to process before lunch. ... I have become convinced that the true factors that decide user acceptance are subjective, and relying on numeric surrogates masks the truth." (In other words, don't let clients first expression misguide you and try to understand their needs/root-cause; Numbers should be used to put hard-lines, for legislation and conflict resolving probably; to say that someting is done in a way that legislation/law supports you) 
  - "I'm not certain there's any real break down here between FunctionalRequirements and NonFunctionalRequirements. I assume that requirements like 'must be coded in Java' is a NonFunctionalRequirement, but I don't see how that's captured in any definition here. Other NonFunctionalRequirements not capture here are 'must follow this particular coding standard', 'must have 1000 reasonable unit tests'." -- RandyCharlesMorin
  - [UserAntiStories](https://wiki.c2.com/?UserAntiStories) : UserAntiStories (if they exist) are another kind of non-functional requirement. A UserAntiStory describes something that must not happen whereas a function describes something that must be done.


## User Story
- [UserStory]()
- [UserAntiStory](https://wiki.c2.com/?UserAntiStories)
  - "User Anti-stories are statements made by users, that the thing that you produce should not do something."
- [Misuse Story](https://wiki.c2.com/?MisuseStory)
  - "A MisuseStory spells out what should be done if a user attempts to get into a UserStory but does something unexpected."

## Estimation
- Story Point : 1, 2, 3, 5, 8, 13, 21

## etc.
- [Schedule Chicke](https://wiki.c2.com/?ScheduleChicken)
- "While some customers may indicate that everything is critical at the start of a project : 'IwantaPony'; But RealWorldSuccess requires balancing what is desired with what is possible."
- [Critical Success Factor](https://wiki.c2.com/?CriticalSuccessFactor) : "are those objectives that must absolutely be met, even after all tradeoffs, customer priorities, and qualified successes have been determined."
- [Practical Software Requirements; a book](https://wiki.c2.com/?PracticalSoftwareRequirements)
- [Teach Me To Smoke](https://wiki.c2.com/?TeachMeToSmoke)


## Software Metrics
- [C2: Software Metrics](https://wiki.c2.com/?SoftwareMetrics)
- [Design Velocity](https://wiki.c2.com/?DesignVelocity)
