require 'spec_helper'

describe Tugboat::CLI do
  include_context "spec"

  before :each do
    @cli = Tugboat::CLI.new
  end

  describe "version" do
    it "shows the correct version" do

      @cli.options = @cli.options.merge(:version => true)
      @cli.version

      expect($stdout.string.chomp).to eq("Tugboat #{Tugboat::VERSION.to_s}")
    end
  end
end

