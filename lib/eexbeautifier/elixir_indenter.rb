module EexBeautifier
  class ElixirIndenter
    INDENT_KEYWORDS = %w[ fn do else ]
    OUTDENT_KEYWORDS = %w[ else end ]

    ELIXIR_INDENT = %r(#{INDENT_KEYWORDS.join("|")})
    ELIXIR_OUTDENT = %r(#{OUTDENT_KEYWORDS.join("|")})

    def outdent?(lines)
      lines.first =~ ELIXIR_OUTDENT
    end

    def indent?(lines)
      lines.last =~ ELIXIR_INDENT
    end
  end
end
