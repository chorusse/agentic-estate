#!/usr/bin/env bash
# ENFORCEMENT PLANE: integrity hold (guide lesson 7).
# Blocks the estate from editing its own policy plane and its evals:
# CLAUDE.md, anything under .claude/, and evals/EVALS.md.
# Deterministic: fires on every matching tool call, regardless of what
# the model was told, believes, or was tricked into. That property,
# not the rule itself, is the lesson.
# Exit 2 = block the tool call; the stderr message goes to the model.

exec python3 -c "
import json, sys, os

root = os.path.realpath(sys.argv[1] if len(sys.argv) > 1 and sys.argv[1] else '.')
payload = json.load(sys.stdin)
path = payload.get('tool_input', {}).get('file_path', '')
if not path:
    sys.exit(0)

rel = os.path.relpath(os.path.realpath(os.path.join(root, path)), root)
protected = (
    rel == 'CLAUDE.md'
    or rel == os.path.join('evals', 'EVALS.md')
    or rel.split(os.sep)[0] == '.claude'
)
if protected:
    print(
        'Integrity hold: ' + repr(rel) + ' is on the policy/enforcement plane. '
        'Estate policy and its guards are edited by the operator, not the estate. '
        'Ask the human to make this change.',
        file=sys.stderr,
    )
    sys.exit(2)
" "$CLAUDE_PROJECT_DIR"
