require 'spec_helper'

describe "Unit Tests for move_window", :if => SpecHelper.adapter == :win_32 do
  before :all do
    @window = RAutomation::Window.new(:title => "MainFormWindow")
  end

  it "set window width:500, height:500, xPos:0, yPos:0" do
    @window.move_window(500, 500, 0, 0)
    @window.get_window_rect()[3].should == 500
    @window.get_window_rect()[2].should == 500
  end

  it "set window width:800, height:1000, xPos:20, yPos:40" do
    @window.move_window(1000, 1000, 20, 40)
    @window.get_window_rect()[3] == 1040
    @window.get_window_rect()[2] == 1020
  end

  it "set window width:270, height:500, xPos:20, yPos:40" do
    @window.move_window(10, 10)
    @window.get_window_rect()[3] == 50
    @window.get_window_rect()[2] == 30
  end
end