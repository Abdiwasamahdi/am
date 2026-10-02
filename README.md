# am

## Agent Reach

This repo includes the [Agent Reach](https://github.com/Panniantong/Agent-Reach) skill (MIT) in
`.claude/skills/agent-reach/`, so Claude Code can read and search the web, YouTube, GitHub, RSS,
Bilibili, Twitter/X, Reddit and more.

The skill calls command-line tools that have to be installed in each new environment:

```bash
bash scripts/install-agent-reach.sh
```

Then check status with `agent-reach doctor`. Twitter, Reddit and XHS need login cookies
(see the Agent Reach docs).

## Karpathy guidelines

`.claude/skills/karpathy-guidelines/` holds the coding guidelines from
[andrej-karpathy-skills](https://github.com/multica-ai/andrej-karpathy-skills) (MIT): think before
coding, keep it simple, make surgical changes, and define verifiable goals. `EXAMPLES.md` shows
before/after examples of each.
