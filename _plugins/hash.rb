
module Jekyll
	module HashFilter
		def hash(input)
			chunks = input.scan(/.{4}/)
			joined = chunks.join('&nbsp;')
			"#{joined}"
		end
	end
end

Liquid::Template.register_filter(Jekyll::HashFilter)
