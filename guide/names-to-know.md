# Names to know: the recognize-only stubs

*Agentics field guide, stubs (rows 27–29 of the chain). These are stubs on purpose: names you
will hear in vendor meetings and hallway arguments, where the goal is to not be bluffed. Nothing
downstream in this guide needs their mechanism. Per the method, stubs get no diagram.*

## RAG & embeddings

**"Retrieval-augmented generation"** is search-then-summarize: fetch the relevant text, hand it
to the model alongside the question. If your estate pages knowledge in on demand through an
index, you are already running RAG; it's the loading map's middle tier wearing a lanyard.
**Embeddings** are the indexing trick behind semantic search: text mapped to vectors so "similar
meaning" becomes "nearby point." Useful, common, and still just an index type: a fuzzier B-tree.
When someone sells you "a RAG platform," translate: *a search appliance plus a report writer.*
Ask what you'd ask about any search appliance, meaning what's indexed, how fresh, how measured, and
you'll be the most rigorous person in the meeting. One trust note, already covered where it
matters: whatever retrieval returns is internet-zone traffic (lesson 6).

## Fine-tuning

**Fine-tuning** retrains a model's weights on your examples, building a custom kernel instead
of configuring the stock one. It's real, occasionally the right call (narrow, high-volume,
stable tasks with thousands of examples), and it is almost never *your* next move: it's slow to
iterate, costs real money per attempt, goes stale as your needs drift, and can't be diffed or
reviewed the way every other artifact in this guide can. Nearly everything a fine-tune
promises, whether tone, format, domain knowledge or procedure, is something context, retrieval
and well-written interfaces (lesson 4) deliver cheaper and reversibly. When someone proposes
it, the qualifying question is: *"what did we try in context first, and where's the eval
showing it fell short?"* No eval, no fine-tune. Needing one is the exception, not the upgrade
path.

## Temperature & sampling

**Temperature** is a knob on the randomness of sampling: how strongly the model favors its
top-probability word versus spreading its bets. Low temperature: more repeatable, more
conservative. High: more varied. Fine, but here's the bluff to survive: **temperature 0 does
not make the component deterministic in the ways that matter.** Lesson 2's "mostly complies" is
about instructions competing for attention in a crowded context, and that survives at any
temperature; identical-looking sessions still diverge on subtle context differences, and a
misreading is a misreading however greedily it's sampled. When someone says "just set temperature
to zero and it's deterministic," you're hearing "just set the jitter to zero and the network is
reliable": a real knob, doing a much smaller job than the sentence claims.

---

*That's the set. If a name isn't here or in the chain, ask what it maps to in estate terms. If
it maps to nothing, it's marketing.*
