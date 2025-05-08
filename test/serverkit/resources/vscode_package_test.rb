# frozen_string_literal: true

require "test_helper"
require "serverkit/resources/vscode_package"

class Serverkit::Resources::VscodePackageTest < Minitest::Test
  ATTRIBUTES = {"name" => "test-package"}
  ATTRIBUTES_WITH_VERSION = {"name" => "test-package", "version" => "1.2.3"}

  def setup
    @resource = Serverkit::Resources::VscodePackage.new({}, ATTRIBUTES)
    @resource_with_version = Serverkit::Resources::VscodePackage.new({}, ATTRIBUTES_WITH_VERSION)
  end

  def test_resource_instance
    assert_instance_of Serverkit::Resources::VscodePackage, @resource
    assert_instance_of Serverkit::Resources::VscodePackage, @resource_with_version
  end

  def test_apply
    @resource.stub :run_command, ->(cmd) { cmd } do
      assert_equal("code --install-extension test-package", @resource.apply)
    end
    @resource_with_version.stub :run_command, ->(cmd) { cmd } do
      assert_equal("code --install-extension test-package@1.2.3", @resource_with_version.apply)
    end
  end

  def test_check
    @resource.stub :check_command, ->(cmd) { cmd } do
      assert_equal("code --list-extensions --show-versions | grep -E '^test-package@'", @resource.check)
    end
    @resource_with_version.stub :check_command, ->(cmd) { cmd } do
      assert_equal("code --list-extensions --show-versions | grep -E '^test-package@1.2.3$'", @resource_with_version.check)
    end
  end
end
