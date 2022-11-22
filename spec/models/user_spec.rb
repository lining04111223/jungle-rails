require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'should pass if password and password_confirmation are same' do
      @user = User.create(first_name:"Ning", last_name:"Li", email: "ning@gmail.com", password: "123", password_confirmation: "123")
      expect(@user.password).to eq @user.password_confirmation
    end
    it 'should pass if password and password_confirmation are not same' do
      @user = User.create(first_name:"Ning", last_name:"Li", email: "ning@gmail.com", password: "123", password_confirmation: "1234")
      expect(@user.password).not_to eq @user.password_confirmation
    end

    it 'should pass if the  email has already been used' do
      @user1 = User.create(first_name:"Ning", last_name:"Li", email: "ning@gmail.com", password: "123", password_confirmation: "123")
      @user2 = User.create(first_name:"Neal", last_name:"Li", email: "ning@gmail.com", password: "123", password_confirmation: "123")
      expect(@user2.email).to eq @user1.email
    end

    it 'should Email, first name, and last name be required ' do
      @user = User.create(first_name:"Ning", last_name:"Li", email: "ning@gmail.com", password: "123", password_confirmation: "123")
      expect(@user.valid?).to be true
    end
    
    it 'should check minimum passord length' do
      @user = User.create(first_name:"Ning", last_name:"Li", email: "ning@gmail.com", password: "12", password_confirmation: "12")
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 3 characters)")
    end
end

    describe '.authenticate_with_credentials' do
      it 'should check if user is logged in' do
        @user = User.create(first_name:"Ning", last_name:"Li", email: "ning@gmail.com", password: "123", password_confirmation: "123")
        login = User.authenticate_with_credentials("ning@gmail.com", "123")
        expect(login).to eq @user
      end 
    end
end
