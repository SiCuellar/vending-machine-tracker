require 'rails_helper'

feature 'When a user visits a vending machine show page' do
  scenario 'they see the location of that machine' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")

    visit machine_path(dons)

    expect(page).to have_content("Don's Mixed Drinks Vending Machine")
  end

  describe 'user can see a list of the snacks in that machine' do
    owner = Owner.create(name: "Silver's")
    silver = owner.machines.create(location: 'Turing')
    snack_1 = silver.snacks.create(name: 'kitkat', price: 1)
    snack_2 = silver.snacks.create(name: 'Doritos', price: 2)
    snack_3 = silver.snacks.create(name: 'monster', price: 3)

    visit machine_path(silver.id)

    save_and_open_page


  end




end
