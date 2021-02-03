# frozen_string_literal: true

require "jekyll"

module Jekyll
  module PgpSignatures
    # Internal requires
    autoload :VERSION, "jekyll-pgp-signatures/version"

    class UpcaseConverter < Converter
      safe true
      priority :low
  
      def matches(ext)
        ext =~ /^\.asc$/i
      end
  
      def output_ext(ext)
        ".asc"
      end
  
      def convert(content)
        content
      end
    end

  end
end