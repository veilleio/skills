# Veille Skills

Agent skills for the Veille email and VAT validation API, the hosted MCP server, and common Veille workflows.

Compatible with Claude Code, Cursor, Cline, Codex, Windsurf, Gemini, GitHub Copilot, Roo, Goose, Antigravity, and [50+ other agents](https://skills.sh) via the open [`skills`](https://www.npmjs.com/package/skills) CLI.

## Install

Pick the flow that matches what you're shipping:

```bash
# Install every Veille skill into every detected agent
npx skills add veilleio/skills --all

# Pick specific skills (use the canonical `--skill <name>` form)
npx skills add veilleio/skills --skill veille-domain-check

# Target specific agents (claude-code, codex, cursor, gemini-cli, ...)
npx skills add veilleio/skills --all -a claude-code -a cursor

# Install globally (~/<agent>/skills/) instead of in the current project
npx skills add veilleio/skills --all --global

# Just list what's available without installing
npx skills add veilleio/skills --list
```

`veilleio/skills` is GitHub-shorthand for [`https://github.com/veilleio/skills`](https://github.com/veilleio/skills); the CLI clones it directly.

## Skills

| Skill | When to use |
|-------|-------------|
| **veille-domain-check** | Validate domains for disposable mail, MX health, and SSL history with Veille. |
| **veille-email-qualify** | Qualify email deliverability with SMTP and catch-all checks via Veille. |
| **veille-email-validation** | Validate emails for disposable inboxes, role accounts, and risk with Veille. |
| **veille-exchange-rates** | Fetch ECB exchange rates with Veille. |
| **veille-iban-check** | Validate IBANs and return bank and BIC details with Veille. |
| **veille-ip-reputation** | Check IP, domain, or phone risk signals with Veille intelligence tools. |
| **veille-phone-check** | Validate E.164 phone numbers for carrier, line type, and risk with Veille. |
| **veille-vat-check** | Validate EU VAT numbers and IBANs with Veille VIES and bank lookup tools. |

## Setup

Validate emails, domains, phones, IPs, VAT numbers, and IBANs before you trust a signup or invoice.

1. Create an account at [app.veille.io](https://app.veille.io).
2. Connect the hosted MCP server at `https://mcp.veille.io/` (OAuth through the dashboard).
3. API calls can also use an `x-api-key` header from the dashboard. Never print API keys.

Docs: [docs.veille.io](https://docs.veille.io)

## Updating and removing

```bash
# Pull the latest version of every installed Veille skill
npx skills update

# Remove a specific skill
npx skills remove veille-domain-check

# Remove every Veille skill from a specific agent
npx skills remove --skill 'veille-*' -a claude-code
```

## Where skills land

`npx skills` symlinks the skills into each agent's conventional directory. A few examples:

| Agent | Project install | Global install |
|-------|-----------------|----------------|
| Claude Code | `.claude/skills/` | `~/.claude/skills/` |
| Codex | `.agents/skills/` | `~/.codex/skills/` |
| Cursor | `.agents/skills/` | `~/.cursor/skills/` |
| Gemini CLI | `.agents/skills/` | `~/.gemini/skills/` |
| OpenCode | `.agents/skills/` | `~/.config/opencode/skills/` |

Full agent matrix: see the [`skills` package README](https://www.npmjs.com/package/skills).

---

A [WebAPI Group](https://webapi.group/) product.
