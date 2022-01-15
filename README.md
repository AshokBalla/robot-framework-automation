# robotframework-tests

Robot Framework repository with reusable resource files, variables, and UI/API starter suites.

## Highlights

- Robot Framework
- SeleniumLibrary
- RequestsLibrary
- Keyword-driven structure

## Getting Started

```bash
python3 -m unittest discover tests/unit
robot tests
```

## Project Structure

- `tests/`
- `keywords/`
- `resources/`
- `variables/`
- `reports/`
- `scripts/`

## Reporting

- HTML, JSON, and screenshot/video friendly output paths are pre-created.
- CI examples publish artifacts and preserve failure diagnostics.

## Contribution Guide

1. Create a branch from `develop`.
2. Keep helpers reusable and environment-driven.
3. Add or update validation tests with every framework change.
4. Document any new test data, report artifacts, and CI behavior.

## Notes

- - 2023: created focused repository split for Robot Framework repository for reusable UI and API keyword-driven coverage.

## Career Evolution & Historical Tests
The `original-tests` directory contains historical test suites and experiments from earlier stages of this project's lifecycle (2023-2025). This folder is preserved to demonstrate the evolution from initial test scripts to the modern, scalable framework architecture seen in the current `tests/` and `src/` directories.
