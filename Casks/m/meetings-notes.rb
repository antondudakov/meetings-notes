cask "meetings-notes" do
  version "1.2.0"
  sha256 "6a77d783c67bb66b12f153a6501fd72edbceac02d3bd9064e329bc8e7e91c6a4"

  url "https://github.com/antondudakov/meetings-notes/releases/download/v#{version}/MeetingsNotes-#{version}.dmg",
      verified: "github.com/antondudakov/meetings-notes/"
  name "Meetings Notes"
  desc "Local meeting transcription & summarization (on-device, Apple Silicon optimized)"
  homepage "https://meetingsnotes.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Meetings Notes.app"

  zap trash: [
    "~/Library/Application Support/app.meetingsnotes.mac",
    "~/Library/Caches/app.meetingsnotes.mac",
    "~/Library/Preferences/app.meetingsnotes.mac.plist",
  ]
end
