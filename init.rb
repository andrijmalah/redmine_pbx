Redmine::Plugin.register :redmine_pbx do
  name 'Pbx Calls plugin'
  author 'Andriy Malakhivskyy'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/andrijmalah/redmine_pbx'
  author_url 'https://github.com/andrijmalah/redmine_pbx'
end

Rails.application.config.to_prepare do
  require_dependency 'redmine_pbx/contacts_controller_patch'
end