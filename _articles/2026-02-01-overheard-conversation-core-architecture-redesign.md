---
title: "How an Overheard Conversation Led Me to Redesign a Company's Core Architecture"
slug: overheard-conversation-core-architecture-redesign
date: 2026-02-01
description: "A case study on how noticing a business problem led to redesigning smava's partner matching architecture, reducing API load by 40-60% and improving commercial outcomes."
excerpt: "Sometimes the most impactful engineering work starts not with a ticket, but with a question nobody thought to ask."
keywords:
  - engineering leadership
  - architecture redesign
  - microservices
  - data science partnership
  - fintech
  - API optimization
  - system design
  - partner integrations
reading_time: 12
---

*Sometimes the most impactful engineering work starts not with a ticket, but with a question nobody thought to ask.*

---

There's a moment every engineer knows — the one where a casual observation suddenly reframes everything you thought you understood about the system you've been building. For me, that moment happened while walking past a meeting room at smava, one of Germany's leading digital lending platforms. I overheard a co-founder and a senior Key Account Manager discussing a frustrating reality: competitors were landing better commission deals with partner banks — not because they had superior technology, but because they generated less operational noise.

That single sentence changed the trajectory of my work for the next year.

## The Machine That Shouted at Everyone

At the time, I was Head of Engineering for smava's Core Bank Integration domain. My mandate was clear: keep the integrations between our platform and dozens of financial institutions fast, stable, and accurate. And we did. The pipes worked. Data flowed. Banks responded.

But *how* they responded — and what we were asking of them — was a different story entirely.

Every time a customer submitted a loan request, our backend did what it had always done: it fired API calls to as many partner banks as possible, all at once, ordered by a simplistic scoring heuristic. The system waited as long as it could for responses, retried without strategy, and made no meaningful distinction between a bank likely to approve a customer and one that had been rejecting similar profiles for months.

Imagine walking into a room of thirty people and shouting your question at all of them simultaneously, then waiting to see who answers first. That was our rule engine. It *worked* — in the narrowest sense of the word. But it was blunt, wasteful, and increasingly damaging.

Partner banks were drowning in low-quality traffic. Customers were waiting too long for offers that sometimes never came. And commercially, smava was losing leverage at the negotiation table because every converted customer came wrapped in a thick layer of operational burden.

The irony was hard to miss: the system designed to connect customers with the right bank was actively making that connection harder for everyone involved.

## Reframing the Problem

Here's the thing about engineering cultures — we tend to optimise within the boundaries we're given. Bank integrations were my responsibility. Bank commissions were not. The rule-based matching logic sat in a grey zone, technically owned by Engineering but commercially governed by product and partnerships. Nobody had connected the dots between *how* we called partner APIs and *how much revenue* those calls ultimately generated.

Once I saw the connection, I couldn't unsee it.

I started asking a different question: *What if we stopped treating partner calls as a commodity and started treating them as a strategic resource?* What if, instead of spraying requests everywhere and filtering the wreckage afterward, we predicted which banks would actually say yes — and only called those?

The idea was simple. The execution would not be.

## Designing With Intent

I pulled together a cross-functional coalition — my engineering teams, the Data Science group, and Key Account Management — and proposed a fundamental redesign of the rule-based matching architecture. Not a refactor. Not an optimisation pass. A rethinking of the core assumption that had governed the system since its inception.

We established three design principles early, and they became our compass throughout the project:

**Call only the right partners.** Every API request should be justified by data, not by default. If historical patterns showed a bank consistently rejected a particular customer profile, that call should never happen.

**Respect everyone's time.** Customers shouldn't wait for banks that won't respond. Banks shouldn't process applications they'll never approve. Dynamic timeouts, calibrated per partner based on real performance data, replaced the old one-size-fits-all waiting periods.

**Let the system learn.** Static rules age poorly. We needed a feedback loop — a living architecture where every interaction made the next one smarter.

## Building the Orchestration Engine

What followed was months of methodical, iterative engineering. We dismantled the monolithic rule engine and rebuilt it as a set of purpose-driven microservices, each with a clear responsibility and failure boundary.

The new Matching Engine introduced partner sequencing based on predicted acceptance probability — not just a crude score, but a model informed by historical conversion rates, response latency, customer attributes, and even time-of-day patterns. We built partner-availability checks that detected degraded or offline APIs before wasting a call. We replaced aggressive retry storms with intelligent deferment strategies, using delayed-message queues to smooth out load spikes and respect partner capacity.

One of the subtler but most impactful innovations was auto-calibrating result-set sizing. The old rule engine either overwhelmed customers with too many offers or left them with too few. The new logic dynamically determined the optimal number of offers for each customer profile — enough to enable a confident decision, few enough to avoid paralysis.

We also integrated external scoring engines and reverse-engineered partner scoring models to pre-enrich customer profiles before any bank call was made. This alone cut time-to-first-offer to under eight seconds in many cases — a dramatic improvement in an industry where customers often waited several minutes staring at a loading screen.

## The Data Science Partnership

None of this would have worked without a genuine partnership with our Data Science team. Engineering and Data Science often coexist in parallel universes — same company, different languages, occasional awkward handshakes at all-hands meetings. We needed something deeper.

Together, we designed a shared data contract. Engineering emitted structured event data through Kinesis streams. Data Science consumed those events, processed them through AWS Glue, queried them via Athena, and stored enriched datasets in S3. As data volume grew, they migrated their processing pipelines to Spark, enabling large-scale feature extraction and model retraining without touching the production matching flow.

The beauty of this architecture was its independence. ML models could evolve on their own cadence — retrained, recalibrated, redeployed — without destabilising the customer-facing systems that depended on their output. Engineering and Data Science operated in concert, not in lockstep.

## Shipping Without Breaking Things

Redesigning a system that processes every loan request on the platform is not something you do with a big-bang release and a prayer. We deployed behind feature flags, running the legacy and new flows in parallel. Traffic was ramped gradually, with every increment monitored for API load, conversion behaviour, latency, and partner response quality.

Weekly review cycles with Engineering, Data Science, Product, and Key Account Management kept everyone aligned. We validated assumptions against real-world data, caught regressions early, and reprioritised based on what we actually observed — not what we'd predicted in a planning document months earlier.

This disciplined, iterative approach meant we never had to choose between speed and safety. We moved fast precisely because we'd built the infrastructure to move carefully.

## What Changed

The numbers told a compelling story. Partner API load dropped by 40 to 60 percent — not because we were doing less, but because we'd stopped doing things that didn't matter. Offer-retrieval success rates climbed as availability checks and delayed retries replaced blind repetition. Customers saw curated, relevant offers faster, and the data showed they made decisions with more confidence.

But the impact that mattered most wasn't in a dashboard. It was in the conversations.

Key Account Managers went into partner negotiations armed with data showing exactly how much operational load smava had reduced. Banks noticed. Commission terms improved. The relationship shifted from transactional to collaborative.

Inside the company, something else shifted too. Engineering had traditionally been viewed as a support function — the team that kept the lights on and built what Product specified. This project repositioned Engineering as a strategic partner, one that could identify business opportunities, propose solutions, and drive outcomes that showed up on the revenue line.

## The Lesson Behind the Story

Looking back, the most important thing I did wasn't designing the orchestration engine or building the microservice architecture. It was noticing.

Noticing that a technical system had business consequences nobody was measuring. Noticing that the gap between how things worked and how they *should* work was wide enough to drive meaningful change. Noticing that the people closest to the problem — partner managers, data scientists, front-end engineers — each held a piece of the puzzle, but nobody had assembled the picture.

Engineering leadership, at its best, isn't about having the answers. It's about seeing the questions that haven't been asked yet — and then building the teams, the systems, and the trust needed to answer them.

That overheard conversation in a meeting room didn't give me a solution. It gave me something better: the right problem to solve.
