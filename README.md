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
