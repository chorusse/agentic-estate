# Drill sheet: blocks, drills, and done-tests

*Agentics field guide, study blocks. Five blocks, ordered by the chain. Every done-test is
declared before its drills, because if you can't measure it, it isn't a block. All drills run
on YOUR estate and YOUR traffic (method principle 4: real material over toy examples). A
"required phrase" must appear in your answer in substance, not verbatim.*

## Standing rules

- **Drill on the real thing.** Every artifact these drills produce, whether the audit, the
  matrix, the table or the eval, is a real design document for your actual deployment, not an
  exercise. Keep them; lesson 11 assembles them.
- **Stumble routing:** can't place a component on a plane → reread lessons 1–2. Caught yourself
  saying "it's in the instructions so it's handled" → lesson 2. "Load it just in case" → lesson 3.
  "Temperature 0 makes it deterministic" → the stubs page. Can't say where unknown traffic goes →
  lesson 10.
- **The one-liners are flashcard material.** The 13 owned rows of the anchor map drill as: given
  the anchor, produce the teach sentence and the bite. They appear in block 1's and block 5's
  done-tests.

## Block 1. The physics (lessons 1–3 + one-liner rows 4, 9–14)

**Done-tests (declared first):**
1. Given 10 named controls from your own estate, sort each onto policy or enforcement plane:
   10/10, under 2 minutes.
2. State the three foundation bites cold. Required phrases: *mostly complies* · *configured is not
   enforced* · *irrelevant context actively degrades*.
3. Your always-resident set is listed, and every line carries a verdict: *earns permanent
   attention* or *moved to on-demand*, with zero unexamined lines.
4. Flashcards: rows 4 and 9–14 (tiers, loading map, instruction files, hooks, permissions, index,
   recall): teach + bite from the anchor alone, 7/7.

**Drills:** Draw your deployment as a datacenter, ten minutes, memory only, then check against
reality and log what you forgot (what you forget is what you don't operate deliberately). Run the
prose-or-mechanism audit from lesson 2's bridge and produce the migration list. Run lesson 3's
resident-set audit line by line.

## Block 2. Interfaces and measurement (lessons 4–5 + one-liner rows 5, 16–17)

**Done-tests (declared first):**
1. Your longest-lived instruction file has been red-teamed: ≥3 findings written down, each naming
   the sentence and what a smart literal stranger could take it to authorize.
2. Every charter you own ends with a when-unsure clause, checked, count reported.
3. A ten-case eval exists for your most-depended-on behavior: 10 real inputs, one-line
   expectations, a runnable script, and a first score recorded. (This is the guide's single
   highest-value artifact, and no block 2 pass without it.)
4. Flashcards: rows 5, 16, 17 (tools & MCP, skills, agents): 3/3.

**Drills:** The language-lawyer pass from lesson 4's bridge. Build and run the lesson-5 eval;
schedule it wherever your other checks live; note the first surprise it produced (there is
almost always one).

## Block 3. Trust and the management plane (lessons 6–7 + one-liner rows 15's neighbors, 18)

**Done-tests (declared first):**
1. One end-to-end trace written down: where outside text enters your context, and every action
   the same session can take afterward, with each ungated action marked.
2. The management-plane table exists: every hook, skill, charter, instruction and permission file,
   × *who can write it* × *what reviews a change*, with zero cells reading "don't know."
3. The two sentences, cold. Required phrases: *a hostile document is an insider* · *the
   compromise vector is the management of the system, not the system*.
4. Flashcard: row 18 (egress gates): teach + bite.

**Drills:** Lesson 6's trace-one-path exercise, then the split (readers of outside content lose
privileges; actions gain gates), implementing or ticketing each gap found. Lesson 7's two-question
audit over the management-plane list; wire or ticket the integrity hold.

## Block 4. Routing (lessons 8–10 + one-liner rows 22, 25)

**Done-tests (declared first):**
1. A hand-labeled traffic matrix: ≥50 real requests from your own history, a taxonomy of ≤8
   classes covering ≥90% of them, with per-class counts.
2. The advertisements table on one page: every skill trigger, agent description, and tool doc in
   your estate × traffic class × handler × tier, with every traffic class covered by a row or by a
   written gap ticket; overlapping advertisements identified and tightened.
3. The table's last row is an explicit no-match → escalate entry, and you can state its bite.
   Required phrase: *escalate, don't guess* (or *never force-fit*).
4. The classifier eval: your labeled matrix run against however routing happens today (designed
   or model-chosen), producing an accuracy number and the confusion pattern, written down.
5. Flashcards: rows 22 and 25 (code-dispatch vs model-chosen, fan-out): 2/2.

**Drills:** Lesson 8's week-of-traffic logging and labeling. Lesson 9's build-the-page audit,
where you should expect the three classics (a shadowing description, an uncovered class, a
description written as documentation instead of a route entry) and fix them. Lesson 10's two
questions asked of your own estate, then the two fixes in one sitting.

## Block 5. The brief, and the whole module aloud (lesson 11 + everything)

**Done-tests (declared first):**
1. The design brief is assembled from blocks 1–4's artifacts: seven sections, each ≤1 page, each
   non-empty or explicitly marked EMPTY with a ticket, and it's dated.
2. The governs-test is armed: you can name the next component you're tempted to add, and the
   brief section it must argue in first.
3. The L3 bridge narrative, aloud, no notes, 60–90 seconds, without stalling. Required clauses:
   *mostly comply* · *policy and enforcement split* · *attention, not space* ·
   *classify-then-forward* · *silent misroutes / escalate* · *a hostile document is an insider* ·
   *evals because failure doesn't announce itself* · *the job didn't change*.
4. Full flashcard sweep: all 13 one-liner rows + 3 stubs, teach + bite from the anchor alone,
   16/16.

**Drills:** Assemble, don't rewrite. The brief's sections already exist as block artifacts;
the drill is the evening of gap-filling and formatting. Rehearse the bridge narrative until it
survives an interruption ("wait, why does temperature zero not fix that?") and resumes.

---

*Phase E done-when (method): done-tests measurable and declared first. Every test above is a
count, a clock, a required phrase, or an artifact that either exists or doesn't. Phase F
(live-fire) is deliberately absent: it rides a real deadline, whether a design review, an
interview or a production incident retro, and the capture instrument gets built when that
deadline has a date.*
