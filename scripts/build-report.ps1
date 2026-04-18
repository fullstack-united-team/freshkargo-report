$ErrorActionPreference = "Stop"

$outputDir = "export"

if (!(Test-Path $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir | Out-Null
}

$files = @(
    "docs/01-cover.md",
    "docs/02-version-history.md",
    "docs/03-collaboration-insights.md",
    "docs/04-table-of-contents.md",
    "docs/05-student-outcome.md",
    "docs/chapter-1-introduction.md",
    "docs/chapter-2-requirements-elicitation.md",
    "docs/chapter-3-requirements-specification.md",
    "docs/chapter-4-product-design.md",
    "docs/chapter-5-implementation-validation-deployment.md",
    "docs/conclusions.md",
    "docs/bibliography.md",
    "docs/annexes.md"
)

pandoc @files `
      --from markdown `
      --resource-path=".;docs" `
      --metadata-file pandoc/metadata.yaml `
      --pdf-engine=xelatex `
      -V mainfont="Times New Roman" `
      -V geometry:margin=2.5cm `
      -o "$outputDir/freshkargo-report.pdf"