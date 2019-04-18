require 'yaml'
file = File.read("#{Rails.root}/app/assets/config/meta.yml")
DEFAULT_META = YAML.load(file)
