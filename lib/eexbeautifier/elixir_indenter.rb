module EexBeautifier
  class ElixirIndenter
    ELIXIR_INDENT = %r{\b(fn|do|else)\b}xo
    ELIXIR_OUTDENT = %r{\b?(else|end)\b}xo

    def outdent?(lines)
      lines.first =~ ELIXIR_OUTDENT
    end

    def indent?(lines)
      lines.last =~ ELIXIR_INDENT
    end
  end
end
