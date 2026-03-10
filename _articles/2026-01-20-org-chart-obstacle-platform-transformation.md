---
title: "When the Org Chart Becomes the Obstacle"
slug: org-chart-obstacle-platform-transformation
date: 2026-01-20
description: "A leadership case study on navigating cross-functional complexity during a critical platform migration. Learn how breaking down communication silos and establishing clear ownership enabled a zero-incident transformation."
excerpt: "Every week for the first three months of the project, I sat in a room with six department heads. The meeting ended on time. And the project was quietly falling apart."
keywords:
  - engineering leadership
  - platform transformation
  - cross-functional collaboration
  - microservices migration
  - strangler pattern
  - organizational change
  - technical leadership
  - data migration
  - fintech
  - team alignment
hero_image: /assets/images/articles/org-chart-obstacle-platform-transformation/hero.png
thumbnail: /assets/images/articles/org-chart-obstacle-platform-transformation/thumb.jpg
og_image: /assets/images/articles/org-chart-obstacle-platform-transformation/og.png
reading_time: 6
---

Every week for the first three months of the project, I sat in a room with six department heads. Engineering, Data Science, BI, Product, Infrastructure, Key Account. We had a structured agenda. Everyone gave updates. The meeting ended on time.

And the project was quietly falling apart.

Not because people weren't working. They were. Not because the plan was wrong. It wasn't. The problem was something harder to see from a conference room. Leaders were aligned. The people doing the actual work were drifting apart.

---

## What We Were Actually Trying to Do

When I became Head of Engineering for the Banking and Matching domain at a leading German fintech, the company was in the middle of a strategic shift. The B2C loan-comparison model was working. But the platform underneath it still reflected the old C2C logic. The data model, the monolithic core, the partner-integration architecture, none of it was built for where the business was going.

The mandate was clear: design a new domain data schema, decompose the monolith into microservices using the Strangler Pattern, and migrate all customer, scoring, and banking data into the new structure without breaking anything along the way. Nine months end-to-end. Financial data. Active bank partnerships. ML models in production. Reports that business teams relied on daily.

The risk level was not abstract. It was the kind of project where a single misinterpreted data contract could cause incorrect loan matching, partner failures, or compromised analytics. Every team in the technology organisation had a stake in it. And nearly every team had a different interpretation of what "the new schema" actually meant.

---

## The Illusion of Alignment

I underestimated this. That is worth saying directly.

My instinct was to create a weekly leadership sync where department heads could coordinate. It seemed logical. If the leaders agreed, the teams would follow. What I did not account for was the gap between what leaders reported and what was actually happening at the implementation level.

BI analysts were adjusting data mappings to fit their reporting needs without coordinating with backend engineers. Data Science was interpreting schema fields based on their ML feature requirements, which sometimes contradicted product definitions. Engineers were making decisions about service contracts without knowing what downstream consumers actually needed. Everyone was working hard. No one was working from the same understanding.

The leadership meeting was creating an illusion of alignment, because leaders spoke in abstractions. When a Data Science manager said "we aligned on the schema," what actually happened was that two managers exchanged slides. The engineers and analysts who would implement and validate the mapping had not spoken to each other once.

---

## What I Changed

The shift I made sounds simple. It was not easy to execute.

I stopped running cross-departmental communication through managers and started facilitating direct working sessions between the people closest to the work. With agreement from the department leads, I brought backend engineers into the same room as BI analysts to validate data mappings together. I connected Data Science directly with my team to work through schema interpretation and ensure ML feature consistency. Infrastructure engineers coordinated with microservice developers on service discovery, observability, and deployment patterns.

For several months, I operated as what I can only describe as a connector. When a BI analyst had a question about a field definition, I made sure a backend engineer answered it the same day, not the same sprint. When a conflict surfaced between how Data Science and Product interpreted a scoring field, I did not resolve it myself. I brought both teams into the discussion and let them work through it until there was one understanding. My job was not to have the answer. It was to make sure the right people were talking.

This changed the entire dynamic. When engineers and analysts worked through a mapping problem together, they both owned the outcome. Passive resistance dissolved. Assumptions that had silently diverged for weeks got surfaced and corrected in hours.

---

## The Strangler Pattern Was Not Just Architecture

The technical approach we used was the Strangler Pattern. New microservices were built to run in shadow mode, processing identical traffic alongside the monolith without replacing it. Both systems produced outputs. We compared them. We found inconsistencies, investigated them, and resolved them. We did not cut over until full behavioural parity was demonstrated.

There is a reason I describe this as more than an architecture decision. The shadow mode period gave every stakeholder, technical and non-technical, a tangible basis for confidence. Data Science could validate that their ML models produced the same results from the new schema. BI could confirm their reports matched. Key Account could verify partner integrations were stable. Nobody had to take anyone's word for it. The evidence was there, running in parallel, every day for months.

It also changed the emotional tone of the project. When teams could see parity building week over week, the pressure of a big-bang release faded. Problem-solving replaced defensive positioning. People stopped protecting their interpretations and started improving the shared one.

The actual data migration happened over a single weekend. Engineers from multiple departments volunteered. The following Monday, every team validated their piece. Zero high-severity incidents.

---

## What the Org Chart Was Hiding

There is a pattern I have seen repeated across complex technical initiatives. The org chart looks like an alignment structure, but it is often an obstacle in disguise. When communication runs exclusively through managers, it filters out the nuance that implementation requires. Leaders summarise. They translate. They protect their teams from what they perceive as excessive complexity. In doing so, they sometimes prevent the exact conversations that would make the project work.

The clearest signal that this was happening was the moment I started bringing engineers and analysts directly into design discussions. Several of them immediately said things their managers had not mentioned, questions about specific edge cases, concerns about particular data contracts, observations about timing and sequencing. Not because their managers were hiding anything, but because those details had not survived the translation up and back down the hierarchy.

Getting the people closest to the work into direct contact was not a workaround. It was the actual alignment mechanism.

---

Nine months after the first schema design, the new data model was consistently adopted across every department. The microservice architecture was running in production. Historical and live data had been migrated. Data Science was training models on cleaner, more consistent data. Partner onboarding improved. The project became a reference point within the company, which I mention not to close with a celebration, but because it matters for the lesson.

The technology delivered because the collaboration structure changed first.

When I look back at the moment I decided to stop running the weekly leadership sync and start connecting the actual implementors, that was not a small process adjustment. That was the decision the project needed. Everything else followed from it.
