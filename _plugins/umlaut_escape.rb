# Returns the supplied value in an array or an empty array
module Jekyll
  module UmlautEscape
    def umlaut_escape(input)
      replacements = {
        'ä' => '&auml;', 'Ä' => '&Auml;',
        'ö' => '&ouml;', 'Ö' => '&Ouml;',
        'ü' => '&uuml;', 'Ü' => '&Uuml;',
        'ß' => '&szlig;',
      }
      input.to_s.gsub(Regexp.union(replacements.keys), replacements) unless input.nil?
    end
  end
end

Liquid::Template.register_filter(Jekyll::UmlautEscape)
