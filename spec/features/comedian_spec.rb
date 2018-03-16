describe 'User' do
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
    it 'Sees all comedians average age' do
      comedian1 = Comedian.create(name: 'Adam', age: 26)
      comedian2 = Comedian.create(name: 'Evan', age: 28)

      visit '/comedians'

      expect(page).to have_content('Average age')
      expect(page).to have_content(27)
    end
  end
end
