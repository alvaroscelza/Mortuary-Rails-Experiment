require 'application_system_test_case'

class ProvidersTest < ApplicationSystemTestCase
    setup do
        @provider = providers(:one)
    end

    test 'visiting the index' do
        visit providers_url
        assert_selector 'h1', text: 'Providers'
    end

    test 'creating a Provider' do
        visit providers_url
        click_on 'New Provider'

        fill_in 'Address', with: @provider.address
        fill_in 'Bank account information', with: @provider.bank_account_information
        fill_in 'Company name', with: @provider.company_name
        fill_in 'Name', with: @provider.name
        fill_in 'Notes', with: @provider.notes
        fill_in 'Phone', with: @provider.phone
        click_on 'Create Provider'

        assert_text 'Provider was successfully created'
        click_on 'Back'
    end

    test 'updating a Provider' do
        visit providers_url
        click_on 'Edit', match: :first

        fill_in 'Address', with: @provider.address
        fill_in 'Bank account information', with: @provider.bank_account_information
        fill_in 'Company name', with: @provider.company_name
        fill_in 'Name', with: @provider.name
        fill_in 'Notes', with: @provider.notes
        fill_in 'Phone', with: @provider.phone
        click_on 'Update Provider'

        assert_text 'Provider was successfully updated'
        click_on 'Back'
    end

    test 'destroying a Provider' do
        visit providers_url
        page.accept_confirm do
            click_on 'Destroy', match: :first
        end

        assert_text 'Provider was successfully destroyed'
    end
end
