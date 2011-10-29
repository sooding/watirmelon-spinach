module Browser
  BROWSER = (WEB_DRIVER == :watir) ? Watir::Browser.new : Watir::Browser.new(WEB_DRIVER)

  def visit page_class, &block
    on page_class, true, &block
  end

  def on page, visit=false, &block
    page_class = Object.const_get "#{@site}#{page.to_s.capitalize}Page"
    page = page_class.new BROWSER, visit
    block.call page if block
    page
  end

  def site name
    @site = name
  end
end
