require File.expand_path("../../Abstract/abstract-php-phar", __FILE__)

class WpCli < AbstractPhpPhar
  desc "Command-line tools for managing WordPress installations."
  homepage "https://wp-cli.org"
  url "https://github.com/wp-cli/wp-cli/releases/download/v1.5.0/wp-cli-1.5.0.phar"
  sha512 "9385c63ab835c7c450529035cdb1f524b5878a67c7565c3497628e5ec4ec07ae4a34ef25c59a9e7d6edea7cdb039fcef7a1f731b922782b8c70418480bdff122"
  head "https://github.com/wp-cli/wp-cli.git"

  bottle do
	cellar :any_skip_relocation
	sha512 "9385c63ab835c7c450529035cdb1f524b5878a67c7565c3497628e5ec4ec07ae4a34ef25c59a9e7d6edea7cdb039fcef7a1f731b922782b8c70418480bdff122" => :high_sierra
	sha512 "9385c63ab835c7c450529035cdb1f524b5878a67c7565c3497628e5ec4ec07ae4a34ef25c59a9e7d6edea7cdb039fcef7a1f731b922782b8c70418480bdff122" => :sierra
	sha512 "9385c63ab835c7c450529035cdb1f524b5878a67c7565c3497628e5ec4ec07ae4a34ef25c59a9e7d6edea7cdb039fcef7a1f731b922782b8c70418480bdff122" => :el_capitan
  end

  def phar_file
	"wp-cli-#{version}.phar"
  end

  def phar_bin
	"wp"
  end

  test do
	system "#{bin}/wp", "--info"
  end
end
