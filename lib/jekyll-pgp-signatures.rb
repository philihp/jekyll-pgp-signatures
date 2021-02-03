# frozen_string_literal: true

require "jekyll"

module Jekyll
  module PgpSignatures
    autoload :VERSION, "jekyll-pgp-signatures/version"

    class PgpSignatureTag < Liquid::Tag
      def render(context)
        url = context.environments.first['page']['path']
        file = File.basename(url)
        if File.exist?(File.join(Dir.pwd, 'assets', 'sigs', "#{file}.asc"))
          %Q{<a href="/assets/sigs/#{file}.asc" class="verified">Verified</a>}
        end
      end
      Liquid::Template.register_tag "pgp_signature", self
    end
    
  end
end