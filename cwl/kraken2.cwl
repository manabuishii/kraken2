#!/usr/bin/env cwl-runner
# Generated from: kraken2-build --download-taxonomy --db kraken2db/
class: CommandLineTool
cwlVersion: v1.0
baseCommand: kraken2-build
arguments:
  - --download-taxonomy
  - --db
  - $(inputs.db)
inputs:
  - id: db
    type: string
    default: kraken2db
outputs:
  - id: all-for-debugging
    type:
      type: array
      items: [File, Directory]
    outputBinding:
      glob: "*"
hints:
  - class: DockerRequirement
    dockerPull: staphb/kraken2
