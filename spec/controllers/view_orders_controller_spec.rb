require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe ViewOrdersController do

  def mock_view_order(stubs={})
    @mock_view_order ||= mock_model(ViewOrder, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all view_orders as @view_orders" do
      ViewOrder.stub(:all) { [mock_view_order] }
      get :index
      assigns(:view_orders).should eq([mock_view_order])
    end
  end

  describe "GET show" do
    it "assigns the requested view_order as @view_order" do
      ViewOrder.stub(:find).with("37") { mock_view_order }
      get :show, :id => "37"
      assigns(:view_order).should be(mock_view_order)
    end
  end

  describe "GET new" do
    it "assigns a new view_order as @view_order" do
      ViewOrder.stub(:new) { mock_view_order }
      get :new
      assigns(:view_order).should be(mock_view_order)
    end
  end

  describe "GET edit" do
    it "assigns the requested view_order as @view_order" do
      ViewOrder.stub(:find).with("37") { mock_view_order }
      get :edit, :id => "37"
      assigns(:view_order).should be(mock_view_order)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created view_order as @view_order" do
        ViewOrder.stub(:new).with({'these' => 'params'}) { mock_view_order(:save => true) }
        post :create, :view_order => {'these' => 'params'}
        assigns(:view_order).should be(mock_view_order)
      end

      it "redirects to the created view_order" do
        ViewOrder.stub(:new) { mock_view_order(:save => true) }
        post :create, :view_order => {}
        response.should redirect_to(view_order_url(mock_view_order))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved view_order as @view_order" do
        ViewOrder.stub(:new).with({'these' => 'params'}) { mock_view_order(:save => false) }
        post :create, :view_order => {'these' => 'params'}
        assigns(:view_order).should be(mock_view_order)
      end

      it "re-renders the 'new' template" do
        ViewOrder.stub(:new) { mock_view_order(:save => false) }
        post :create, :view_order => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested view_order" do
        ViewOrder.stub(:find).with("37") { mock_view_order }
        mock_view_order.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :view_order => {'these' => 'params'}
      end

      it "assigns the requested view_order as @view_order" do
        ViewOrder.stub(:find) { mock_view_order(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:view_order).should be(mock_view_order)
      end

      it "redirects to the view_order" do
        ViewOrder.stub(:find) { mock_view_order(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(view_order_url(mock_view_order))
      end
    end

    describe "with invalid params" do
      it "assigns the view_order as @view_order" do
        ViewOrder.stub(:find) { mock_view_order(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:view_order).should be(mock_view_order)
      end

      it "re-renders the 'edit' template" do
        ViewOrder.stub(:find) { mock_view_order(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested view_order" do
      ViewOrder.stub(:find).with("37") { mock_view_order }
      mock_view_order.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the view_orders list" do
      ViewOrder.stub(:find) { mock_view_order }
      delete :destroy, :id => "1"
      response.should redirect_to(view_orders_url)
    end
  end

end
