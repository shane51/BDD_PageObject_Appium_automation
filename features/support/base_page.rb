module LocatorModule
  def selectTab(tab_name)
    selectByName(tab_name)
  end

  def selectById(id)
    byId(id).click
  end

  def selectByName(name)
    byName(name).click
  end

  def byName(name)
    find_element(:name, "#{name}")
  end

  def selectById(id)
    byId(id).click
  end

  def byId(id)
    find_element(:id, "#{id}")
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

end

module GestureModule

end


class EvernoteAppPage
  include LocatorModule
  include GestureModule

end