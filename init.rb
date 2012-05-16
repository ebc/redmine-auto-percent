require 'issue'
require 'redmine'

require File.dirname(__FILE__) + '/lib/issue_patch'

unless Issue.included_modules.include? RedmineAutoPercent::IssuePatch
  Issue.send(:include, RedmineAutoPercent::IssuePatch)
end

Redmine::Plugin.register :redmine_auto_percent do
  name 'Redmine Auto Done 100%'
  author 'Wade Womersley and EBC developers at github'
  description 'Automatically sets 100% done on Resolved or Closed'
  version '0.1.0'
  url ''
  author_url 'http://github.com/ebc/'
end
