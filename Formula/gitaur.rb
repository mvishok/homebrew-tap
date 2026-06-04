class Gitaur < Formula
  desc "A simple git utility CLI tool"
  homepage "https://github.com/Exceptionate/gitaur"
  url "https://github.com/Exceptionate/gitaur/releases/download/v0.1.0/gitaur-macos-arm64.tar.gz"
  version "0.1.0"
  sha256 "c2ae3efb92cf1ba40f6f6943690abfd5fa4deac2f082c09b5698cd2dbcb50859"

  def install
    # Rename and install the cross-compiled binary to the standard system bin folder
    bin.install "gitaur-macos-arm64" => "gitaur"
  end

  test do
    system "#{bin}/gitaur", "--version"
  end
end
