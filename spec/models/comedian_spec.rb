RSpec.describe 'User' do
  describe 'User goes to comedians page' do
    it 'Sees all comedians on comedians page' do
      Comedian.create(name: 'Adam', age: 26)

      visit '/comedians'

      expect(page).to have_content('Adam')
      expect(page).to have_content(26)
    end
    it 'Sees a comedians specials' do
      comedian = Comedian.create(name: 'Adam', age: 26)
      Special.create(name: 'Special!', comedian_id: comedian.id)

      visit '/comedians'

      expect(page).to have_content('Special!')
    end
  end
end
