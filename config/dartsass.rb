Rails.application.config.dartsass.builds = {
  "application.scss" => "application.css"
}

# node_modules のパスを追加
Rails.application.config.dartsass.build_options << " --load-path=node_modules"