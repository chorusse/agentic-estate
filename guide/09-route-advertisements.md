# Lesson 9. Route advertisements

*Agentics field guide, lesson 9 of 11. Prerequisites: lessons 4 and 8, plus the skills, agents,
and tools one-liners and the code-dispatch row (rows 5, 16, 17, 22). No diagram, because the
artifact of this lesson is a table, and the table is the point.*

## Start where you live

In dynamic routing, a router doesn't get told the whole network. It hears **advertisements**,
neighbors announcing "I can reach these prefixes," and builds its table from them. Two facts
about advertisements shaped years of your troubleshooting: *most-specific wins*, and *a bad
advertisement poisons routing at a distance.* An over-broad announcement, somebody leaking
a summary route or the classic fat-finger `/8`, doesn't just fail; it *attracts* traffic that
belonged elsewhere, silently, from everywhere, and the symptom shows up nowhere near the cause.

Now the recognition this lesson exists for: **your estate is already running dynamic routing, and
you've been writing the advertisements all along.**

## The mechanism: where the table actually lives

Recall the code-dispatch row (row 22): when routing is code, with a classifier returning a
label and a
`switch` picking the branch, the table is explicit and auditable. But much of an agentic estate
routes the *other* way: the model itself decides, mid-session, which skill to invoke, which
subagent to spawn, which tool to call. Model-chosen routing, the dynamic protocol. So where does
that protocol get its table?

From text you wrote:

1. **Skill trigger descriptions.** "Use when the user asks about X" *is a route entry*: it
   announces which traffic this skill can reach.
2. **Agent description fields.** "Handles multi-step research tasks" announces a reachable
   prefix of the task space.
3. **Tool docs.** Every tool description tells the model what traffic belongs on that tool.

The model reads the request, reads all the advertisements currently in scope, and matches, using its
own most-specific-wins, performed by inference (lesson 4: by a reader that infers, with no
syntax errors and no protocol spec). **Writing descriptions is writing the routing table.** There
is no other table for model-chosen routing. This is prompt-as-interface with a twist worth
separating: a charter instructs the actor that has *already* been chosen; a description decides
*whether it gets chosen at all.* Interface discipline governs quality after arrival;
advertisement discipline governs arrival.

Which means description-writing inherits routing's failure modes, not just prose's:

- **Over-broad advertisement:** "helps with code tasks" is a leaked summary route: it attracts
  traffic that belonged on more specific handlers, and the misdelivery surfaces far from the
  fat-fingered description.
- **Overlapping advertisements:** two skills both plausibly matching a request class means
  nondeterministic path selection, flapping in your terms, except silent.
- **Withdrawn-but-remembered routes:** a renamed or deleted skill whose old name still appears in
  other prompts and docs is a stale route entry pointing at a null interface.

## Spring the break

**An over-broad advertisement attracts traffic that belonged elsewhere, and nothing drops.** The
wrong skill *handles* the request, fluently (lesson 2's signature failure, now at the routing
layer). And the deeper bite: **the gaps only become visible when you design the table as a
table.** Advertisements accreted one at a time, a skill added here, an agent there, each
description written in isolation, produce exactly what accreted route entries produce: overlaps,
shadowed routes, and unannounced prefixes, none visible from any single entry.

So the discipline is the one you already trust: *no route entry outside the table.* Collect every
advertisement in the estate, every trigger phrase, description field and tool doc, into one page,
one row each: **traffic class → advertisement text → handler → tier/budget.** Then read it as a
routing table, asking the table questions: Which classes have no row? (Unannounced prefixes, and
that traffic goes... somewhere. Lesson 10 is about where.) Which rows overlap? (Tighten the
wording until most-specific-wins has a most-specific to find.) Which rows does the live estate
actually honor? (Advertisements are matched by inference, so the table gets an eval, lesson 5:
labeled requests, measured against where they *should* have routed.)

One page. It's the same page a network audit produces, and it finds the same three defects every
time.

## What you'd say in the room

> "Skill triggers, agent descriptions, and tool docs are route advertisements. The model builds
> its routing table from them by inference, most-specific wins. A vague description is a leaked
> summary route: it attracts traffic that belonged elsewhere and nothing drops. So we maintain
> the table *as* a table, every advertisement on one page against the traffic classes, checked
> for gaps and overlaps, with an eval telling us whether the live estate actually routes the way
> the page says."

## The bridge to your own deployment

Build the page. Pull every description field in your estate into one table against the traffic
classes from lesson 8's matrix, and grade each cell. In most estates the audit takes an hour and
finds all three classics: at least one skill whose description is broad enough to shadow two
others, at least one traffic class no advertisement covers, and at least one description written
as documentation ("this skill processes documents") rather than as a route entry ("use when the
user asks to summarize, compare, or extract from files"). Rewrite those as advertisements.
You're not describing the skill to a human reader; you're announcing a prefix to a router.

## The row, handed back

**Teach:** skill triggers, agent descriptions, and tool docs *are* your routing table, so writing
descriptions is writing route entries. **Bite:** an over-broad advertisement attracts traffic
that belonged elsewhere and nothing drops, and the gaps only become visible when you design the
table *as* a table.

One question left hanging, and it's the sharpest one: what happens to the traffic no
advertisement matches? On the wire, you know the answer: the default route, or an unreachable.
Here, both halves of that answer are broken. Next lesson.
