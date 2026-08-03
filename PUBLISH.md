# Publishing agentic-estate (NOT YET PUBLISHED)

Same channel and mechanics as decision-panels: public repo under the `chorusse` GitHub org,
shipped by subtree push from this monorepo.

## Gate status (rulings 2026-08-04)

- ✅ **Free/paid line ratified:** instance #1 ships whole — runnable estate + full 11-lesson
  guide. Paid = domain instances + design-brief engagements.
- ✅ **License:** MIT, Copyright (c) 2026 Chorusse (`LICENSE`, identical to decision-panels).
- ✅ **Repo name:** `agentic-estate`. **Branding:** README footer as written.
- ✅ **Internals sweep:** grep for vault/method/personal/employer references — clean; method-phase
  parentheticals trimmed from guide files.
- ⬜ **Dan says "ship it."** The artifact list is everything under `agentic-estate/` — one final
  yes before the push, per house rule.

## Ship commands (on the final yes)

```bash
cd ~/chorusse
gh repo create chorusse/agentic-estate \
  --public \
  --description "A runnable template of an agentic estate — five planes, one map, and the field guide that teaches ops people to run it." \
  --homepage "https://chorusse.com"

git subtree push --prefix=agentic-estate https://github.com/chorusse/agentic-estate.git main
```

Note: subtree push requires the scaffold to be committed to the monorepo first.
