---
title: "The Conversation I Wasn't Supposed to Hear"
slug: overheard-conversation-core-architecture-redesign
date: 2026-02-01
description: "A case study on how noticing a business problem led to redesigning a partner matching architecture, reducing API load by 40-60% and improving commercial outcomes."
excerpt: "I was not in that meeting for a reason. It was a monthly leadership session with the co-founders. I happened to be nearby. And what I heard changed how I thought about our entire architecture."
keywords:
  - engineering leadership
  - architecture redesign
  - microservices
  - data science partnership
  - fintech
  - API optimization
  - system design
  - partner integrations
hero_image: /assets/images/articles/overheard-conversation-core-architecture-redesign/hero.png
thumbnail: /assets/images/articles/overheard-conversation-core-architecture-redesign/thumb.jpg
og_image: /assets/images/articles/overheard-conversation-core-architecture-redesign/og.png
reading_time: 5
---

I was not in that meeting for a reason. It was a monthly leadership session with the co-founders. Finance, Sales, Key Account. The kind of room where commercial outcomes are discussed and Engineering is expected to be somewhere else, building things.

I happened to be nearby. I heard a Key Account Manager explain to one of the co-founders why a competitor was winning better commission terms from partner banks. The answer had nothing to do with stronger relationships or better salespeople. It was lower operational burden per converted customer. Banks preferred working with them because they were easier to work with.

I kept quiet. But on the way back to my desk, I already knew what I was going to change.

---

## Why We Were Generating Noise

When I became Head of Engineering for the Core Bank Integration and Matching domain at a leading German fintech, I inherited a system that made sense in isolation but didn't hold up when you looked at it from the outside.

The logic was simple: when a customer submitted a loan request, the backend triggered calls to as many partner bank APIs as possible, in parallel, sorted by a basic score. We waited for responses. We collected offers. We showed results. More calls meant more offers. More offers seemed better.

From Engineering's perspective, the system was doing its job. Fast, scalable, high throughput.

From a bank's perspective, we were sending them customers who had no realistic chance of approval. Dozens of requests per day consuming their infrastructure, their capacity, the time of people reviewing edge cases, and all of it generating work that never converted into revenue for them.

We were optimising for output, not for outcome.

That is the heartbeat of everything that followed.

---

## The Reframe That Mattered More Than the Architecture

What the overheard conversation made clear to me was not a technical problem. It was a framing problem. Engineering had always treated the matching engine as infrastructure. Keep it stable, keep it fast, make sure the calls go through. Commercial outcomes were someone else's responsibility.

But the commercial outcomes ran entirely on our pipes. Every commission negotiation happened in the shadow of the traffic we generated. The quality of our calls was the quality of our relationships with banks. We had been treating a business problem as if it were outside our domain.

I brought this framing to the Key Account lead and to the co-founders, not as a proposal, but as a question. What if we measured the matching engine not by throughput, but by the ratio of meaningful calls to total calls? What would change?

That question started the project.

---

## What We Actually Built

The old logic was: call everyone and filter the results.

The new logic was: predict, prioritise, and call with intent.

Together with my team and in close collaboration with Data Science, we redesigned the orchestration layer of the matching engine. Instead of sorting partners by a simple score, we introduced sequencing based on predicted acceptance probability. Partners with a proven track record of converting similar customer profiles were called first. Partners with poor performance on specific segments were deprioritised or deferred.

We introduced dynamic timeouts calibrated per partner, based on their historical response behaviour. We added availability checks before calls. We built fallback paths for partners that were degraded or offline, so customer waiting time was not wasted on systems that could not respond. We designed retry logic that deferred rather than immediately repeated failed calls.

The system stopped broadcasting. It started making decisions.

For non-technical readers, think of it this way. Before, we were sending the same message to an entire crowd and waiting to see who answered. After, we were having a targeted conversation with the right person at the right moment. The crowd was still there. We just stopped shouting at all of them at once.

Data Science became a genuine part of this. They consumed structured event data from the new matching flow, processed it through a pipeline built on Kinesis, Glue and Athena, and trained models that fed back into the sequencing logic. The matching engine was not static. It learned. Every call it made became evidence for the next decision.

---

## What Changed

The reduction in unnecessary partner API calls landed between 40 and 60 percent. That number is not a projection. It was measured.

Time-to-first-offer dropped for a large share of customers, because we were no longer waiting on slow or unlikely partners while a results screen sat half-loaded. Partner satisfaction improved. Key Account teams had something new to bring into commission negotiations: data showing that the traffic we sent was higher quality. Fewer calls, better conversion ratio. Banks noticed.

What I am most proud of is not the technical architecture. It is that Engineering stopped being a support function for commercial outcomes and became a contributor to them. That shift did not happen because of the technology. It happened because someone reframed the question.

---

## What I Would Do Differently

I should have found this problem sooner. The pattern was visible in the data if I had been asking the right questions from the beginning. Call volume per partner, conversion rate per partner, latency per partner. Those metrics existed. Nobody was using them to drive decisions because the commercial and technical tracks were not connected at the working level.

The lesson is not that Engineering should own commercial outcomes. It is that Engineering must understand them well enough to recognise when it is creating problems for them.

The overheard conversation should not have been necessary.

---

Nine months after that hallway moment, the new matching architecture was in production across all partner integrations. Data Science was training models on clean, consistent event data. The system was making decisions, not just processing calls.

I still think about that conversation occasionally. Not because it was dramatic, but because of how much was already possible before I knew to look for it.

The technology was always capable. It was just pointed in the wrong direction.
