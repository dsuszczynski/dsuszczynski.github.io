---
title: "FinCompare: From Technical Debt to DORA Excellence"
category: Technology Transformation
excerpt: "How we transformed a struggling engineering organization, achieved elite-level DORA metrics in 7 months, and built a culture of continuous improvement."
slug: fincompare-transformation
stats:
  - value: "7 months"
    label: "Transformation Time"
  - value: "40%"
    label: "Faster Delivery"
  - value: "30+"
    label: "Team Members"
slides:
  - label: "Overview"
    title: "FinCompare: From Technical Debt to DORA Excellence"
    subtitle: "A 7-month transformation of a fintech engineering organization"
    content: |
      <div class="stats-grid">
          <div class="stat-card"><div class="stat-value">7</div><div class="stat-label">Months to Elite DORA</div></div>
          <div class="stat-card"><div class="stat-value">30+</div><div class="stat-label">Team Members</div></div>
          <div class="stat-card"><div class="stat-value">40%</div><div class="stat-label">Faster Delivery</div></div>
          <div class="stat-card"><div class="stat-value">ISO</div><div class="stat-label">27001 Certified</div></div>
      </div>

      <div class="content-section">
          <div class="section-label">The Challenge</div>
          <h2 class="section-title">What We Were Facing</h2>
          <div class="section-content">
              <p>When I joined FinCompare as Head of Technology in May 2023, the engineering organization was at a critical inflection point. Years of rapid growth had left behind significant technical debt.</p>
              <ul>
                  <li><strong>Critical technical debt</strong> accumulated over years</li>
                  <li><strong>No clear team boundaries</strong> leading to context-switching</li>
                  <li><strong>Deployment anxiety</strong> with releases every 2-3 weeks</li>
                  <li><strong>High turnover</strong> among senior engineers</li>
              </ul>
          </div>
      </div>

      <div class="scroll-indicator">
          <span>Scroll for details</span>
          <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M12 5v14M5 12l7 7 7-7"/></svg>
      </div>

      <div class="content-section">
          <div class="section-label">The Approach</div>
          <h2 class="section-title">Our Transformation Strategy</h2>
          <div class="section-content">
              <p>We adopted an incremental transformation strategy built on three pillars:</p>
              <ul>
                  <li><strong>Team Topologies</strong> — Restructuring teams around business domains</li>
                  <li><strong>Domain-Driven Design</strong> — Creating clear bounded contexts</li>
                  <li><strong>Platform Engineering</strong> — Reducing cognitive load through self-service</li>
              </ul>
          </div>
      </div>

  - label: "Discovery"
    title: "Understanding the Domain"
    subtitle: "Weeks 1-4: Mapping the business and technical landscape"
    content: |
      <div class="content-section">
          <div class="section-label">Event Storming</div>
          <h2 class="section-title">Collaborative Domain Discovery</h2>
          <div class="section-content">
              <p>We kicked off with a series of Event Storming workshops involving engineers, product managers, and business stakeholders. Over two weeks, we mapped the entire loan application journey.</p>
              
              <div class="highlight-box">
                  <div class="highlight-title">💡 Key Insight</div>
                  <p>Event Storming revealed that what we thought was one "loan application" domain was actually four distinct bounded contexts with different rates of change.</p>
              </div>
          </div>
      </div>

      <div class="content-section">
          <div class="section-label">Findings</div>
          <h2 class="section-title">What We Discovered</h2>
          <div class="section-content">
              <ul>
                  <li><strong>4 core bounded contexts</strong> identified</li>
                  <li><strong>12 integration points</strong> needing clear contracts</li>
                  <li><strong>3 areas of significant technical debt</strong></li>
                  <li><strong>2 missing capabilities</strong> every team needed</li>
              </ul>
          </div>
      </div>

  - label: "Implementation"
    title: "Executing the Transformation"
    subtitle: "Weeks 5-20: Restructuring teams and systems"
    content: |
      <div class="content-section">
          <div class="section-label">Timeline</div>
          <h2 class="section-title">Key Milestones</h2>
          <div class="timeline">
              <div class="timeline-item">
                  <div class="timeline-date">Week 5-6</div>
                  <div class="timeline-title">New Team Structure Announced</div>
                  <div class="timeline-desc">Four stream-aligned teams + one platform team formed</div>
              </div>
              <div class="timeline-item">
                  <div class="timeline-date">Week 7-8</div>
                  <div class="timeline-title">Platform Foundation</div>
                  <div class="timeline-desc">CI/CD pipelines standardized, observability deployed</div>
              </div>
              <div class="timeline-item">
                  <div class="timeline-date">Week 9-12</div>
                  <div class="timeline-title">Domain Boundaries Enforced</div>
                  <div class="timeline-desc">API contracts defined, database schemas separated</div>
              </div>
              <div class="timeline-item">
                  <div class="timeline-date">Week 13-16</div>
                  <div class="timeline-title">Enabling Team Active</div>
                  <div class="timeline-desc">DDD coaching, testing workshops, architecture reviews</div>
              </div>
              <div class="timeline-item">
                  <div class="timeline-date">Week 17-20</div>
                  <div class="timeline-title">Continuous Improvement</div>
                  <div class="timeline-desc">Weekly retrospectives, DORA metrics tracking</div>
              </div>
          </div>
      </div>

  - label: "Results"
    title: "Measurable Outcomes"
    subtitle: "What we achieved in 7 months"
    content: |
      <div class="content-section">
          <div class="section-label">DORA Metrics</div>
          <h2 class="section-title">Before & After</h2>
          <div class="stats-grid">
              <div class="stat-card"><div class="stat-value">15→2</div><div class="stat-label">Days Lead Time</div></div>
              <div class="stat-card"><div class="stat-value">2→12</div><div class="stat-label">Deploys per Week</div></div>
              <div class="stat-card"><div class="stat-value">8%→1%</div><div class="stat-label">Change Failure Rate</div></div>
              <div class="stat-card"><div class="stat-value">4h→30m</div><div class="stat-label">Mean Time to Recovery</div></div>
          </div>
      </div>

      <div class="content-section">
          <div class="section-label">Business Impact</div>
          <h2 class="section-title">Beyond Technical Metrics</h2>
          <div class="section-content">
              <ul>
                  <li><strong>40% faster time-to-market</strong> for new features</li>
                  <li><strong>Zero voluntary turnover</strong> during transformation</li>
                  <li><strong>ISO 27001 certification</strong> achieved</li>
                  <li><strong>3x increase in internal promotions</strong></li>
              </ul>
          </div>
      </div>

  - label: "Lessons Learned"
    title: "What I'd Do Differently"
    subtitle: "Reflections and advice for similar transformations"
    content: |
      <div class="content-section">
          <div class="section-label">Key Takeaways</div>
          <h2 class="section-title">What Worked Well</h2>
          <div class="section-content">
              <ul>
                  <li><strong>Starting with people, not technology</strong></li>
                  <li><strong>Making progress visible</strong> — Weekly demos and dashboards</li>
                  <li><strong>Incremental change</strong> — Continuous improvement over revolution</li>
                  <li><strong>Platform investment</strong> — Self-service capabilities paid dividends</li>
              </ul>
          </div>
      </div>

      <div class="highlight-box">
          <div class="highlight-title">💬 Final Thought</div>
          <p>Technology transformation is fundamentally a people challenge. The best architecture means nothing if your teams don't believe in it. Invest in communication, celebrate wins, and be patient.</p>
      </div>

      <div class="content-section">
          <div class="section-label">Get in Touch</div>
          <h2 class="section-title">Want to Discuss Your Transformation?</h2>
          <div class="section-content">
              <p>I'm happy to share more details or discuss how similar approaches might work for your organization.</p>
              <p><a href="mailto:daniel@suszczynski.dev">daniel@suszczynski.dev</a> · <a href="https://linkedin.com/in/suszczynski">LinkedIn</a></p>
          </div>
      </div>
---
