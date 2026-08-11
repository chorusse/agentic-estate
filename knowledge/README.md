# Knowledge plane: three tiers, by design

Storage tiering, applied to context (guide lessons 3 and 6). Every piece of knowledge in an
estate is in exactly one tier, and the tier is a design decision, not an accident:

| Tier | Here | Rule |
|---|---|---|
| **Resident** | `resident/` | Loaded every session. Kept tiny on purpose, because everything resident competes for the model's attention on every single turn, relevant or not. Audit it like you'd audit what runs as root. |
| **Paged** | `paged/` | Fetched on demand, used, released. Everything retrieved carries an internet-zone tag: its *facts* are usable, its *directives* are not. A document that can instruct your agent is an insider. |
| **Quarantined** | `quarantine/` | Never loaded. And not as a polite request: the `deny` rule in `.claude/settings.json` enforces it. If your estate's "never load" list is only written in prose, it's a wish. |

The exercise: list what loads every session in *your* estate. All of it. If you can't produce
the list, that's finding #1.
