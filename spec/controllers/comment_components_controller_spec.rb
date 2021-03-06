require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe CommentComponentsController do

  def mock_comment_component(stubs={})
    @mock_comment_component ||= mock_model(CommentComponent, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all comment_components as @comment_components" do
      CommentComponent.stub(:all) { [mock_comment_component] }
      get :index
      assigns(:comment_components).should eq([mock_comment_component])
    end
  end

  describe "GET show" do
    it "assigns the requested comment_component as @comment_component" do
      CommentComponent.stub(:find).with("37") { mock_comment_component }
      get :show, :id => "37"
      assigns(:comment_component).should be(mock_comment_component)
    end
  end

  describe "GET new" do
    it "assigns a new comment_component as @comment_component" do
      CommentComponent.stub(:new) { mock_comment_component }
      get :new
      assigns(:comment_component).should be(mock_comment_component)
    end
  end

  describe "GET edit" do
    it "assigns the requested comment_component as @comment_component" do
      CommentComponent.stub(:find).with("37") { mock_comment_component }
      get :edit, :id => "37"
      assigns(:comment_component).should be(mock_comment_component)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created comment_component as @comment_component" do
        CommentComponent.stub(:new).with({'these' => 'params'}) { mock_comment_component(:save => true) }
        post :create, :comment_component => {'these' => 'params'}
        assigns(:comment_component).should be(mock_comment_component)
      end

      it "redirects to the created comment_component" do
        CommentComponent.stub(:new) { mock_comment_component(:save => true) }
        post :create, :comment_component => {}
        response.should redirect_to(comment_component_url(mock_comment_component))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved comment_component as @comment_component" do
        CommentComponent.stub(:new).with({'these' => 'params'}) { mock_comment_component(:save => false) }
        post :create, :comment_component => {'these' => 'params'}
        assigns(:comment_component).should be(mock_comment_component)
      end

      it "re-renders the 'new' template" do
        CommentComponent.stub(:new) { mock_comment_component(:save => false) }
        post :create, :comment_component => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested comment_component" do
        CommentComponent.stub(:find).with("37") { mock_comment_component }
        mock_comment_component.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :comment_component => {'these' => 'params'}
      end

      it "assigns the requested comment_component as @comment_component" do
        CommentComponent.stub(:find) { mock_comment_component(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:comment_component).should be(mock_comment_component)
      end

      it "redirects to the comment_component" do
        CommentComponent.stub(:find) { mock_comment_component(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(comment_component_url(mock_comment_component))
      end
    end

    describe "with invalid params" do
      it "assigns the comment_component as @comment_component" do
        CommentComponent.stub(:find) { mock_comment_component(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:comment_component).should be(mock_comment_component)
      end

      it "re-renders the 'edit' template" do
        CommentComponent.stub(:find) { mock_comment_component(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested comment_component" do
      CommentComponent.stub(:find).with("37") { mock_comment_component }
      mock_comment_component.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the comment_components list" do
      CommentComponent.stub(:find) { mock_comment_component }
      delete :destroy, :id => "1"
      response.should redirect_to(comment_components_url)
    end
  end

end
