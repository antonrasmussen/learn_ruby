# A Ruby‑Learning Journey 📚💎

A public notebook of **everything** I build while teaching myself Ruby—from humble script experiments to fully‑fledged side projects.

**Project 0** is a CLI time‑tracker that logs my study sessions to RescueTime so I never lose sight of the hours I’m investing.

---

## Table of Contents
1. [Repository Layout](#repository-layout)
2. [Project 0 — Learn Ruby Time Tracker](#project-0--learn-ruby-time-tracker)
   * [Why?](#why)
   * [Features](#features)
   * [Prerequisites](#prerequisites)
   * [Setup](#setup)
   * [Usage](#usage)
   * [Daily‑Commit Workflow](#daily-commit-workflow)
3. [Planned & In‑Progress Projects](#planned--in-progress-projects)
4. [Roadmap](#roadmap)
5. [Contributing](#contributing)
6. [License](#license)
7. [Acknowledgements](#acknowledgements)

---

## Repository Layout

```text
/
├── project_0_time_tracker/     # CLI that logs study sessions to RescueTime
│   ├── learn_ruby.rb
│   ├── Gemfile
│   └── ...
├── project_1_...?              # next project goes here
├── project_2_...?              # and so on
└── README.md                   # you are here
```

Each directory is self‑contained with its own README (or section below) so you can jump straight to the code you care about.

---

## Project 0 — Learn Ruby Time Tracker ⏳🛠️

### Why?

Learning sticks when you can **measure the effort**. This tiny CLI:

* **Starts / stops** timers with a keystroke.
* **Posts** each session to RescueTime via the Offline Time API (`activity_name: "Learning Ruby"`).
* **Reports** today’s total so you can brag (or nudge yourself).
* Syncs nicely with **daily GitHub commits** so code *and* study time tell the same story.

### Features

| Command           | What it does                                               |
| ----------------- | ---------------------------------------------------------- |
| **Start session** | Captures a timestamp and waits until you stop.             |
| **Stop session**  | Calculates minutes, logs them to RescueTime.               |
| **Report today**  | Fetches total “Learning Ruby” minutes for the current day. |
| **Exit**          | Ends the CLI loop.                                         |

### Prerequisites

* **RescueTime Premium** (Offline Time endpoint is premium only)
* **API Key** from **Account → API Key Management**
* **Ruby 3.1+** (MRI) & **Bundler**

### Setup

```bash
cd project_0

# install gems
bundle install

# add your key
cp .env.example .env   # edit RESCUETIME_KEY=YOUR_KEY
```

### Usage

```bash
bundle exec ruby time_tracker.rb
```

```
Ruby Learning Timer
▶  Start session
   Stop session
   Report today
   Exit
```

### Daily‑Commit Workflow

1. **Code & log** your practice.
2. **Commit** your progress:

   ```bash
   git add .
   git commit -m "Day 14 ✓ — finished Enumerable chapter"
   ```
3. **Push** and watch both your GitHub graph and RescueTime dashboard fill up. 🎉

---

## Planned & In‑Progress Projects

| Project # | Title                      | One-liner & Status                                                                                                                                                                    |
| --------- | -------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 0     | **Time Tracker**           | *CLI that logs “Learning Ruby” sessions to RescueTime via the Offline Time API.* **→ In Progress (ETA v0.1 7/18/25)**                                                                   |
| 1     | **Ruby Web Scraper**       | *Nokogiri-powered mini-scraper that fetches a page, extracts data with CSS selectors, and outputs JSON; includes RSpec tests and retry logic.* **→ In Progress (ETA v0.1 7/25/25)** |
| 2     | **Time Tracker Dashboard** | *Sinatra app that visualizes daily/weekly study minutes pulled from RescueTime and shows commit streaks side-by-side.* **→ Planned / Backlog**                                        |
| 3 | **Ruby Reading Tracker** | CLI + YAML/SQLite store that logs chapters/pages read from any Ruby book, auto‑posts "Reading Ruby" blocks to RescueTime & produces progress charts. **→ Idea / Open for design** |

*(I’ll update this list as new projects get promoted from my notebook.)*

---

## Roadmap

* [ ] Complete Project 0
* [ ] Persist Project 0 sessions to SQLite so crashes don’t lose data
* [ ] Project 1: a simple web scraper using Nokogiri
* [ ] Project 2: Sinatra‑powered mini dashboard for my RescueTime metrics
* [ ] Project 3: Ruby Reading Tracker

---

## Contributing

Pull requests welcome! Please:

1. Fork & branch: `git checkout -b feature/awesome`
2. Commit & push: `git commit -m 'Add awesome feature'`
3. Open a **PR** with context.

---

## License

MIT — see [LICENSE](LICENSE).

---

## Acknowledgements

* [RescueTime API Docs](https://www.rescuetime.com/anapi/setup/documentation)
* [TTY‑Prompt](https://github.com/piotrmurach/tty-prompt) – slick CLI menus
* [Faraday](https://lostisland.github.io/faraday/) – HTTP made simple
* [Lex Fridman Podcast #474](https://youtu.be/vagyIcmIGOQ?si=sf6RquUbZjEtO4qK) - DHH: Future of Programming, AI, Ruby on Rails, Productivity & Parenting


