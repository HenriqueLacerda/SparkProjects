require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe PrioritiesController do

  # This should return the minimal set of attributes required to create a valid
  # Priority. As you add validations to Priority, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "nome" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PrioritiesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all priorities as @priorities" do
      priority = Priority.create! valid_attributes
      get :index, {}, valid_session
      assigns(:priorities).should eq([priority])
    end
  end

  describe "GET show" do
    it "assigns the requested priority as @priority" do
      priority = Priority.create! valid_attributes
      get :show, {:id => priority.to_param}, valid_session
      assigns(:priority).should eq(priority)
    end
  end

  describe "GET new" do
    it "assigns a new priority as @priority" do
      get :new, {}, valid_session
      assigns(:priority).should be_a_new(Priority)
    end
  end

  describe "GET edit" do
    it "assigns the requested priority as @priority" do
      priority = Priority.create! valid_attributes
      get :edit, {:id => priority.to_param}, valid_session
      assigns(:priority).should eq(priority)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Priority" do
        expect {
          post :create, {:priority => valid_attributes}, valid_session
        }.to change(Priority, :count).by(1)
      end

      it "assigns a newly created priority as @priority" do
        post :create, {:priority => valid_attributes}, valid_session
        assigns(:priority).should be_a(Priority)
        assigns(:priority).should be_persisted
      end

      it "redirects to the created priority" do
        post :create, {:priority => valid_attributes}, valid_session
        response.should redirect_to(Priority.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved priority as @priority" do
        # Trigger the behavior that occurs when invalid params are submitted
        Priority.any_instance.stub(:save).and_return(false)
        post :create, {:priority => { "nome" => "invalid value" }}, valid_session
        assigns(:priority).should be_a_new(Priority)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Priority.any_instance.stub(:save).and_return(false)
        post :create, {:priority => { "nome" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested priority" do
        priority = Priority.create! valid_attributes
        # Assuming there are no other priorities in the database, this
        # specifies that the Priority created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Priority.any_instance.should_receive(:update_attributes).with({ "nome" => "MyString" })
        put :update, {:id => priority.to_param, :priority => { "nome" => "MyString" }}, valid_session
      end

      it "assigns the requested priority as @priority" do
        priority = Priority.create! valid_attributes
        put :update, {:id => priority.to_param, :priority => valid_attributes}, valid_session
        assigns(:priority).should eq(priority)
      end

      it "redirects to the priority" do
        priority = Priority.create! valid_attributes
        put :update, {:id => priority.to_param, :priority => valid_attributes}, valid_session
        response.should redirect_to(priority)
      end
    end

    describe "with invalid params" do
      it "assigns the priority as @priority" do
        priority = Priority.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Priority.any_instance.stub(:save).and_return(false)
        put :update, {:id => priority.to_param, :priority => { "nome" => "invalid value" }}, valid_session
        assigns(:priority).should eq(priority)
      end

      it "re-renders the 'edit' template" do
        priority = Priority.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Priority.any_instance.stub(:save).and_return(false)
        put :update, {:id => priority.to_param, :priority => { "nome" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested priority" do
      priority = Priority.create! valid_attributes
      expect {
        delete :destroy, {:id => priority.to_param}, valid_session
      }.to change(Priority, :count).by(-1)
    end

    it "redirects to the priorities list" do
      priority = Priority.create! valid_attributes
      delete :destroy, {:id => priority.to_param}, valid_session
      response.should redirect_to(priorities_url)
    end
  end

end