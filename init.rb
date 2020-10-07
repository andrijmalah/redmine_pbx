Redmine::Plugin.register :redmine_pbx do
  name 'Pbx Calls plugin'
  author 'Andriy Malakhivskyy'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end

Rails.application.config.to_prepare do
  require_dependency 'redmine_pbx/contacts_controller_patch'
end