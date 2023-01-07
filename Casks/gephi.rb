cask "gephi" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"
  version "0.10.0"
  if Hardware::CPU.intel?
    sha256 "8bb3af6e2a32a3745edc342209d90438365227b40dd477e05522c497b2e2bccf"
  else
    sha256 "0e8f0a61eb98c93a608ada5068f8d9a5981981a28b087c0b2e1b9356145895bf"
  end

  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos-#{arch}.dmg",
      verified: "github.com/gephi/gephi/"
  name "Gephi"
  desc "Open-source platform for visualizing and manipulating large graphs"
  homepage "https://gephi.org/"

  app "Gephi.app"
end
