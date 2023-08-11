cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  chronic-kidney-disease-ckd-stage---primary:
    run: chronic-kidney-disease-ckd-stage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  chronic-kidney-disease-ckd-proteinuria---primary:
    run: chronic-kidney-disease-ckd-proteinuria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: chronic-kidney-disease-ckd-stage---primary/output
  chronic-kidney-disease-ckd-transplant---primary:
    run: chronic-kidney-disease-ckd-transplant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: chronic-kidney-disease-ckd-proteinuria---primary/output
  nephrotic-chronic-kidney-disease-ckd---primary:
    run: nephrotic-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: chronic-kidney-disease-ckd-transplant---primary/output
  membranoproliferative-chronic-kidney-disease-ckd---primary:
    run: membranoproliferative-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: nephrotic-chronic-kidney-disease-ckd---primary/output
  membranous-chronic-kidney-disease-ckd---primary:
    run: membranous-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: membranoproliferative-chronic-kidney-disease-ckd---primary/output
  chronic-kidney-disease-ckd-glomerulonephritis---primary:
    run: chronic-kidney-disease-ckd-glomerulonephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: membranous-chronic-kidney-disease-ckd---primary/output
  chronic-kidney-disease-ckd-nephrosis---primary:
    run: chronic-kidney-disease-ckd-nephrosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: chronic-kidney-disease-ckd-glomerulonephritis---primary/output
  glomerular-chronic-kidney-disease-ckd---primary:
    run: glomerular-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: chronic-kidney-disease-ckd-nephrosis---primary/output
  chronic-kidney-disease-ckd-lesion---primary:
    run: chronic-kidney-disease-ckd-lesion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: glomerular-chronic-kidney-disease-ckd---primary/output
  chronic-kidney-disease-ckd-diffuse---primary:
    run: chronic-kidney-disease-ckd-diffuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: chronic-kidney-disease-ckd-lesion---primary/output
  proliferative-chronic-kidney-disease-ckd---primary:
    run: proliferative-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: chronic-kidney-disease-ckd-diffuse---primary/output
  chronic-kidney-disease-ckd---primary:
    run: chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: proliferative-chronic-kidney-disease-ckd---primary/output
  chronic-kidney-disease-ckd-pyelonephritis---primary:
    run: chronic-kidney-disease-ckd-pyelonephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: chronic-kidney-disease-ckd---primary/output
  other-chronic-kidney-disease-ckd---primary:
    run: other-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: chronic-kidney-disease-ckd-pyelonephritis---primary/output
  focal-chronic-kidney-disease-ckd---primary:
    run: focal-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: other-chronic-kidney-disease-ckd---primary/output
  chronic-kidney-disease-ckd-failure---primary:
    run: chronic-kidney-disease-ckd-failure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: focal-chronic-kidney-disease-ckd---primary/output
  renal-chronic-kidney-disease-ckd---primary:
    run: renal-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: chronic-kidney-disease-ckd-failure---primary/output
  chronic-kidney-disease-ckd-necrosis---primary:
    run: chronic-kidney-disease-ckd-necrosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: renal-chronic-kidney-disease-ckd---primary/output
  chronic-kidney-disease-ckd-blame---primary:
    run: chronic-kidney-disease-ckd-blame---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: chronic-kidney-disease-ckd-necrosis---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: chronic-kidney-disease-ckd-blame---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
