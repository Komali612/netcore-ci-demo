# SampleApi

A minimal .NET 8 web API used as a **demo target** for the NetCore CI/CD agents.

- `src/SampleApi/` — the web API (`net8.0`)
- `tests/SampleApi.Tests/` — xUnit tests
- `Dockerfile` — container build
- `deploy/helm/` — Helm chart for AKS
- `deployment/` — CD configuration (cluster, approvers, notifications)

> This repository intentionally has **no** `.github/workflows/` — the NetcoreCIAgent
> generates the CI pipeline, and the NetcoreCDAgent generates the CD pipeline.
