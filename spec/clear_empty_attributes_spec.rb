require File.expand_path("spec_helper", File.dirname(__FILE__))

describe :clear_empty_attributes do
  before do
    @user = User.new(:name=>'Michael')
    @user.save!
  end

  describe :validations do
    it "is not valid with a invalid string" do
      @user.name = 'a'
      @user.should_not be_valid
    end
    it "is valid with a allow_nil field set to empty string" do
      @user.name = ''
      @user.should be_valid
    end
  end

  describe :update_attributes do
    it "stores non-empty strings normally" do
      @user.update_attributes(:name=>'Hans')
      @user.reload.name.should == 'Hans'
    end
    it "stores strings as nil" do
      @user.update_attributes(:name=>'')
      @user.reload.name.should == nil
    end
    it "does not affect booleans" do
      @user.update_attributes(:sexy=>false)
      @user.reload.sexy.should == false
    end
  end

  describe :attributes= do
    it "stores non-empty strings normally" do
      @user.attributes = {'name'=>'Hans'}
      @user.save!
      @user.reload.name.should == 'Hans'
    end
    it "stores strings as nil" do
      @user.attributes = {:name=>''}
      @user.save!
      @user.reload.name.should == nil
    end
  end

  describe :update_attribute do
    it "stores non-empty strings normally" do
      @user.update_attribute(:name,'Hans')
      @user.reload.name.should == 'Hans'
    end
    pending_it "stores strings as nil" do
      @user.update_attribute(:name,'')
      @user.reload.name.should == nil
    end
    it "does not affect booleans" do
      @user.update_attribute(:sexy,false)
      @user.reload.sexy.should == false
    end
  end
  describe :write_attribute do
    it "stores non-empty strings normally" do
      @user.write_attribute(:name,'Hans')
      @user.save!
      @user.reload.name.should == 'Hans'
    end
    pending_it "stores strings as nil" do
      @user.write_attribute(:name,'')
      @user.save!
      @user.reload.name.should == nil
    end
    it "does not affect booleans" do
      @user.write_attribute(:sexy,false)
      @user.save!
      @user.reload.sexy.should == false
    end
  end
end