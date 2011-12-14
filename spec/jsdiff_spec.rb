require "jsdiff"

describe JSDiff do

  describe "::parse" do
    before do
      @files = {}
      Dir.glob(File.dirname(__FILE__)+"/fixtures/*.js").each do |file|
        @files[File.basename(file,".js").to_sym] = {
          :path => file,
          :contents => JSON.parse(File.read(file))
        }
      end
    end
    it "computes simple diff" do 
      files = [@files[:simple_a][:path], @files[:simple_b][:path]]
      opt_mock = mock("options", :nosyntax? =>true)
      
      response = JSDiff.parse(files, opt_mock)
      diff_results = JSON.parse(response)
      @files[:simple_a][:contents].diff(@files[:simple_b][:contents]).should == diff_results
    end
  end

end
