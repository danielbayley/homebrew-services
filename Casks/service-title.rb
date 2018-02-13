cask 'service-title' do
  version '1.0.0'
  sha256 'ee90df3c306894d81e7832acbf1971d74a863f1596ca9308a799b7c13fdb6142'

  url "https://github.com/danielbayley/sandbox/releases/download/v#{version}/Service_Title.zip"
  appcast 'https://github.com/danielbayley/sandbox/releases.atom',
          checkpoint: '88fbd62e2e9688e8024e27d6d19e68e4b478c85b067386552269042701e38e33'
  name 'Service Title'
  homepage 'https://github.com/danielbayley/sandbox'

  #depends_on formula: 'serve'

  #preflight do #postflight TODO
    #system_command "#{HOMEBREW_PREFIX}/bin/serve", args: ["#{staged_path}/service-title.zsh", '--input', 'items', '--app', 'finder']
  #end

  service "Service Title.workflow" #.service
end
