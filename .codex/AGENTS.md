# Personal AI engineering workflow

## Working style

- Explain unfamiliar tools and commands in plain language before relying on them.
- Prefer a small, complete, testable slice of work over a large unfinished system.
- Before a significant implementation, read the relevant specification and give a short plan with acceptance criteria.
- Never add secrets, tokens, or real `.env` files to Git.
- Before declaring a code change complete, run the relevant checks and summarize what changed and what was verified.

## Starting a new project

- Start with a small product spec and a technical spec in `docs/specs/` before building substantial code.
- Use GitHub as the source of truth: one feature per branch and pull request; keep `main` stable.
- Use a lean folder structure first; only introduce additional apps, packages, or infrastructure when the project needs them.
- Recommend a named tmux session for each active project. The tmux prefix is `Ctrl-b`; detach with `Ctrl-b`, then `d`.

## Learning and reuse

- Treat repeated corrections or repository-wide rules as candidates for the repository's `AGENTS.md`.
- Treat repeatable multi-step procedures as candidates for a skill; use repository skills in `.agents/skills/` and personal cross-project skills in `~/.agents/skills/`.
- Keep specifications project-specific; do not place a project's product requirements in global guidance.
