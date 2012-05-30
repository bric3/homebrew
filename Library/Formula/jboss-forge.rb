require 'formula'

class JbossForge < Formula
  homepage 'http://jboss.org/forge'
  version '1.0.5.Final'
  url 'https://repository.jboss.org/nexus/service/local/artifact/maven/redirect?r=releases&g=org.jboss.forge&a=forge-distribution&v=1.0.5.Final&e=zip'
  md5 '0853bc6c152d29975a01bfe0f5576bdb'


  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin modules jboss-modules.jar]
    prefix.install %w{ LICENSE.txt README.txt }
    bin.mkpath
    ln_s libexec+('bin/forge'), bin
  end
end
