# Lesson 4. Prompt-as-interface

*Agentics field guide, lesson 4 of 11. Prerequisite: lesson 2. Feeds the skills and agents
one-liners and lesson 9 (route advertisements). No diagram, because the concept is contractual, not
spatial.*

## Start where you live

You've written ten thousand config files, and every one of them had a property so basic you never
named it: **the parser doesn't improvise.** An ini file is read by code that either matches your
syntax or throws. Misconfigure it and you get an error, or at worst a precisely wrong behavior you
can trace to a line. The file means exactly what the parser says it means: nothing more, and
nothing imaginative.

You've also written the other kind of document (runbooks, wiki pages, handover notes) where the
reader is a person who fills gaps with judgment. You held those to a different standard: you
wrote them for the 2 a.m. on-call engineer who's never seen this system, because you knew a vague
sentence would be *interpreted*, and interpreted wrong.

Here's the lesson in one move: in an agentic estate, **everything is the second kind of document,
including the things that look like the first kind.**

## The mechanism: an interface consumed by inference

Every prompt, agent charter, skill description, and tool doc in the estate is read by a model that
does not parse; it *infers*. It builds a working understanding of what you probably meant and
acts on that. Three consequences, each with a design response:

1. **There is no syntax error.** A contradictory or ambiguous instruction never throws. The model
   resolves the ambiguity silently, plausibly, confidently, and not necessarily the way you
   meant. Your first hint is behavior, possibly weeks later. *Response:* review instructions the
   way you review firewall rules: for what they permit an imaginative reader to conclude, not
   just for what they say.
2. **Every word load-bears, including the ones you didn't think about.** An offhand example
   becomes a pattern the model generalizes. A tone choice ("aggressively clean up temp files")
   becomes a behavior parameter. The interface surface is the *entire text*, not the parts you
   considered normative. *Response:* write charters like contracts for a smart stranger. State
   scope, state limits, state what to do when unsure, and delete anything you don't mean.
3. **Interfaces drift without changing.** The same instruction file behaves differently under a
   new model version or in a different context load. The text is constant; the reader isn't.
   *Response:* version instruction files like code, with reviewed diffs, history and rollback, and
   test them like interfaces: known inputs, expected behaviors, checked on a schedule (lesson 5
   gives this its proper name).

Anthropic has a name for this craft applied to tool definitions: ACI, the agent-computer
interface. The phrase generalizes: you are writing interfaces for a reader that infers, so
interface discipline (spec, version, test) applies to *prose*.

## Spring the break

**Your ini files never got "interpreted creatively." Prompts are.** That's the bite, and notice
where it lands: this is the one place in the whole estate where the *software developer's*
discipline genuinely enters, not because you're writing programs, but because you're writing
contracts that must survive a clever counterparty. The estate's config is code now, in the one
sense that matters: it needs review, versioning, and tests, because its consumer will do
*something* with whatever you wrote, and "something" is not bounded by your intent.

The practical standard is old and you already hold it: write every charter for the 2 a.m.
stranger. If a capable colleague who's never met you could read this document cold and do the
right thing, including the right thing when the situation is one you didn't foresee ("when
unsure, stop and ask"), it's ready. If it relies on shared context that lives in your head,
that gap is exactly where the model will improvise.

## What you'd say in the room

> "Every prompt and charter is an interface consumed by a reader that infers, so there are no
> syntax errors, only silent misreadings. So instruction files get code treatment: written like
> contracts, reviewed for what they permit rather than what they say, versioned, and tested. If
> a doc relies on what's in my head, that's the exact spot the model will fill in for itself."

## The bridge to your own deployment

Take your longest-lived instruction file and red-team it as a language lawyer: for each sentence,
ask *what else could a smart, literal-minded, eager stranger take this to authorize?* You'll find
at least one sentence you'd never let ship as a firewall rule: an "always," a "never," or an
example that teaches a pattern you don't want generalized. Fix those, add the missing "when
unsure, do X" clause (most files lack one, and it's the single highest-value line you can add),
then commit the file to version control if it isn't already. From today, its diffs get read like
config diffs, because that's what they are.

## The row, handed back

**Teach:** every charter, description, and doc is an interface consumed by a reader that infers,
so write it as a contract for a smart stranger. **Bite:** your ini files were never "interpreted
creatively"; prompts are, so they get versioned like code and tested like interfaces.

Lesson 9 will sharpen one special case of this, descriptions that don't just instruct but
*attract traffic*, and lesson 5, next, builds the testing half of the discipline.
