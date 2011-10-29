class InternetSearch < Spinach::FeatureSteps
  feature 'Internet Search'

  Given 'I am on the Google Home Page' do
    site 'Google'
    visit :home
  end

  Given 'I am on the Bing Home Page' do
    site 'Bing'
    visit :home
  end

  When 'I search for "Watir"' do
    on :home do |page|
      page.search_for "Watir"
    end
  end

  When 'I convert 10 cm to inches' do
    on :home do |page|
      page.search_for "convert 10cm to inches"
    end
  end

  When 'I search for a ridiculously small number of results' do
    term = Common.get_search_term_data "ridiculously small number of results"
    on :home do |page|
      page.search_for term
    end
  end

  Then 'I should see at least 100,000 results' do
    on :results do |page|
      page.number_search_results.should >= 100000
    end  
  end
  
  Then 'I should see at least 30,000 results' do
    on :results do |page|
      page.number_search_results.should >= 30000
    end  
  end

  Then 'I should see at most 100 results' do
    on :results do |page|
      page.number_search_results.should <= 100
    end
  end

  Then 'I should see the conversion result "10 centimeters = 3.93700787 inches"' do
    on :results do |page|
      page.conversion_result.gsub('metres', 'meters').should == "10 centimeters = 3.93700787 inches"
    end
  end

end
