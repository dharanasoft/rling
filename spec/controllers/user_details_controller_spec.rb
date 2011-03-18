require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe UserDetailsController do

  def mock_user_detail(stubs={})
    @mock_user_detail ||= mock_model(UserDetail, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all user_details as @user_details" do
      UserDetail.stub(:all) { [mock_user_detail] }
      get :index
      assigns(:user_details).should eq([mock_user_detail])
    end
  end

  describe "GET show" do
    it "assigns the requested user_detail as @user_detail" do
      UserDetail.stub(:find).with("37") { mock_user_detail }
      get :show, :id => "37"
      assigns(:user_detail).should be(mock_user_detail)
    end
  end

  describe "GET new" do
    it "assigns a new user_detail as @user_detail" do
      UserDetail.stub(:new) { mock_user_detail }
      get :new
      assigns(:user_detail).should be(mock_user_detail)
    end
  end

  describe "GET edit" do
    it "assigns the requested user_detail as @user_detail" do
      UserDetail.stub(:find).with("37") { mock_user_detail }
      get :edit, :id => "37"
      assigns(:user_detail).should be(mock_user_detail)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created user_detail as @user_detail" do
        UserDetail.stub(:new).with({'these' => 'params'}) { mock_user_detail(:save => true) }
        post :create, :user_detail => {'these' => 'params'}
        assigns(:user_detail).should be(mock_user_detail)
      end

      it "redirects to the created user_detail" do
        UserDetail.stub(:new) { mock_user_detail(:save => true) }
        post :create, :user_detail => {}
        response.should redirect_to(user_detail_url(mock_user_detail))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved user_detail as @user_detail" do
        UserDetail.stub(:new).with({'these' => 'params'}) { mock_user_detail(:save => false) }
        post :create, :user_detail => {'these' => 'params'}
        assigns(:user_detail).should be(mock_user_detail)
      end

      it "re-renders the 'new' template" do
        UserDetail.stub(:new) { mock_user_detail(:save => false) }
        post :create, :user_detail => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested user_detail" do
        UserDetail.stub(:find).with("37") { mock_user_detail }
        mock_user_detail.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :user_detail => {'these' => 'params'}
      end

      it "assigns the requested user_detail as @user_detail" do
        UserDetail.stub(:find) { mock_user_detail(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:user_detail).should be(mock_user_detail)
      end

      it "redirects to the user_detail" do
        UserDetail.stub(:find) { mock_user_detail(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(user_detail_url(mock_user_detail))
      end
    end

    describe "with invalid params" do
      it "assigns the user_detail as @user_detail" do
        UserDetail.stub(:find) { mock_user_detail(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:user_detail).should be(mock_user_detail)
      end

      it "re-renders the 'edit' template" do
        UserDetail.stub(:find) { mock_user_detail(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested user_detail" do
      UserDetail.stub(:find).with("37") { mock_user_detail }
      mock_user_detail.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the user_details list" do
      UserDetail.stub(:find) { mock_user_detail }
      delete :destroy, :id => "1"
      response.should redirect_to(user_details_url)
    end
  end

end