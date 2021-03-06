# frozen_string_literal: true

CommandDispatcher.register name: 'count', help_text: 'displays the amount of images that match a given search query' do |msg, args|
  search_result = Booru.search query: args.raw, filter: SweetieBot.config.booru.everything_filter

  msg.reply with: "**#{search_result.total}** images match query `#{args.raw}`.", mention: false
end

CommandDispatcher.alias 'c', 'count'
