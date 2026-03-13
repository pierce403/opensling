# About OpenSling

OpenSling is a working wiki for people building machines that clean water. The project is opinionated in one useful way: hardware ideas are only valuable when they can be documented, instrumented, tested, serviced, and improved in public.

## What the Project Optimizes For

- modular treatment systems instead of monolithic machines
- straightforward plumbing, wiring, and maintenance access
- explicit treatment claims tied to measurement plans
- build notes that future contributors can reproduce without oral history

## What Lives Here

This repository holds:

- design notes for treatment architecture
- build guides for prototype and pilot hardware
- operations playbooks for testing, maintenance, and safety
- research backlogs for unresolved engineering questions

## What It Does Not Claim

OpenSling does not assume that one hardware stack works for every water source. Different contaminant loads require different treatment steps, and any potable-water use case needs appropriate validation and local compliance review.

## Stack

The wiki keeps the same underlying structure as `sloppy.wiki`:

- MkDocs
- Material for MkDocs
- GitHub Actions deployment
- lightweight shell helpers for local setup, serving, and builds

## Contribution Model

The expected contribution style is simple:

1. document the problem and source-water assumptions
2. document the build or operational change
3. attach measurements, photos, or failure notes
4. leave the next person with enough context to continue

Project source: [github.com/pierce403/opensling](https://github.com/pierce403/opensling)
