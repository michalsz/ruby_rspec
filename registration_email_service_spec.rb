require_relative 'registration_email_service.rb'

describe RegistrationEmailService do
  describe "call" do
    it 'finds email' do
      RegistrationEmailService.new(1).call
    end 

    it 'calls send on RegistrationEmail' do
      RegistrationEmailService.new(1).call
    end 

    it 'calls mark_as_send on email instance' do

      RegistrationEmailService.new(1).call
    end 

    context 'email doesnt exist' do
      it 'return false' do
        expect(RegistrationEmailService.new(1).call).to eq false
      end       
    end

    context 'send email fail' do
      it 'return false' do
    
        expect(RegistrationEmailService.new(1).call).to eq false
      end       

     it 'not calls mark as send' do
    
        expect(RegistrationEmailService.new(1).call).to eq false
      end
    end
  end
end