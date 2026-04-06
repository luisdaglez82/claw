---
title: "How to Deploy a Customer Service Agent with Claude and n8n (No Code Required)"
slug: customer-service-agent-claude-n8n
pillar: AGENTES
date: 2026-04-04
lang: en
url: https://estrategiaclaw.com/en/customer-service-agent-claude-n8n
---

# How to Deploy a Customer Service Agent with Claude and n8n (No Code Required)

Every unanswered message after hours is a lost customer. An AI agent connected to your email, webchat, or messaging platform can handle inquiries, book appointments, and escalate edge cases to a human. Here is exactly how to build one with Claude and n8n, without writing code.

## What this agent actually does

This is not a keyword-matching chatbot from 2019. A Claude-powered agent reads the full message, understands intent, and responds the way a trained employee would.

In practice, it can:

- Answer common questions about your business (hours, pricing, location, policies)
- Classify incoming messages: sales lead, support request, complaint, urgent
- Book appointments via Google Calendar or Calendly
- Hand off to a human when it detects frustration or a problem it cannot solve
- Run 24/7 on email, webchat, or WhatsApp

## The three components

**1. Claude (the brain).** This is the AI model that processes messages and generates responses. For customer service, Claude Haiku 4.5 is the right choice: fast, affordable, and smart enough for this job. It costs $1 per million input tokens and $5 per million output tokens. An average support conversation uses about 3,700 tokens. That puts 10,000 conversations at roughly $37. Verified at [platform.claude.com](https://platform.claude.com/docs/en/about-claude/pricing).

**2. n8n (the nervous system).** n8n is the automation platform that wires everything together: receives the customer message, sends it to Claude, takes the response, and routes it back. It also connects to your calendar, CRM, or database. n8n Cloud starts at 24 euros per month (Starter plan, 2,500 executions). If you have a VPS or server, the self-hosted Community Edition is free with unlimited executions. Check current pricing at [n8n.io/pricing](https://n8n.io/pricing/).

**3. An input channel.** Email, a website chat widget, or WhatsApp Business API. n8n has native nodes for all three.

## Building the workflow in n8n

The complete flow uses five nodes, all drag-and-drop:

**Node 1: Trigger.** A webhook that receives the incoming message. If you use email, this fires every time a new message hits your support inbox.

**Node 2: Context.** A node that pulls your business information from a Google Sheet or database: hours, pricing, return policy, FAQs. This gets injected as context for Claude.

**Node 3: Claude (AI Agent).** n8n has a native AI Agent node that connects directly to the Anthropic API. It takes the customer message plus your business context and generates a response.

**Node 4: Router.** An IF node that checks whether Claude flagged the conversation for human escalation. If the response contains a tag like [ESCALATE], the flow branches to notify a team member via Slack or email.

**Node 5: Reply.** Sends Claude's response back to the customer through the same channel they used.

## What this costs per month

Real numbers for a business handling 50 inquiries per day:

- 50 inquiries x 30 days = 1,500 conversations per month
- Claude Haiku 4.5 for 1,500 conversations: approximately $5.50 per month
- n8n Cloud Starter: 24 euros per month (or free self-hosted)
- WhatsApp Business API or Intercom widget: $15-30 per month at that volume

**Estimated total: $5.50 to $60 per month.**

Compare that to a part-time hire covering nights and weekends. Or to the revenue you lose when nobody replies to a Saturday evening inquiry.

## Mistakes to avoid

**Do not launch without testing against real questions.** Feed the agent your 50 most common customer questions before going live. Review every response. Tune the system prompt until the answers are accurate and match your brand voice.

**Do not remove the human option.** There must always be a path to a real person. The agent should know when to say "let me connect you with someone on my team." Frustrated customers who cannot reach a human leave and do not come back.

**Do not default to the most expensive model.** Claude Opus 4.6 costs 5x more than Haiku 4.5 on both input and output. For standard customer service, Haiku is more than enough. Save Opus for tasks that genuinely need complex reasoning.

## What you can do today

1. **Create a free account at [n8n.io](https://n8n.io)** and explore the AI Agent node. Connect your Anthropic API key (get one at [console.anthropic.com](https://console.anthropic.com) with free starter credits) and run a test query.
2. **Write down your 20 most common customer questions** with the correct answers for each. This document becomes the context that feeds Claude. Skip this step and the agent will hallucinate answers about your business.
3. **Build the 5-node workflow described above** and test it with your personal email or a test phone number. Do not connect it to real customers until you have tested at least 50 interactions and are satisfied with the quality.

## Resources

- [Claude API Pricing (Anthropic)](https://platform.claude.com/docs/en/about-claude/pricing)
- [n8n Cloud Pricing](https://n8n.io/pricing/)
- [Claude + n8n Integration](https://n8n.io/integrations/claude/)
- [Anthropic Console (get your API key)](https://console.anthropic.com)
- [n8n AI Agents Documentation](https://n8n.io/ai-agents/)
