require 'rails_helper'

describe 'AuditLog Feature' do

  describe 'index' do
  	before do
      admin_user = FactoryGirl.create(:admin_user)
      login_as(admin_user, :scope => :user)
  		FactoryGirl.create(:audit_log)
  	end
  	it 'has and index page that can be reached' do
      visit audit_logs_path
      expect(page.status_code).to eq(200)
  	end

  	it 'renders audit log content' do
      visit audit_logs_path 
      expect(page).to have_content(/SNOW, JOHN/)
  	end

  	xit 'can not be accessed by non admin users' do
  	end
  end
end