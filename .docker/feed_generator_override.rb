# frozen_string_literal: true

module JekyllFeed
  class Generator < Jekyll::Generator
    safe true
    priority :lowest

    alias_method :real_generate, :generate

    def generate(site)
      if site.config["feed"] && site.config["feed"]["disable"]
        Jekyll.logger.info "       Jekyll Feed: disabled"
      else
        real_generate(site)
      end
    end
  end
end
