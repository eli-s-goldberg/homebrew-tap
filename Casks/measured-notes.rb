cask "measured-notes" do
  version "0.1.0"
  sha256 "d7a8b3c944c081a440fafba548fdcbf84568c6f56bccf2248ae72beb6d4a07f0"

  url "https://github.com/eli-s-goldberg/measured-notes/releases/download/v#{version}/measured-notes-#{version}-arm64.zip"
  name "Measured Notes"
  desc "Local notes with quick capture, Markdown, tables, and checklists"
  homepage "https://github.com/eli-s-goldberg/measured-notes"

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Measured Notes.app"

  caveats <<~EOS
    This release is ad-hoc signed and is not notarized.
    macOS may block it from opening. See the project README for details.
  EOS
end
