require 'rails_helper'

RSpec.describe WalletsController, type: :controller do

  before(:each) do
    @user=FactoryBot.create(:user)
    sign_in @user, scope: :user
    @wallet= FactoryBot.create(:wallet)
    @azione= FactoryBot.create(:azione)
    
    
  end

  after(:each) do
    @user.destroy
  end

  describe "POST #movimenti" do
    it "aggiunge un'azione al wallet" do
      post :create, params: { wallet: { user: @user.username, azione: "MSFT", quantità: 23 } }
      expect(response).to redirect_to(wallet_path(assigns(:wallet)))
      expect(assigns(:wallet).azione).to eq("MSFT")
     end
    context 'con isin corretto' do
      it 'aggiunge correttamente azione al wallet' do
        before_count=Wallet.count
         expect { post :movimenti, params: { isin: 'MSFT', quantità: 5, commit: 'aggiungi' }}.to change { Wallet.count }
       
        expect(response).to redirect_to("/wallet")
      end
    end

    context 'con isin non valido' do
      it 'non aggiunge azione al wallet' do
        expect { post :movimenti, params: { isin: 'ABCD', quantità: 5, commit: 'aggiungi' } }.to_not change { Wallet.count }
        expect(response).to redirect_to("/wallet")
        #expect(flash[:notice]).to be_present
      end
    end
  end
end