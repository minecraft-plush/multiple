#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool

outputs:
  - id: out
    type: string
    outputBinding:
      glob: out.txt
      loadContents: true
      outputEval: $(self[0].contents)
baseCommand: echo
stdout: out.txt
