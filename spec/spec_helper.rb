require "rspec-puppet"

fixture_path = File.expand_path File.join(__FILE__, "..", "fixtures")

RSpec.configure do |c|
  c.manifest_dir = File.join(fixture_path, "manifests")
  c.module_path  = File.join(fixture_path, "modules")
end

def default_test_facts
  {
    :boxen_home                  => "/opt/boxen",
    :boxen_user                  => "testuser",
    :boxen_srcdir                => "/Users/testuser/src",
    :macosx_productversion_major => "10.9",
    :osfamily                    => "Darwin"
  }
end

def home
  "/Users/#{facts[:boxen_user]}"
end
