# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.3.0] - 2020-04-05
### Added
- deploy brain
### Changed
- switch to pa-tg v0.5.1
- use custom patched stomp.py
### Fixed
- xtomp-user shell is now in raw mode

## [0.2.0] - 2020-03-23
### Added
- xtomp-user own ssh key
- molecule "testing"
### Changed
- Do not install recommended packages for pip -- setuptools is enough
- Disable echo for xtomp-user "shell"
- Combined tg and xtomp roles into a single role

## 0.1.0 - 2020-03-13
### Added
- This changelog
- Setup playbook for TG relay server
- Deploy playbook for TG relay server
- Role for TG relay server
- Role for xtomp server

[Unreleased]: https://gitlab.com/personal-assistant-bot/pa-control/compare/v0.3.0...master
[0.3.0]: https://gitlab.com/personal-assistant-bot/pa-control/compare/v0.2.0...v0.3.0
[0.2.0]: https://gitlab.com/personal-assistant-bot/pa-control/compare/v0.1.0...v0.2.0
