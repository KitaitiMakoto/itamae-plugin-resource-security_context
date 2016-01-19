require 'helper'
require 'itamae/plugin/resource/security_context'

class TestItamae::Plugin::Resource::SecurityContext < Test::Unit::TestCase

  def test_version
    version = Itamae::Plugin::Resource::SecurityContext.const_get('VERSION')

    assert !version.empty?, 'should have a VERSION constant'
  end

end
