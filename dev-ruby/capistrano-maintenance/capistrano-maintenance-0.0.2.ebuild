# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/capistrano/capistrano-2.13.4.ebuild,v 1.1 2012/10/04 06:06:34 graaff Exp $

EAPI=4
# ruby19 → pending on net/sftp
#USE_RUBY="ruby18"
USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"

inherit ruby-fakegem

DESCRIPTION="A distributed application deployment system"
HOMEPAGE="http://capify.org/"

LICENSE="MIT"
SLOT="2"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x64-solaris ~x86-solaris"
IUSE=""

#ruby_add_rdepend "
#	dev-ruby/capistrano
#	dev-ruby/colored
#	dev-ruby/inifile"
#ruby_add_bdepend "
#	test? (	dev-ruby/mocha )"

#all_ruby_prepare() {
	#rm Gemfile || die
#	sed -i -e '/[Bb]undler/d' Rakefile test/utils.rb || die
#	sed -i -e '/ruby-debug/ s:^:#:' test/utils.rb || die

	# Avoid copy strategy tests since these fail in some cases due to
	# complicated (aka unknown) interactions with other parts of the
	# test suite.
#	rm test/deploy/strategy/copy_test.rb || die
#}
