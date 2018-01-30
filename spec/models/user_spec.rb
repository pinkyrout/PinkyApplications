require "rails_helper"

RSpec.describe User do
	let(:user)  { build(:user, email: 'pinky123', password: 'abcacf') }
  let(:user1) { build(:user, password: 'abc', email: 'pinky@gmail') }
  let(:user2) { build :user, contact_no: '8978'}
  let(:user3) {build :user, contact_no: 'bvjrkwwswe'}
  let(:user4) {build :user, name: '_pinky'}
  let(:user5) {build :user, name: '123pinky'}
  let(:user6) {build :user, email: 'pinkyrout10@gmail.com'}
    
  context "validity of email" do
    
    it "validates email format" do
      expect(user.valid?).to eq(false)
      expect(user.errors['email']).to eq(["sample123@gmail.com, you can use . and _ as well"])
    end

    it "validates email format" do
    	expect(user.valid?).to eq(false)
    	expect(user.errors['email']).to eq(["sample123@gmail.com, you can use . and _ as well"])
    end

    it "validates email format" do
    	expect(user6.valid?).to eq(true)
    end
  end

  context "validity of password" do
    
    it "validates password format" do
    	expect(user.valid?).to eq(false)
    	expect(user.errors['password']).to eq(["password should have mini length 6 and should contain alleast 1 special character"])
    end

    it "validates password length" do
    	expect(user1.valid?).to eq(false)
    	expect(user1.errors['password'].include?("is too short (minimum is 6 characters)")).to eq(true)
    end
  end
  
  context "validity of contact_no" do
    
    it "validates contact_no length" do
      expect(user2.valid?).to eq(false)
      expect(user2.errors['contact_no']).to eq(["contact no should be in digits and length 10"])
    end

    it "validates contact_no format" do
      expect(user3.valid?).to eq(false)
      expect(user3.errors['contact_no']).to eq(["contact no should be in digits and length 10"])
    end
  end

  context "validates name" do
  	
  	it "validates for underscore in name" do
      expect(user4.valid?).to eq(false)
      expect(user4.errors['name']).to eq(["cannot start with a number or underscore"])
    end
   
    it "validates for number in name" do
    	expect(user5.valid?).to eq(false)
    	expect(user5.errors['name']).to eq(["cannot start with a number or underscore"])
    end  
  end

end
