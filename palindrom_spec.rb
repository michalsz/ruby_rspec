require_relative 'palindrom.rb'

describe Palindrom do
  describe "palindrom?" do
    it 'return true' do
      palindrom = Palindrom.new('kajak')

      expect(palindrom.palindrom?).to  eq true
    end

    it 'return true' do
      palindrom = Palindrom.new('Ala')

      expect(palindrom.palindrom?).to  eq true
    end

    context 'is not' do
      it 'return false' do
        palindrom = Palindrom.new("ewa")

        expect(palindrom.palindrom?).to  eq false
      end
    end
  end
end