class Pbt < Formula
  desc "Highly configurable prompt decoration for ZSH and Bash written in Python."
  homepage "https://github.com/jtyr/pbt"
  url "https://github.com/jtyr/pbt/archive/v1.1.0.tar.gz"
  sha256 "b6f5b7120f42041f25486448fdca74c38a37e71344b1ec088ba4550b1534369b"

  def install
    ENV.prepend_create_path "PYTHONPATH", lib/"python2.7/site-packages"
    system "python", *Language::Python.setup_install_args(prefix)
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => lib/"python2.7/site-packages")
  end

  test do
    ENV.prepend_create_path "PYTHONPATH", lib/"python2.7/site-packages"
    system "#{bin}/pbt" "--version"
  end
end
