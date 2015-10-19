class EvernoteAppPage
  include LocatorModule
  include GestureModule

end

module LocatorModule
  def selectTab(tab_name)
    selectByName(tab_name)
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
end

module GestureModule

end