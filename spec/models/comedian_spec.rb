RSpec.describe 'User' do
  describe 'User goes to comedians page' do
    it 'Sees all users on user page' do
      Comedian.create(name: 'Adam', age: 26)

      visit '/comedians'

      expect(page).to have_content('Adam')
      expect(page).to have_content(26)
    end
  end
end
