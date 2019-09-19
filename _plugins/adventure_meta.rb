module Jekyll
  module AdventureMeta
    def adventure_meta(input)
      characers = input['characers']
      level     = input['level']

      out       = 'This is '
      out      += (characers > 1 ? "an adventure for #{characers} characers " : 'a solo adventure ')
      if level.is_a? Array
        out += "for levels #{ordinal(level[0])} through #{ordinal(level[1])}."
      else
        out += 'for ' + (characers > 1 ? '' : 'a ') + "#{ordinal(level)}-level "
        out += 'characer' + (characers > 1 ? 's.' : '.')
      end

      out
    end

    private

    def ordinal(n)
      ending = case n % 100
               when 11, 12, 13 then 'th'
               else
                 case n % 10
                 when 1 then 'st'
                 when 2 then 'nd'
                 when 3 then 'rd'
                 else 'th'
                 end
               end

      "#{n}#{ending}"
    end
  end
end

Liquid::Template.register_filter(Jekyll::AdventureMeta)
