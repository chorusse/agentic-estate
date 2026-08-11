# Quarantine: the never-load tier

Nothing in this directory is ever read by the estate. Not "shouldn't be" but *can't be*: the
`deny` rule in `.claude/settings.json` blocks reads of `knowledge/quarantine/**` at the
enforcement plane. (This README is the one exception you're reading as a human.)

What belongs in a real estate's quarantine: credentials and keys, PII, unvetted bulk dumps,
anything under legal hold, content awaiting a trust review before promotion to `paged/`.

The teaching point is the pairing. `CLAUDE.md` *declares* the quarantine (policy, so the model
usually complies). `settings.json` *enforces* it (fires every time). Ask which of your estate's
"never" rules exist only as prose. Those are wishes with good posture.
