cask 'serve' do
  version :latest #1.0
  sha256 :no_check

  # github.com/max-os/serve was verified as official when first introduced to the cask
  url 'https://github.com/max-os/serve/archive/master.zip'
  name 'Racket'
  homepage 'https://max-os.github.io/serve'

  binary 'cli.zsh'

  artifact 'man.md', target: "*?/man1/serve.1"

  service "build/Serve.workflow" #.service
end
