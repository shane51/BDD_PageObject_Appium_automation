module LocatorModule
  def selectTab(tab_name)
    selectByName(tab_name)
  end

  def selectByName(name)
    waitElement{byName(name).click}
  end

  def byName(name)
    find_element(:name, "#{name}")
  end

  def selectById(id)
    waitElement {byId(id).click}
  end

  def byId(id)
    find_element(:id, "#{id}")
  end

  def byXpath(xpath)
    find_element(:xpath, "#{xpath}")
  end

  def verifyTextNotExist(content)
    raise("Should not find text: #{content}") unless texts(content).empty?
  end

  def verifyTextExist(content)
    #sleep 5
    raise("Not find text: #{content}") if texts(content).empty?
  end


  def verifyButtonNotExist(button_name)
    raise("Not find button: #{button_name}") if exists { button(button_name) }
  end

  def verifyButtonExist(button_name)
    raise("Not find button: #{button_name}") unless exists { button(button_name) }
  end

  def waitElement
    timeout = 30
    polling_interval = 0.2
    time_limit = Time.now + timeout
    loop do
      begin
        yield
      rescue Exception => error
      end
      return if error.nil?
      raise error if Time.now >= time_limit
      sleep polling_interval
    end
  end
end

module GestureModule
  def scrollHalfScreen(direction)
    screenWidth = self.tag("android.widget.LinearLayout").size.width
    screenHight = self.tag("android.widget.LinearLayout").size.height

    case direction.downcase
      when "down"
        swipeOpts = {
            :start_x => 0.5*screenWidth,
            :start_y => 0.6*screenHight,
            :end_x => 0.5*screenWidth,
            :end_y => 0.1*screenHight,
            :duration => 2000
        }
        self.swipe(swipeOpts)
      when "up"
        swipeOpts = {
            :start_x => 0.5*screenWidth,
            :start_y => 0.3*screenHight,
            :end_x => 0.5*screenWidth,
            :end_y => 0.8*screenHight,
            :duration => 2000
        }
        self.swipe(swipeOpts)
      when "right"
        swipeOpts = {
            :start_x => 0.5*screenWidth,
            :start_y => 0.5*screenHight,
            :end_x => 0.3*screenWidth,
            :end_y => 0.5*screenHight,
            :duration => 2000
        }
        self.swipe(swipeOpts)
      when "left"
        swipeOpts = {
            :start_x => 0.5*screenWidth,
            :start_y => 0.5*screenHight,
            :end_x => 0.7*screenWidth,
            :end_y => 0.5*screenHight,
            :duration => 2000
        }
        self.swipe(swipeOpts)
      else
        puts "Unknown scroll direction."
    end

    def longPress(element)
      longPressOpts = {
          :element => element,
          :x => 8,
          :y => 8,
          :duration => 2000
      }
      Appium::TouchAction.new.long_press(longPressOpts).perform
    end
  end

  def captureScreen(screenshot_name)
    sleep 1
    #screenshot("Screenshots/"+ "#{Time.now.strftime("%Y%m%dT%H%M%S")}" + "_"+ "#{screenshot_name}"+".png")
    screenshot("Screenshots/"+ "#{Time.now.to_i}" + "_"+ "#{screenshot_name}"+".png")
  end


end



class EvernoteAppPage
  include LocatorModule
  include GestureModule
end