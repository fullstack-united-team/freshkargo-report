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
    "docs/chapter-2-requirements-elicitation.md"
)

pandoc @files `
    --file-scope `
    --from markdown `
    --resource-path=".;docs" `
    --metadata-file pandoc/metadata.yaml `
    -o "$outputDir/freshkargo-report.pdf"