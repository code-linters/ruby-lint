require 'spec_helper'

describe 'RubyLint::Report' do
  example 'add a message using #add' do
    report = RubyLint::Report.new

    report.add(
      :level   => :info,
      :message => 'info message',
      :line    => 1,
      :column  => 1,
      :file    => 'file.rb'
    )

    report.entries.length.should == 1

    entry = report.entries[0]

    entry.level.should   == :info
    entry.message.should == 'info message'
    entry.line.should    == 1
    entry.column.should  == 1
    entry.file.should    == 'file.rb'
  end

  example 'ignore invalid reporting levels' do
    report = RubyLint::Report.new

    report.add(
      :level   => :test,
      :message => 'invalid message',
      :line    => 1,
      :column  => 1,
      :file    => 'file.rb'
    )

    report.entries.empty?.should == true
  end
end
