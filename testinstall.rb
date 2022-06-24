# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Testinstall < Formula
  desc "Testing installer for cycloneControlSDK_python"
  homepage "https://www.pemicro.com/"
  url "https://github.com/TrevorChan1/testInstall/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "07fc2b8af7c9f07b194c9e9b18e4e08bddfc1b85fe52eef5e5a83609616b8ba0"
  license "BSD-3-Clause"
  version "1.0.1"

  depends_on "cmake" => :build

  def install

    "/usr/local/PEMicro".install Dir["cycloneControl/*"]
  
  end

  #test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test homebrew-testInstall`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
   # system "false"
  #end
end
