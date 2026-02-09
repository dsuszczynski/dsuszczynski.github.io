---
title: "Scaling Engineering Organizations for Sustainable Growth"
description: "A practical blueprint for scaling engineering teams from 40 to 80+ engineers. Learn about Team Topologies, domain ownership, platform engineering, DORA metrics, and organizational transformation strategies."
category: Organizational Design
excerpt: "A practical leadership blueprint for transforming fragmented delivery into autonomous, outcome-driven domains at scale."
slug: scaling-engineering-organizations
keywords:
  - scaling engineering teams
  - engineering organization design
  - Team Topologies
  - platform engineering
  - DORA metrics
  - engineering leadership
  - organizational transformation
  - developer experience
  - domain-driven design
  - OKRs for engineering
icon: '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><rect x="3" y="13" width="3" height="3"/><rect x="3" y="17" width="3" height="3"/><rect x="3" y="21" width="3" height="3"/><rect x="10.5" y="9" width="3" height="3"/><rect x="10.5" y="13" width="3" height="3"/><rect x="10.5" y="17" width="3" height="3"/><rect x="10.5" y="21" width="3" height="3"/><rect x="18" y="5" width="3" height="3"/><rect x="18" y="9" width="3" height="3"/><rect x="18" y="13" width="3" height="3"/><rect x="18" y="17" width="3" height="3"/><rect x="18" y="21" width="3" height="3"/><line x1="4.5" y1="11" x2="12" y2="7"/><line x1="12" y1="7" x2="19.5" y2="3"/><polyline points="17.5,4 19.5,2 21.5,4"/></svg>'
stats:
  - value: "40→80+"
    label: "Engineers Scaled"
  - value: "12-18"
    label: "Months Rollout"
  - value: "E2E"
    label: "Domain Ownership"
slides:
  - label: "Overview"
    title: "Scaling Engineering Organizations for Sustainable Growth"
    subtitle: "From fragmented delivery to autonomous, outcome-driven domains"
    content: |
      <div class="content-section" id="overview-intro">
          <div class="section-text">
              <div class="section-content">
                  <p>Over the last decade I have repeatedly joined organizations facing rapid growth, platform complexity, and organizational strain.</p>
                  <p>My work focuses on transforming engineering organizations into scalable, resilient, and product-aligned systems.</p>
                  <p>This case study presents a generalized blueprint derived from multiple transformations across fintech and SaaS companies. It illustrates how I design organizational structures, operating models, technical direction, and leadership systems to enable sustainable growth, high-quality delivery, and strong developer experience.</p>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-overview-growth" viewBox="0 0 240 200" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M30 170 L210 50" stroke="url(#overviewGrad)" stroke-width="3" stroke-linecap="round" stroke-dasharray="8 4"/>
                  <polygon points="210,50 195,65 200,50 185,45" fill="#22d3ee"/>
                  <circle cx="50" cy="155" r="18" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2"/>
                  <circle cx="100" cy="120" r="22" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2"/>
                  <circle cx="150" cy="85" r="26" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2"/>
                  <circle cx="200" cy="50" r="30" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2"/>
                  <text x="50" y="160" text-anchor="middle" fill="#22d3ee" font-size="12">40</text>
                  <text x="100" y="125" text-anchor="middle" fill="#22d3ee" font-size="14">50</text>
                  <text x="150" y="90" text-anchor="middle" fill="#22d3ee" font-size="16">65</text>
                  <text x="200" y="55" text-anchor="middle" fill="#22d3ee" font-size="18">80+</text>
                  <defs>
                      <linearGradient id="overviewGrad" x1="0%" y1="0%" x2="100%" y2="0%">
                          <stop offset="0%" stop-color="#22d3ee" stop-opacity="0.3"/>
                          <stop offset="100%" stop-color="#22d3ee"/>
                      </linearGradient>
                  </defs>
              </svg>
              <div class="graphic-caption">Sustainable scaling trajectory</div>
          </div>
      </div>

      <div class="stats-grid">
          <div class="stat-card"><div class="stat-value">40→80+</div><div class="stat-label">Engineers Scaled</div></div>
          <div class="stat-card"><div class="stat-value">12-18</div><div class="stat-label">Months Rollout</div></div>
          <div class="stat-card"><div class="stat-value">E2E</div><div class="stat-label">Domain Ownership</div></div>
          <div class="stat-card"><div class="stat-value">DORA</div><div class="stat-label">Elite Metrics</div></div>
      </div>

  - label: "Principles"
    title: "Framing the Principles"
    subtitle: "Scaling as a systems design problem"
    content: |
      <div class="content-section" id="principles-problem">
          <div class="section-text">
              <div class="section-label">Problem Space</div>
              <h2 class="section-title">Why Organizations Struggle</h2>
              <div class="section-content">
                  <p>High-growth engineering organizations rarely fail due to lack of talent. They fail due to structural friction:</p>
                  <ul>
                      <li><strong>Unclear ownership</strong></li>
                      <li><strong>Overloaded leadership</strong></li>
                      <li><strong>Coupled architectures</strong></li>
                      <li><strong>Local optimizations</strong> that hurt system-level outcomes</li>
                  </ul>
                  <p>Scaling must be treated as a systems design problem, not a hiring exercise.</p>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-principles-friction" viewBox="0 0 240 180" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <rect x="20" y="30" width="60" height="40" rx="4" fill="#0f2a3d" stroke="#ef4444" stroke-width="2"/>
                  <text x="50" y="55" text-anchor="middle" fill="#ef4444" font-size="9">Unclear</text>
                  <rect x="90" y="30" width="60" height="40" rx="4" fill="#0f2a3d" stroke="#ef4444" stroke-width="2"/>
                  <text x="120" y="55" text-anchor="middle" fill="#ef4444" font-size="9">Overload</text>
                  <rect x="160" y="30" width="60" height="40" rx="4" fill="#0f2a3d" stroke="#ef4444" stroke-width="2"/>
                  <text x="190" y="55" text-anchor="middle" fill="#ef4444" font-size="9">Coupled</text>
                  <path d="M50 80 L50 100 L120 100 L120 80" stroke="#64748b" stroke-width="1.5" fill="none"/>
                  <path d="M190 80 L190 100 L120 100" stroke="#64748b" stroke-width="1.5" fill="none"/>
                  <path d="M120 100 L120 130" stroke="#64748b" stroke-width="2"/>
                  <polygon points="120,140 115,130 125,130" fill="#ef4444"/>
                  <text x="120" y="160" text-anchor="middle" fill="#ef4444" font-size="10">Friction</text>
              </svg>
              <div class="graphic-caption">Sources of organizational friction</div>
          </div>
      </div>

      <div class="content-section" id="principles-foundation">
          <div class="section-text">
              <div class="section-label">Guiding Principles</div>
              <h2 class="section-title">Foundation for Scale</h2>
              <div class="section-content">
                  <ul>
                      <li>Scaling follows <strong>business and product strategy</strong>, not headcount targets</li>
                      <li><strong>Leadership capacity</strong> grows before team size</li>
                      <li>Clear <strong>ownership and boundaries</strong> enable autonomy</li>
                      <li><strong>Developer experience and automation</strong> reduce friction as scale increases</li>
                      <li><strong>Quality and reliability</strong> emerge from systems, not heroics</li>
                      <li>Organizational change is <strong>incremental and outcome-driven</strong></li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-principles-pillars" viewBox="0 0 240 180" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <rect x="30" y="140" width="180" height="25" rx="4" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2"/>
                  <text x="120" y="157" text-anchor="middle" fill="#22d3ee" font-size="10">Foundation</text>
                  <rect x="40" y="50" width="45" height="80" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="2"/>
                  <text x="62" y="95" text-anchor="middle" fill="#14b8a6" font-size="9" transform="rotate(-90 62 95)">Strategy</text>
                  <rect x="97" y="50" width="45" height="80" rx="4" fill="#0f2a3d" stroke="#f97316" stroke-width="2"/>
                  <text x="120" y="95" text-anchor="middle" fill="#f97316" font-size="9" transform="rotate(-90 120 95)">People</text>
                  <rect x="155" y="50" width="45" height="80" rx="4" fill="#0f2a3d" stroke="#a855f7" stroke-width="2"/>
                  <text x="177" y="95" text-anchor="middle" fill="#a855f7" font-size="9" transform="rotate(-90 177 95)">Systems</text>
                  <rect x="30" y="20" width="180" height="20" rx="4" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2"/>
                  <text x="120" y="34" text-anchor="middle" fill="#22d3ee" font-size="10">Scale</text>
              </svg>
              <div class="graphic-caption">Pillars supporting scale</div>
          </div>
      </div>

      <div class="highlight-box">
          <div class="highlight-title">💡 What "Good" Looks Like</div>
          <p>Teams understand why they exist. Ownership is explicit and stable. Leaders spend time enabling, not firefighting. Architecture supports independent change. Delivery is predictable. Quality is observable.</p>
      </div>

  - label: "Org Structure"
    title: "Target Org Structure"
    subtitle: "Designing for 40 → 80+ engineers"
    content: |
      <div class="content-section" id="org-philosophy">
          <div class="section-text">
              <div class="section-label">Design Philosophy</div>
              <h2 class="section-title">Value Streams Over Functions</h2>
              <div class="section-content">
                  <p>I design organizations around value streams and domain ownership, not functions. Core elements include:</p>
                  <ul>
                      <li><strong>Stream-aligned product teams</strong> — Own business capabilities end-to-end</li>
                      <li><strong>Platform & enablement teams</strong> — Provide paved paths for infrastructure, CI/CD, observability, security</li>
                      <li><strong>Complicated subsystem teams</strong> — Isolate algorithmic, data, or domain complexity behind stable APIs</li>
                      <li><strong>Embedded technical leadership</strong> — Drive architectural coherence and technology alignment across domains</li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-org-topology" viewBox="0 0 240 220" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <!-- Stream-aligned teams (top row) -->
                  <rect x="15" y="15" width="58" height="40" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="2"/>
                  <text x="44" y="32" text-anchor="middle" fill="#14b8a6" font-size="8">Stream</text>
                  <text x="44" y="45" text-anchor="middle" fill="#64748b" font-size="7">Product A</text>
                  <rect x="83" y="15" width="58" height="40" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="2"/>
                  <text x="112" y="32" text-anchor="middle" fill="#14b8a6" font-size="8">Stream</text>
                  <text x="112" y="45" text-anchor="middle" fill="#64748b" font-size="7">Product B</text>
                  <rect x="151" y="15" width="58" height="40" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="2"/>
                  <text x="180" y="32" text-anchor="middle" fill="#14b8a6" font-size="8">Stream</text>
                  <text x="180" y="45" text-anchor="middle" fill="#64748b" font-size="7">Product C</text>

                  <!-- Enabling team (right side, facilitating) -->
                  <rect x="175" y="70" width="50" height="35" rx="4" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2" stroke-dasharray="4 2"/>
                  <text x="200" y="85" text-anchor="middle" fill="#22d3ee" font-size="8">Enabling</text>
                  <text x="200" y="97" text-anchor="middle" fill="#64748b" font-size="7">DevEx</text>
                  <!-- Facilitation arrows from Enabling -->
                  <path d="M175 85 L160 50" stroke="#22d3ee" stroke-width="1" stroke-dasharray="3 2" marker-end="url(#arrowCyan)"/>
                  <path d="M175 90 L145 90 L145 55" stroke="#22d3ee" stroke-width="1" stroke-dasharray="3 2" marker-end="url(#arrowCyan)"/>

                  <!-- Complicated subsystem team -->
                  <rect x="15" y="70" width="55" height="35" rx="4" fill="#0f2a3d" stroke="#f97316" stroke-width="2"/>
                  <text x="42" y="85" text-anchor="middle" fill="#f97316" font-size="8">Subsystem</text>
                  <text x="42" y="97" text-anchor="middle" fill="#64748b" font-size="7">Algorithm</text>
                  <!-- X-as-a-Service from Subsystem -->
                  <line x1="42" y1="70" x2="42" y2="55" stroke="#f97316" stroke-width="1.5"/>

                  <!-- Platform team (bottom, wide) -->
                  <rect x="15" y="120" width="210" height="38" rx="4" fill="#0f2a3d" stroke="#a855f7" stroke-width="2"/>
                  <text x="120" y="143" text-anchor="middle" fill="#a855f7" font-size="10">Platform Team</text>
                  <!-- X-as-a-Service connections from Platform -->
                  <line x1="44" y1="120" x2="44" y2="105" stroke="#a855f7" stroke-width="1" stroke-dasharray="3 2"/>
                  <line x1="112" y1="120" x2="112" y2="55" stroke="#a855f7" stroke-width="1" stroke-dasharray="3 2"/>
                  <line x1="180" y1="120" x2="180" y2="55" stroke="#a855f7" stroke-width="1" stroke-dasharray="3 2"/>

                  <!-- Legend -->
                  <rect x="15" y="170" width="10" height="10" rx="2" fill="#14b8a6"/>
                  <text x="30" y="178" fill="#94a3b8" font-size="7">Stream-aligned</text>
                  <rect x="90" y="170" width="10" height="10" rx="2" fill="#a855f7"/>
                  <text x="105" y="178" fill="#94a3b8" font-size="7">Platform</text>
                  <rect x="15" y="185" width="10" height="10" rx="2" fill="#22d3ee"/>
                  <text x="30" y="193" fill="#94a3b8" font-size="7">Enabling</text>
                  <rect x="90" y="185" width="10" height="10" rx="2" fill="#f97316"/>
                  <text x="105" y="193" fill="#94a3b8" font-size="7">Complicated-subsystem</text>

                  <!-- Arrow marker -->
                  <defs>
                      <marker id="arrowCyan" markerWidth="6" markerHeight="6" refX="5" refY="3" orient="auto">
                          <path d="M0,0 L0,6 L6,3 z" fill="#22d3ee"/>
                      </marker>
                  </defs>
              </svg>
              <div class="graphic-caption">Team Topologies structure</div>
          </div>
      </div>

      <div class="content-section" id="org-leadership">
          <div class="section-text">
              <div class="section-label">Leadership Layers</div>
              <h2 class="section-title">Distributed Leadership</h2>
              <div class="section-content">
                  <ul>
                      <li><strong>Engineering Managers</strong> — accountable for delivery health and people growth</li>
                      <li><strong>Tech Leads</strong> — embedded per team for technical direction</li>
                      <li><strong>Staff / Principal Engineers</strong> — providing cross-team architectural coherence</li>
                      <li><strong>Director level</strong> — focusing on system health, strategy, and capability building</li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-org-hierarchy" viewBox="0 0 240 200" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <!-- Level 1: VP/Director -->
                  <rect x="80" y="10" width="80" height="28" rx="4" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2"/>
                  <text x="120" y="28" text-anchor="middle" fill="#22d3ee" font-size="10">VP / Director</text>

                  <!-- Level 2: HoE and Principal -->
                  <rect x="30" y="55" width="70" height="26" rx="4" fill="#0f2a3d" stroke="#a855f7" stroke-width="2"/>
                  <text x="65" y="72" text-anchor="middle" fill="#a855f7" font-size="9">Head of Eng</text>
                  <rect x="110" y="55" width="70" height="26" rx="4" fill="#0f2a3d" stroke="#a855f7" stroke-width="2"/>
                  <text x="145" y="72" text-anchor="middle" fill="#a855f7" font-size="9">Head of Eng</text>
                  <rect x="190" y="55" width="45" height="26" rx="4" fill="#0f2a3d" stroke="#f97316" stroke-width="2"/>
                  <text x="212" y="72" text-anchor="middle" fill="#f97316" font-size="8">Principal</text>

                  <!-- Lines from VP to HoE/Principal -->
                  <line x1="120" y1="38" x2="65" y2="55" stroke="#64748b" stroke-width="1"/>
                  <line x1="120" y1="38" x2="145" y2="55" stroke="#64748b" stroke-width="1"/>
                  <line x1="120" y1="38" x2="212" y2="55" stroke="#64748b" stroke-width="1" stroke-dasharray="3 2"/>

                  <!-- Level 3: EMs and Staff under HoE -->
                  <rect x="15" y="100" width="45" height="24" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="2"/>
                  <text x="37" y="116" text-anchor="middle" fill="#14b8a6" font-size="8">EM</text>
                  <rect x="65" y="100" width="45" height="24" rx="4" fill="#0f2a3d" stroke="#f97316" stroke-width="1.5"/>
                  <text x="87" y="116" text-anchor="middle" fill="#f97316" font-size="8">Staff</text>
                  <rect x="120" y="100" width="45" height="24" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="2"/>
                  <text x="142" y="116" text-anchor="middle" fill="#14b8a6" font-size="8">EM</text>
                  <rect x="170" y="100" width="45" height="24" rx="4" fill="#0f2a3d" stroke="#f97316" stroke-width="1.5"/>
                  <text x="192" y="116" text-anchor="middle" fill="#f97316" font-size="8">Staff</text>

                  <!-- Lines from HoE to EM/Staff -->
                  <line x1="65" y1="81" x2="37" y2="100" stroke="#64748b" stroke-width="1"/>
                  <line x1="65" y1="81" x2="87" y2="100" stroke="#64748b" stroke-width="1" stroke-dasharray="3 2"/>
                  <line x1="145" y1="81" x2="142" y2="100" stroke="#64748b" stroke-width="1"/>
                  <line x1="145" y1="81" x2="192" y2="100" stroke="#64748b" stroke-width="1" stroke-dasharray="3 2"/>

                  <!-- Level 4: Tech Leads + Engineers (per EM) -->
                  <rect x="15" y="142" width="95" height="26" rx="4" fill="#0f2a3d" stroke="#64748b" stroke-width="1.5"/>
                  <text x="62" y="159" text-anchor="middle" fill="#94a3b8" font-size="8">Tech Leads + Engineers</text>
                  <rect x="120" y="142" width="95" height="26" rx="4" fill="#0f2a3d" stroke="#64748b" stroke-width="1.5"/>
                  <text x="167" y="159" text-anchor="middle" fill="#94a3b8" font-size="8">Tech Leads + Engineers</text>

                  <!-- Lines from EMs to Tech Leads + Engineers -->
                  <line x1="37" y1="124" x2="62" y2="142" stroke="#64748b" stroke-width="1"/>
                  <line x1="142" y1="124" x2="167" y2="142" stroke="#64748b" stroke-width="1"/>

                  <!-- Legend -->
                  <rect x="15" y="180" width="8" height="8" rx="1" fill="#22d3ee"/>
                  <text x="27" y="187" fill="#94a3b8" font-size="6">VP/Director</text>
                  <rect x="70" y="180" width="8" height="8" rx="1" fill="#a855f7"/>
                  <text x="82" y="187" fill="#94a3b8" font-size="6">HoE</text>
                  <rect x="105" y="180" width="8" height="8" rx="1" fill="#14b8a6"/>
                  <text x="117" y="187" fill="#94a3b8" font-size="6">EM</text>
                  <rect x="140" y="180" width="8" height="8" rx="1" fill="#f97316"/>
                  <text x="152" y="187" fill="#94a3b8" font-size="6">Staff/Principal</text>
              </svg>
              <div class="graphic-caption">Leadership hierarchy</div>
          </div>
      </div>

  - label: "Business Alignment"
    title: "Business & Product Alignment"
    subtitle: "From strategy to team outcomes"
    content: |
      <div class="content-section" id="alignment-domains">
          <div class="section-text">
              <div class="section-label">Domain Orientation</div>
              <h2 class="section-title">Teams Aligned to Domains</h2>
              <div class="section-content">
                  <p>Teams are aligned to business domains, not technical components. Domain ownership is:</p>
                  <ul>
                      <li>Reflected in <strong>context maps</strong></li>
                      <li><strong>Stable over time</strong></li>
                      <li>Matched with <strong>end-to-end accountability</strong></li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-alignment-domains" viewBox="0 0 240 180" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <ellipse cx="70" cy="70" rx="55" ry="40" fill="none" stroke="#22d3ee" stroke-width="2" stroke-dasharray="5 3"/>
                  <text x="70" y="65" text-anchor="middle" fill="#22d3ee" font-size="10">Payments</text>
                  <text x="70" y="80" text-anchor="middle" fill="#64748b" font-size="8">Domain</text>
                  <ellipse cx="170" cy="70" rx="55" ry="40" fill="none" stroke="#f97316" stroke-width="2" stroke-dasharray="5 3"/>
                  <text x="170" y="65" text-anchor="middle" fill="#f97316" font-size="10">Lending</text>
                  <text x="170" y="80" text-anchor="middle" fill="#64748b" font-size="8">Domain</text>
                  <ellipse cx="120" cy="140" rx="55" ry="40" fill="none" stroke="#14b8a6" stroke-width="2" stroke-dasharray="5 3"/>
                  <text x="120" y="135" text-anchor="middle" fill="#14b8a6" font-size="10">Identity</text>
                  <text x="120" y="150" text-anchor="middle" fill="#64748b" font-size="8">Domain</text>
              </svg>
              <div class="graphic-caption">Domain boundaries</div>
          </div>
      </div>

      <div class="content-section" id="alignment-okrs">
          <div class="section-text">
              <div class="section-label">OKR Translation</div>
              <h2 class="section-title">Outcomes Over Output</h2>
              <div class="section-content">
                  <p>Company strategy → Domain OKRs → Team OKRs</p>
                  <p>Engineering does not track output. Engineering <strong>tracks outcomes:</strong></p>
                  <ul>
                      <li><strong>Checkout conversion rate</strong></li>
                      <li><strong>Time to integrate a partner</strong></li>
                      <li><strong>Cost per transaction</strong></li>
                      <li><strong>Incident frequency</strong></li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-alignment-cascade" viewBox="0 0 240 180" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <rect x="60" y="10" width="120" height="28" rx="4" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2"/>
                  <text x="120" y="28" text-anchor="middle" fill="#22d3ee" font-size="9">Company Strategy</text>
                  <path d="M120 38 L120 48" stroke="#64748b" stroke-width="2"/>
                  <polygon points="120,52 115,46 125,46" fill="#64748b"/>
                  <rect x="60" y="55" width="120" height="28" rx="4" fill="#0f2a3d" stroke="#f97316" stroke-width="2"/>
                  <text x="120" y="73" text-anchor="middle" fill="#f97316" font-size="9">Domain OKRs</text>
                  <path d="M120 83 L120 93" stroke="#64748b" stroke-width="2"/>
                  <polygon points="120,97 115,91 125,91" fill="#64748b"/>
                  <rect x="60" y="100" width="120" height="28" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="2"/>
                  <text x="120" y="118" text-anchor="middle" fill="#14b8a6" font-size="9">Team OKRs</text>
                  <path d="M120 128 L120 138" stroke="#64748b" stroke-width="2"/>
                  <polygon points="120,142 115,136 125,136" fill="#64748b"/>
                  <rect x="60" y="145" width="120" height="28" rx="4" fill="#0f2a3d" stroke="#a855f7" stroke-width="2"/>
                  <text x="120" y="163" text-anchor="middle" fill="#a855f7" font-size="9">Outcomes</text>
              </svg>
              <div class="graphic-caption">Strategy cascade</div>
          </div>
      </div>

      <div class="content-section" id="alignment-discovery">
          <div class="section-text">
              <div class="section-label">Lean Product Collaboration</div>
              <h2 class="section-title">Discovery & Validation</h2>
              <div class="section-content">
                  <ul>
                      <li><strong>Joint discovery</strong> with Product</li>
                      <li><strong>Event Storming</strong> for complex domains</li>
                      <li><strong>Continuous validation</strong> with stakeholders</li>
                      <li><strong>Small bets, fast feedback</strong></li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-alignment-discovery" viewBox="0 0 240 200" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <!-- Double Diamond shape (centered: 240px wide, diamonds span 25-215 = 190px, offset +10) -->
                  <!-- First Diamond: Problem Space -->
                  <path d="M25 55 L70 10 L115 55 L70 100 Z" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2"/>
                  <text x="70" y="50" text-anchor="middle" fill="#22d3ee" font-size="8">Discover</text>
                  <text x="70" y="63" text-anchor="middle" fill="#64748b" font-size="7">+ Define</text>

                  <!-- Second Diamond: Solution Space -->
                  <path d="M125 55 L170 10 L215 55 L170 100 Z" fill="#0f2a3d" stroke="#14b8a6" stroke-width="2"/>
                  <text x="170" y="50" text-anchor="middle" fill="#14b8a6" font-size="8">Develop</text>
                  <text x="170" y="63" text-anchor="middle" fill="#64748b" font-size="7">+ Deliver</text>

                  <!-- Connection arrow -->
                  <line x1="115" y1="55" x2="125" y2="55" stroke="#64748b" stroke-width="2"/>

                  <!-- Labels below diamonds -->
                  <text x="70" y="115" text-anchor="middle" fill="#94a3b8" font-size="7">Problem Space</text>
                  <text x="170" y="115" text-anchor="middle" fill="#94a3b8" font-size="7">Solution Space</text>

                  <!-- Feedback loop (wide arc below everything) -->
                  <path d="M205 100 Q230 180, 120 180 Q10 180, 35 100" stroke="#f97316" stroke-width="1.5" stroke-dasharray="4 2" fill="none"/>
                  <polygon points="35,100 28,110 40,112" fill="#f97316"/>
                  <text x="120" y="195" text-anchor="middle" fill="#f97316" font-size="7">Learn & Iterate</text>
              </svg>
              <div class="graphic-caption">Double Diamond with feedback loop</div>
          </div>
      </div>

  - label: "Delivery & Quality"
    title: "Delivery, Quality & Reliability"
    subtitle: "You build it. You run it."
    content: |
      <div class="content-section" id="delivery-ownership">
          <div class="section-text">
              <div class="section-label">Ownership Model</div>
              <h2 class="section-title">End-to-End Team Ownership</h2>
              <div class="section-content">
                  <p>Teams own:</p>
                  <ul>
                      <li><strong>Code</strong> and <strong>infrastructure definitions</strong></li>
                      <li><strong>Deployment</strong> and <strong>monitoring</strong></li>
                      <li><strong>On-call</strong> and <strong>incident resolution</strong></li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-delivery-ownership" viewBox="0 0 240 160" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <rect x="70" y="20" width="100" height="35" rx="4" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2"/>
                  <text x="120" y="42" text-anchor="middle" fill="#22d3ee" font-size="11">Team</text>
                  <line x1="90" y1="55" x2="60" y2="80" stroke="#64748b" stroke-width="1.5"/>
                  <line x1="120" y1="55" x2="120" y2="80" stroke="#64748b" stroke-width="1.5"/>
                  <line x1="150" y1="55" x2="180" y2="80" stroke="#64748b" stroke-width="1.5"/>
                  <rect x="30" y="85" width="60" height="28" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="1.5"/>
                  <text x="60" y="103" text-anchor="middle" fill="#14b8a6" font-size="9">Code</text>
                  <rect x="95" y="85" width="60" height="28" rx="4" fill="#0f2a3d" stroke="#f97316" stroke-width="1.5"/>
                  <text x="125" y="103" text-anchor="middle" fill="#f97316" font-size="9">Deploy</text>
                  <rect x="160" y="85" width="60" height="28" rx="4" fill="#0f2a3d" stroke="#a855f7" stroke-width="1.5"/>
                  <text x="190" y="103" text-anchor="middle" fill="#a855f7" font-size="9">Run</text>
              </svg>
              <div class="graphic-caption">Full ownership model</div>
          </div>
      </div>

      <div class="content-section" id="delivery-cd">
          <div class="section-text">
              <div class="section-label">Continuous Delivery</div>
              <h2 class="section-title">Independent Deployability</h2>
              <div class="section-content">
                  <ul>
                      <li><strong>Loosely coupled services</strong></li>
                      <li><strong>Independent deployability</strong></li>
                      <li><strong>Trunk-based development</strong></li>
                      <li><strong>CI-first pipelines</strong></li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-delivery-pipeline" viewBox="0 0 240 140" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <rect x="15" y="55" width="45" height="30" rx="4" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2"/>
                  <text x="37" y="74" text-anchor="middle" fill="#22d3ee" font-size="9">Commit</text>
                  <rect x="70" y="55" width="45" height="30" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="2"/>
                  <text x="92" y="74" text-anchor="middle" fill="#14b8a6" font-size="9">Build</text>
                  <rect x="125" y="55" width="45" height="30" rx="4" fill="#0f2a3d" stroke="#f97316" stroke-width="2"/>
                  <text x="147" y="74" text-anchor="middle" fill="#f97316" font-size="9">Test</text>
                  <rect x="180" y="55" width="45" height="30" rx="4" fill="#0f2a3d" stroke="#a855f7" stroke-width="2"/>
                  <text x="202" y="74" text-anchor="middle" fill="#a855f7" font-size="9">Deploy</text>
                  <line x1="60" y1="70" x2="70" y2="70" stroke="#64748b" stroke-width="2"/>
                  <line x1="115" y1="70" x2="125" y2="70" stroke="#64748b" stroke-width="2"/>
                  <line x1="170" y1="70" x2="180" y2="70" stroke="#64748b" stroke-width="2"/>
                  <text x="120" y="110" text-anchor="middle" fill="#64748b" font-size="9">Automated Pipeline</text>
              </svg>
              <div class="graphic-caption">CI/CD pipeline</div>
          </div>
      </div>

      <div class="content-section" id="delivery-quality">
          <div class="section-text">
              <div class="section-label">Quality System</div>
              <h2 class="section-title">Built-in Quality</h2>
              <div class="section-content">
                  <ul>
                      <li><strong>Automated testing pyramid</strong></li>
                      <li><strong>Contract testing</strong> between services</li>
                      <li><strong>Observability</strong> as a first-class concern</li>
                      <li><strong>Fitness Functions</strong> validating architectural characteristics</li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-delivery-pyramid" viewBox="0 0 240 160" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <polygon points="120,20 200,130 40,130" fill="none" stroke="#22d3ee" stroke-width="2"/>
                  <line x1="60" y1="100" x2="180" y2="100" stroke="#64748b" stroke-width="1"/>
                  <line x1="80" y1="70" x2="160" y2="70" stroke="#64748b" stroke-width="1"/>
                  <text x="120" y="45" text-anchor="middle" fill="#a855f7" font-size="9">E2E</text>
                  <text x="120" y="85" text-anchor="middle" fill="#f97316" font-size="9">Integration</text>
                  <text x="120" y="118" text-anchor="middle" fill="#14b8a6" font-size="9">Unit Tests</text>
                  <text x="120" y="150" text-anchor="middle" fill="#64748b" font-size="8">Testing Pyramid</text>
              </svg>
              <div class="graphic-caption">Testing strategy</div>
          </div>
      </div>

  - label: "Developer Experience"
    title: "Developer Experience & Platform Enablement"
    subtitle: "The default path is the best path"
    content: |
      <div class="content-section" id="dx-platform">
          <div class="section-text">
              <div class="section-label">Paved Paths</div>
              <h2 class="section-title">Platform Team Capabilities</h2>
              <div class="section-content">
                  <p>Platform teams provide:</p>
                  <ul>
                      <li><strong>CI/CD templates</strong></li>
                      <li><strong>Infrastructure modules</strong></li>
                      <li><strong>Service templates</strong></li>
                      <li><strong>Security scanning</strong></li>
                      <li><strong>Observability stacks</strong></li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-dx-platform" viewBox="0 0 240 180" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <!-- Platform Team as foundation layer (centered) -->
                  <rect x="20" y="140" width="200" height="35" rx="6" fill="#0f2a3d" stroke="#a855f7" stroke-width="2"/>
                  <text x="120" y="162" text-anchor="middle" fill="#a855f7" font-size="10" font-weight="bold">Platform Team</text>

                  <!-- Capabilities as services (5 modules, centered: total width 190px, start at 25) -->
                  <rect x="25" y="85" width="36" height="45" rx="4" fill="#0f2a3d" stroke="#22d3ee" stroke-width="1.5"/>
                  <text x="43" y="105" text-anchor="middle" fill="#22d3ee" font-size="7">CI/CD</text>
                  <text x="43" y="118" text-anchor="middle" fill="#64748b" font-size="6">Templates</text>

                  <rect x="65" y="85" width="36" height="45" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="1.5"/>
                  <text x="83" y="105" text-anchor="middle" fill="#14b8a6" font-size="7">Infra</text>
                  <text x="83" y="118" text-anchor="middle" fill="#64748b" font-size="6">Modules</text>

                  <rect x="105" y="85" width="36" height="45" rx="4" fill="#0f2a3d" stroke="#f97316" stroke-width="1.5"/>
                  <text x="123" y="105" text-anchor="middle" fill="#f97316" font-size="7">Observe</text>
                  <text x="123" y="118" text-anchor="middle" fill="#64748b" font-size="6">Stack</text>

                  <rect x="145" y="85" width="36" height="45" rx="4" fill="#0f2a3d" stroke="#64748b" stroke-width="1.5"/>
                  <text x="163" y="105" text-anchor="middle" fill="#94a3b8" font-size="7">Security</text>
                  <text x="163" y="118" text-anchor="middle" fill="#64748b" font-size="6">Scan</text>

                  <rect x="185" y="85" width="36" height="45" rx="4" fill="#0f2a3d" stroke="#64748b" stroke-width="1.5"/>
                  <text x="203" y="105" text-anchor="middle" fill="#94a3b8" font-size="7">Service</text>
                  <text x="203" y="118" text-anchor="middle" fill="#64748b" font-size="6">Template</text>

                  <!-- Stream-aligned teams on top (centered) -->
                  <rect x="35" y="15" width="75" height="38" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="2"/>
                  <text x="72" y="32" text-anchor="middle" fill="#14b8a6" font-size="8">Stream Team A</text>
                  <text x="72" y="45" text-anchor="middle" fill="#64748b" font-size="6">Product</text>

                  <rect x="130" y="15" width="75" height="38" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="2"/>
                  <text x="167" y="32" text-anchor="middle" fill="#14b8a6" font-size="8">Stream Team B</text>
                  <text x="167" y="45" text-anchor="middle" fill="#64748b" font-size="6">Product</text>

                  <!-- Lines from capabilities to teams (~75% of relations, no arrows) -->
                  <!-- CI/CD to Team A and Team B -->
                  <line x1="43" y1="85" x2="55" y2="53" stroke="#a855f7" stroke-width="1" stroke-dasharray="3 2"/>
                  <line x1="43" y1="85" x2="145" y2="53" stroke="#a855f7" stroke-width="1" stroke-dasharray="3 2"/>

                  <!-- Infra to Team A only -->
                  <line x1="83" y1="85" x2="72" y2="53" stroke="#a855f7" stroke-width="1" stroke-dasharray="3 2"/>

                  <!-- Observe to Team A and Team B -->
                  <line x1="123" y1="85" x2="95" y2="53" stroke="#a855f7" stroke-width="1" stroke-dasharray="3 2"/>
                  <line x1="123" y1="85" x2="155" y2="53" stroke="#a855f7" stroke-width="1" stroke-dasharray="3 2"/>

                  <!-- Security to Team B only -->
                  <line x1="163" y1="85" x2="167" y2="53" stroke="#a855f7" stroke-width="1" stroke-dasharray="3 2"/>

                  <!-- Service Template to Team B only -->
                  <line x1="203" y1="85" x2="190" y2="53" stroke="#a855f7" stroke-width="1" stroke-dasharray="3 2"/>

                  <!-- Label -->
                  <text x="120" y="72" text-anchor="middle" fill="#a855f7" font-size="6" font-style="italic">self-service APIs</text>
              </svg>
              <div class="graphic-caption">Platform as a product</div>
          </div>
      </div>

      <div class="content-section" id="dx-onboarding">
          <div class="section-text">
              <div class="section-label">Fast Onboarding</div>
              <h2 class="section-title">Reducing Time to Productivity</h2>
              <div class="section-content">
                  <ul>
                      <li><strong>One-command local setup</strong></li>
                      <li><strong>Golden path documentation</strong></li>
                      <li><strong>Service catalog</strong></li>
                      <li><strong>Clear ownership metadata</strong></li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-dx-onboarding" viewBox="0 0 240 170" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <!-- Timeline arrow -->
                  <line x1="20" y1="85" x2="220" y2="85" stroke="#64748b" stroke-width="2"/>
                  <polygon points="220,85 212,80 212,90" fill="#64748b"/>

                  <!-- Day 1 -->
                  <circle cx="45" cy="85" r="6" fill="#22d3ee"/>
                  <text x="45" y="70" text-anchor="middle" fill="#22d3ee" font-size="7" font-weight="bold">Day 1</text>
                  <rect x="20" y="100" width="50" height="35" rx="3" fill="#0f2a3d" stroke="#22d3ee" stroke-width="1"/>
                  <text x="45" y="115" text-anchor="middle" fill="#22d3ee" font-size="6">make setup</text>
                  <text x="45" y="127" text-anchor="middle" fill="#64748b" font-size="5">Local env</text>

                  <!-- Day 2-3 -->
                  <circle cx="100" cy="85" r="6" fill="#14b8a6"/>
                  <text x="100" y="70" text-anchor="middle" fill="#14b8a6" font-size="7" font-weight="bold">Day 2-3</text>
                  <rect x="75" y="100" width="50" height="35" rx="3" fill="#0f2a3d" stroke="#14b8a6" stroke-width="1"/>
                  <text x="100" y="115" text-anchor="middle" fill="#14b8a6" font-size="6">Golden Path</text>
                  <text x="100" y="127" text-anchor="middle" fill="#64748b" font-size="5">Docs & Catalog</text>

                  <!-- Week 1 -->
                  <circle cx="155" cy="85" r="6" fill="#f97316"/>
                  <text x="155" y="70" text-anchor="middle" fill="#f97316" font-size="7" font-weight="bold">Week 1</text>
                  <rect x="130" y="100" width="50" height="35" rx="3" fill="#0f2a3d" stroke="#f97316" stroke-width="1"/>
                  <text x="155" y="115" text-anchor="middle" fill="#f97316" font-size="6">First PR</text>
                  <text x="155" y="127" text-anchor="middle" fill="#64748b" font-size="5">Merged</text>

                  <!-- Productive -->
                  <circle cx="200" cy="85" r="8" fill="#a855f7"/>
                  <path d="M196 85 L199 88 L205 82" stroke="#0f2a3d" stroke-width="2" fill="none"/>
                  <text x="200" y="70" text-anchor="middle" fill="#a855f7" font-size="7" font-weight="bold">Productive</text>

                  <!-- Labels -->
                  <text x="120" y="155" text-anchor="middle" fill="#94a3b8" font-size="7">Time to first contribution</text>
                  <text x="120" y="20" text-anchor="middle" fill="#64748b" font-size="8">New Developer Journey</text>
              </svg>
              <div class="graphic-caption">Onboarding timeline</div>
          </div>
      </div>

      <div class="content-section" id="dx-metrics">
          <div class="section-text">
              <div class="section-label">Measuring DX</div>
              <h2 class="section-title">Data-Driven Improvement</h2>
              <div class="section-content">
                  <ul>
                      <li><strong>DORA metrics</strong></li>
                      <li><strong>Selected SPACE signals</strong></li>
                      <li><strong>Developer surveys</strong></li>
                      <li><strong>PR Cycle Time</strong></li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-dx-dora" viewBox="0 0 240 160" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <rect x="20" y="20" width="95" height="55" rx="4" fill="#0f2a3d" stroke="#22d3ee" stroke-width="1.5"/>
                  <text x="67" y="42" text-anchor="middle" fill="#22d3ee" font-size="9">Deploy Freq</text>
                  <text x="67" y="60" text-anchor="middle" fill="#64748b" font-size="16">↑</text>
                  <rect x="125" y="20" width="95" height="55" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="1.5"/>
                  <text x="172" y="42" text-anchor="middle" fill="#14b8a6" font-size="9">Lead Time</text>
                  <text x="172" y="60" text-anchor="middle" fill="#64748b" font-size="16">↓</text>
                  <rect x="20" y="85" width="95" height="55" rx="4" fill="#0f2a3d" stroke="#f97316" stroke-width="1.5"/>
                  <text x="67" y="107" text-anchor="middle" fill="#f97316" font-size="9">MTTR</text>
                  <text x="67" y="125" text-anchor="middle" fill="#64748b" font-size="16">↓</text>
                  <rect x="125" y="85" width="95" height="55" rx="4" fill="#0f2a3d" stroke="#a855f7" stroke-width="1.5"/>
                  <text x="172" y="107" text-anchor="middle" fill="#a855f7" font-size="9">Change Fail %</text>
                  <text x="172" y="125" text-anchor="middle" fill="#64748b" font-size="16">↓</text>
              </svg>
              <div class="graphic-caption">DORA metrics</div>
          </div>
      </div>

  - label: "Leadership"
    title: "Leadership System"
    subtitle: "Building leadership capacity at scale"
    content: |
      <div class="content-section" id="leadership-em">
          <div class="section-text">
              <div class="section-label">Managing Managers</div>
              <h2 class="section-title">Engineering Manager Development</h2>
              <div class="section-content">
                  <ul>
                      <li><strong>Regular EM forums</strong></li>
                      <li><strong>Peer coaching</strong></li>
                      <li><strong>Leadership expectations framework</strong></li>
                      <li><strong>Calibration on delivery health</strong></li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-leadership-em" viewBox="0 0 240 160" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <circle cx="120" cy="50" r="25" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2"/>
                  <text x="120" y="55" text-anchor="middle" fill="#22d3ee" font-size="10">Director</text>
                  <circle cx="60" cy="120" r="22" fill="#0f2a3d" stroke="#f97316" stroke-width="2"/>
                  <text x="60" y="125" text-anchor="middle" fill="#f97316" font-size="9">EM</text>
                  <circle cx="120" cy="120" r="22" fill="#0f2a3d" stroke="#f97316" stroke-width="2"/>
                  <text x="120" y="125" text-anchor="middle" fill="#f97316" font-size="9">EM</text>
                  <circle cx="180" cy="120" r="22" fill="#0f2a3d" stroke="#f97316" stroke-width="2"/>
                  <text x="180" y="125" text-anchor="middle" fill="#f97316" font-size="9">EM</text>
                  <line x1="100" y1="68" x2="70" y2="100" stroke="#64748b" stroke-width="1.5"/>
                  <line x1="120" y1="75" x2="120" y2="98" stroke="#64748b" stroke-width="1.5"/>
                  <line x1="140" y1="68" x2="170" y2="100" stroke="#64748b" stroke-width="1.5"/>
                  <path d="M82 120 C100 100, 140 100, 158 120" stroke="#14b8a6" stroke-width="1.5" stroke-dasharray="4 2" fill="none"/>
                  <text x="120" y="95" text-anchor="middle" fill="#14b8a6" font-size="8">Peer Coaching</text>
              </svg>
              <div class="graphic-caption">EM development network</div>
          </div>
      </div>

      <div class="content-section" id="leadership-capability">
          <div class="section-text">
              <div class="section-label">Capability Building</div>
              <h2 class="section-title">Growing Technical Leadership</h2>
              <div class="section-content">
                  <ul>
                      <li><strong>Career ladders</strong></li>
                      <li><strong>Staff / Principal communities</strong></li>
                      <li><strong>Coaching programs</strong></li>
                      <li><strong>Internal training</strong></li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-leadership-ladder" viewBox="0 0 240 180" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <line x1="80" y1="160" x2="80" y2="20" stroke="#64748b" stroke-width="3"/>
                  <line x1="160" y1="160" x2="160" y2="20" stroke="#64748b" stroke-width="3"/>
                  <rect x="80" y="130" width="80" height="20" rx="2" fill="#0f2a3d" stroke="#14b8a6" stroke-width="2"/>
                  <text x="120" y="144" text-anchor="middle" fill="#14b8a6" font-size="9">Engineer</text>
                  <rect x="80" y="100" width="80" height="20" rx="2" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2"/>
                  <text x="120" y="114" text-anchor="middle" fill="#22d3ee" font-size="9">Senior</text>
                  <rect x="80" y="70" width="80" height="20" rx="2" fill="#0f2a3d" stroke="#f97316" stroke-width="2"/>
                  <text x="120" y="84" text-anchor="middle" fill="#f97316" font-size="9">Staff</text>
                  <rect x="80" y="40" width="80" height="20" rx="2" fill="#0f2a3d" stroke="#a855f7" stroke-width="2"/>
                  <text x="120" y="54" text-anchor="middle" fill="#a855f7" font-size="9">Principal</text>
              </svg>
              <div class="graphic-caption">Career ladder</div>
          </div>
      </div>

      <div class="content-section" id="leadership-director">
          <div class="section-text">
              <div class="section-label">Director Focus</div>
              <h2 class="section-title">Strategic Leadership Priorities</h2>
              <div class="section-content">
                  <ul>
                      <li><strong>System health</strong></li>
                      <li><strong>Org design</strong></li>
                      <li><strong>Talent density</strong></li>
                      <li><strong>Strategic bets</strong></li>
                      <li><strong>Removing structural bottlenecks</strong></li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-leadership-focus" viewBox="0 0 240 160" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <circle cx="120" cy="85" r="55" fill="none" stroke="#22d3ee" stroke-width="2"/>
                  <circle cx="120" cy="85" r="35" fill="none" stroke="#f97316" stroke-width="2"/>
                  <circle cx="120" cy="85" r="15" fill="#0f2a3d" stroke="#a855f7" stroke-width="2"/>
                  <text x="120" y="89" text-anchor="middle" fill="#a855f7" font-size="7">Focus</text>
                  <text x="120" y="62" text-anchor="middle" fill="#f97316" font-size="8">Strategy</text>
                  <text x="120" y="152" text-anchor="middle" fill="#22d3ee" font-size="8">System Health</text>
              </svg>
              <div class="graphic-caption">Strategic focus areas</div>
          </div>
      </div>

  - label: "Rollout"
    title: "Change & Rollout Strategy"
    subtitle: "12–18 month transformation approach"
    content: |
      <div class="content-section" id="rollout-phases">
          <div class="section-text">
              <div class="section-label">Incremental Rollout</div>
              <h2 class="section-title">Three-Phase Approach</h2>
              <div class="timeline">
                  <div class="timeline-item">
                      <div class="timeline-date">Phase 1</div>
                      <div class="timeline-title">Discover</div>
                      <div class="timeline-desc">Start with pilot domains, map context, validate approach</div>
                  </div>
                  <div class="timeline-item">
                      <div class="timeline-date">Phase 2</div>
                      <div class="timeline-title">Stabilize</div>
                      <div class="timeline-desc">Validate with metrics, refine processes, build platform capabilities</div>
                  </div>
                  <div class="timeline-item">
                      <div class="timeline-date">Phase 3</div>
                      <div class="timeline-title">Scale</div>
                      <div class="timeline-desc">Expand gradually, continuous improvement, share learnings</div>
                  </div>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-rollout-timeline" viewBox="0 0 240 170" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <line x1="30" y1="70" x2="210" y2="70" stroke="#64748b" stroke-width="2"/>
                  <polygon points="210,70 200,65 200,75" fill="#64748b"/>
                  <circle cx="60" cy="70" r="22" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2"/>
                  <text x="60" y="75" text-anchor="middle" fill="#22d3ee" font-size="14">1</text>
                  <text x="60" y="35" text-anchor="middle" fill="#22d3ee" font-size="9">Discover</text>
                  <circle cx="120" cy="70" r="22" fill="#0f2a3d" stroke="#f97316" stroke-width="2"/>
                  <text x="120" y="75" text-anchor="middle" fill="#f97316" font-size="14">2</text>
                  <text x="120" y="35" text-anchor="middle" fill="#f97316" font-size="9">Stabilize</text>
                  <circle cx="180" cy="70" r="22" fill="#0f2a3d" stroke="#14b8a6" stroke-width="2"/>
                  <text x="180" y="75" text-anchor="middle" fill="#14b8a6" font-size="14">3</text>
                  <text x="180" y="35" text-anchor="middle" fill="#14b8a6" font-size="9">Scale</text>
                  <path d="M180 92 C180 140, 60 140, 60 92" stroke="#a855f7" stroke-width="1.5" stroke-dasharray="4 2" fill="none"/>
                  <polygon points="60,92 55,102 65,102" fill="#a855f7"/>
                  <text x="120" y="158" text-anchor="middle" fill="#a855f7" font-size="9">Iterate &amp; Improve</text>
              </svg>
              <div class="graphic-caption">Phased rollout</div>
          </div>
      </div>

      <div class="content-section" id="rollout-feedback">
          <div class="section-text">
              <div class="section-label">Feedback Loops</div>
              <h2 class="section-title">Continuous Adaptation</h2>
              <div class="section-content">
                  <ul>
                      <li><strong>Quarterly reviews</strong></li>
                      <li><strong>Health metrics dashboards</strong></li>
                      <li><strong>Retrospectives at org level</strong></li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-rollout-feedback" viewBox="0 0 240 160" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <!-- Feedback cycle: Measure → Review → Adapt → Implement -->
                  <!-- Top: Measure -->
                  <rect x="85" y="10" width="70" height="30" rx="4" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2"/>
                  <text x="120" y="29" text-anchor="middle" fill="#22d3ee" font-size="8">Measure</text>

                  <!-- Right: Review -->
                  <rect x="170" y="60" width="60" height="30" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="2"/>
                  <text x="200" y="79" text-anchor="middle" fill="#14b8a6" font-size="8">Review</text>

                  <!-- Bottom: Adapt -->
                  <rect x="85" y="110" width="70" height="30" rx="4" fill="#0f2a3d" stroke="#f97316" stroke-width="2"/>
                  <text x="120" y="129" text-anchor="middle" fill="#f97316" font-size="8">Adapt</text>

                  <!-- Left: Implement -->
                  <rect x="10" y="60" width="60" height="30" rx="4" fill="#0f2a3d" stroke="#a855f7" stroke-width="2"/>
                  <text x="40" y="79" text-anchor="middle" fill="#a855f7" font-size="8">Implement</text>

                  <!-- Arrows connecting the cycle (clockwise, curved, center-aligned) -->
                  <!-- Measure center: x=120, y=25. Review center: x=200, y=75. Adapt center: x=120, y=125. Implement center: x=40, y=75 -->

                  <!-- Measure → Review (right edge x=155 to top edge y=60) -->
                  <path d="M155 25 Q200 25, 200 60" stroke="#64748b" stroke-width="1.5" fill="none"/>
                  <polygon points="200,60 196,52 204,52" fill="#64748b"/>

                  <!-- Review → Adapt (bottom edge y=90 to right edge x=155) -->
                  <path d="M200 90 Q200 125, 155 125" stroke="#64748b" stroke-width="1.5" fill="none"/>
                  <polygon points="155,125 163,121 163,129" fill="#64748b"/>

                  <!-- Adapt → Implement (left edge x=85 to bottom edge y=90) -->
                  <path d="M85 125 Q40 125, 40 90" stroke="#64748b" stroke-width="1.5" fill="none"/>
                  <polygon points="40,90 36,98 44,98" fill="#64748b"/>

                  <!-- Implement → Measure (top edge y=60 to left edge x=85) -->
                  <path d="M40 60 Q40 25, 85 25" stroke="#64748b" stroke-width="1.5" fill="none"/>
                  <polygon points="85,25 77,21 77,29" fill="#64748b"/>

                  <!-- Center label -->
                  <text x="120" y="75" text-anchor="middle" fill="#64748b" font-size="7">Quarterly</text>
              </svg>
              <div class="graphic-caption">Feedback loop cycle</div>
          </div>
      </div>

      <div class="content-section" id="rollout-communication">
          <div class="section-text">
              <div class="section-label">Communication</div>
              <h2 class="section-title">Transparent Change Management</h2>
              <div class="section-content">
                  <ul>
                      <li><strong>Clear intent</strong></li>
                      <li><strong>Transparent progress</strong></li>
                      <li><strong>Shared learnings</strong></li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-rollout-comms" viewBox="0 0 240 140" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <circle cx="120" cy="50" r="25" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2"/>
                  <text x="120" y="55" text-anchor="middle" fill="#22d3ee" font-size="9">Leader</text>
                  <line x1="100" y1="70" x2="60" y2="100" stroke="#64748b" stroke-width="1.5"/>
                  <line x1="120" y1="75" x2="120" y2="100" stroke="#64748b" stroke-width="1.5"/>
                  <line x1="140" y1="70" x2="180" y2="100" stroke="#64748b" stroke-width="1.5"/>
                  <circle cx="60" cy="110" r="15" fill="#0f2a3d" stroke="#64748b" stroke-width="1.5"/>
                  <circle cx="120" cy="115" r="15" fill="#0f2a3d" stroke="#64748b" stroke-width="1.5"/>
                  <circle cx="180" cy="110" r="15" fill="#0f2a3d" stroke="#64748b" stroke-width="1.5"/>
                  <path d="M75 110 L105 115" stroke="#14b8a6" stroke-width="1" stroke-dasharray="3 2"/>
                  <path d="M135 115 L165 110" stroke="#14b8a6" stroke-width="1" stroke-dasharray="3 2"/>
              </svg>
              <div class="graphic-caption">Communication flow</div>
          </div>
      </div>

  - label: "Outcomes"
    title: "Measurable Outcomes"
    subtitle: "Results across three dimensions"
    content: |
      <div class="stats-grid">
          <div class="stat-card"><div class="stat-value">Org</div><div class="stat-label">Predictable Delivery</div></div>
          <div class="stat-card"><div class="stat-value">Tech</div><div class="stat-label">Reduced Coupling</div></div>
          <div class="stat-card"><div class="stat-value">People</div><div class="stat-label">Higher Engagement</div></div>
      </div>

      <div class="content-section" id="outcomes-org">
          <div class="section-text">
              <div class="section-label">Organizational</div>
              <h2 class="section-title">Organizational Outcomes</h2>
              <div class="section-content">
                  <ul>
                      <li><strong>Predictable delivery</strong></li>
                      <li><strong>Clear ownership</strong></li>
                      <li><strong>Lower leadership load</strong></li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-outcomes-org" viewBox="0 0 240 140" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <rect x="30" y="30" width="180" height="80" rx="6" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2"/>
                  <line x1="50" y1="90" x2="70" y2="70" stroke="#22d3ee" stroke-width="2"/>
                  <line x1="70" y1="70" x2="90" y2="80" stroke="#22d3ee" stroke-width="2"/>
                  <line x1="90" y1="80" x2="110" y2="60" stroke="#22d3ee" stroke-width="2"/>
                  <line x1="110" y1="60" x2="130" y2="65" stroke="#22d3ee" stroke-width="2"/>
                  <line x1="130" y1="65" x2="150" y2="50" stroke="#22d3ee" stroke-width="2"/>
                  <line x1="150" y1="50" x2="170" y2="55" stroke="#22d3ee" stroke-width="2"/>
                  <line x1="170" y1="55" x2="190" y2="45" stroke="#14b8a6" stroke-width="3"/>
                  <circle cx="190" cy="45" r="5" fill="#14b8a6"/>
                  <text x="120" y="125" text-anchor="middle" fill="#64748b" font-size="9">Improving predictability</text>
              </svg>
              <div class="graphic-caption">Delivery trend</div>
          </div>
      </div>

      <div class="content-section" id="outcomes-tech">
          <div class="section-text">
              <div class="section-label">Technical</div>
              <h2 class="section-title">Technical Outcomes</h2>
              <div class="section-content">
                  <ul>
                      <li><strong>Safer deployments</strong></li>
                      <li><strong>Reduced coupling</strong></li>
                      <li><strong>Higher reliability</strong></li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-outcomes-tech" viewBox="0 0 240 140" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <rect x="40" y="30" width="70" height="40" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="2"/>
                  <text x="75" y="55" text-anchor="middle" fill="#14b8a6" font-size="10">Service A</text>
                  <rect x="130" y="30" width="70" height="40" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="2"/>
                  <text x="165" y="55" text-anchor="middle" fill="#14b8a6" font-size="10">Service B</text>
                  <rect x="40" y="90" width="70" height="40" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="2"/>
                  <text x="75" y="115" text-anchor="middle" fill="#14b8a6" font-size="10">Service C</text>
                  <rect x="130" y="90" width="70" height="40" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="2"/>
                  <text x="165" y="115" text-anchor="middle" fill="#14b8a6" font-size="10">Service D</text>
                  <line x1="110" y1="50" x2="130" y2="50" stroke="#64748b" stroke-width="1" stroke-dasharray="4 2"/>
                  <line x1="75" y1="70" x2="75" y2="90" stroke="#64748b" stroke-width="1" stroke-dasharray="4 2"/>
              </svg>
              <div class="graphic-caption">Decoupled services</div>
          </div>
      </div>

      <div class="content-section" id="outcomes-people">
          <div class="section-text">
              <div class="section-label">People</div>
              <h2 class="section-title">People Outcomes</h2>
              <div class="section-content">
                  <ul>
                      <li><strong>Higher engagement</strong></li>
                      <li><strong>Faster onboarding</strong></li>
                      <li><strong>Strong internal mobility</strong></li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-outcomes-people" viewBox="0 0 240 140" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <circle cx="80" cy="70" r="30" fill="#0f2a3d" stroke="#f97316" stroke-width="2"/>
                  <circle cx="80" cy="60" r="10" fill="none" stroke="#f97316" stroke-width="1.5"/>
                  <path d="M65 78 L80 90 L95 78" stroke="#f97316" stroke-width="1.5" fill="none"/>
                  <circle cx="160" cy="70" r="30" fill="#0f2a3d" stroke="#f97316" stroke-width="2"/>
                  <circle cx="160" cy="60" r="10" fill="none" stroke="#f97316" stroke-width="1.5"/>
                  <path d="M145 78 L160 90 L175 78" stroke="#f97316" stroke-width="1.5" fill="none"/>
                  <path d="M110 70 L130 70" stroke="#14b8a6" stroke-width="2"/>
                  <polygon points="130,70 124,66 124,74" fill="#14b8a6"/>
                  <text x="120" y="125" text-anchor="middle" fill="#64748b" font-size="9">Internal mobility</text>
              </svg>
              <div class="graphic-caption">Team growth</div>
          </div>
      </div>

  - label: "My Role"
    title: "My Role in Such Transformations"
    subtitle: "How I operate"
    content: |
      <div class="content-section" id="role-overview">
          <div class="section-text">
              <div class="section-content">
                  <p>In similar transformations I typically operate as:</p>
                  <ul>
                      <li><strong>Architect</strong> of the target org model</li>
                      <li><strong>Coach</strong> of Engineering Managers</li>
                      <li><strong>Driver</strong> of platform strategy</li>
                      <li><strong>Partner</strong> to Product leadership</li>
                      <li><strong>Owner</strong> of rollout and change management</li>
                  </ul>
              </div>
          </div>
          <div class="section-graphic">
              <svg id="graphic-role-overview" viewBox="0 0 240 180" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <circle cx="120" cy="70" r="30" fill="#0f2a3d" stroke="#22d3ee" stroke-width="2"/>
                  <circle cx="120" cy="58" r="10" fill="none" stroke="#22d3ee" stroke-width="1.5"/>
                  <path d="M105 78 L120 92 L135 78" stroke="#22d3ee" stroke-width="1.5" fill="none"/>
                  <line x1="95" y1="90" x2="55" y2="120" stroke="#64748b" stroke-width="1.5"/>
                  <line x1="120" y1="100" x2="120" y2="130" stroke="#64748b" stroke-width="1.5"/>
                  <line x1="145" y1="90" x2="185" y2="120" stroke="#64748b" stroke-width="1.5"/>
                  <rect x="25" y="125" width="60" height="25" rx="4" fill="#0f2a3d" stroke="#f97316" stroke-width="1.5"/>
                  <text x="55" y="142" text-anchor="middle" fill="#f97316" font-size="9">Architect</text>
                  <rect x="90" y="135" width="60" height="25" rx="4" fill="#0f2a3d" stroke="#14b8a6" stroke-width="1.5"/>
                  <text x="120" y="152" text-anchor="middle" fill="#14b8a6" font-size="9">Coach</text>
                  <rect x="155" y="125" width="60" height="25" rx="4" fill="#0f2a3d" stroke="#a855f7" stroke-width="1.5"/>
                  <text x="185" y="142" text-anchor="middle" fill="#a855f7" font-size="9">Partner</text>
              </svg>
              <div class="graphic-caption">Leadership roles</div>
          </div>
      </div>

      <div class="highlight-box">
          <div class="highlight-title">💬 Want to Discuss Your Scaling Challenge?</div>
          <p>I'm happy to share more details or discuss how similar approaches might work for your organization.</p>
      </div>
---
