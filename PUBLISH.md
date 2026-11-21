# Publishing agentic-estate

**Live since 2026-08-04:** <https://github.com/chorusse/agentic-estate>. MIT, full instance #1
(runnable estate + 11-lesson guide) free and complete. Nothing is for sale.

This directory is the source of truth. Publish by clone-and-apply (2026-11-20; the monorepo
history and the public history have diverged, as with Decision Panels): commit here, then copy
only the changed files into a fresh clone of the public repo and push from there.

```bash
S=$(mktemp -d) && git clone -q https://github.com/chorusse/agentic-estate.git "$S"
diff -rq --exclude=.git "$S" ~/chorusse/agentic-estate   # the full list of what would go out
cp ~/chorusse/agentic-estate/<changed file> "$S/<changed file>"
cd "$S" && git commit -am "<message>" && git push origin main && git ls-remote origin main
```

House rule stands: any change that adds *new* world-readable material gets enumerated and ruled
on before the push.
