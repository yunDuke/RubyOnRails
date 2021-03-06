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

describe ParkinglotsController do

  # This should return the minimal set of attributes required to create a valid
  # Parkinglot. As you add validations to Parkinglot, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ParkinglotsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all parkinglots as @parkinglots" do
      parkinglot = Parkinglot.create! valid_attributes
      get :index, {}, valid_session
      assigns(:parkinglots).should eq([parkinglot])
    end
  end

  describe "GET show" do
    it "assigns the requested parkinglot as @parkinglot" do
      parkinglot = Parkinglot.create! valid_attributes
      get :show, {:id => parkinglot.to_param}, valid_session
      assigns(:parkinglot).should eq(parkinglot)
    end
  end

  describe "GET new" do
    it "assigns a new parkinglot as @parkinglot" do
      get :new, {}, valid_session
      assigns(:parkinglot).should be_a_new(Parkinglot)
    end
  end

  describe "GET edit" do
    it "assigns the requested parkinglot as @parkinglot" do
      parkinglot = Parkinglot.create! valid_attributes
      get :edit, {:id => parkinglot.to_param}, valid_session
      assigns(:parkinglot).should eq(parkinglot)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Parkinglot" do
        expect {
          post :create, {:parkinglot => valid_attributes}, valid_session
        }.to change(Parkinglot, :count).by(1)
      end

      it "assigns a newly created parkinglot as @parkinglot" do
        post :create, {:parkinglot => valid_attributes}, valid_session
        assigns(:parkinglot).should be_a(Parkinglot)
        assigns(:parkinglot).should be_persisted
      end

      it "redirects to the created parkinglot" do
        post :create, {:parkinglot => valid_attributes}, valid_session
        response.should redirect_to(Parkinglot.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved parkinglot as @parkinglot" do
        # Trigger the behavior that occurs when invalid params are submitted
        Parkinglot.any_instance.stub(:save).and_return(false)
        post :create, {:parkinglot => { "title" => "invalid value" }}, valid_session
        assigns(:parkinglot).should be_a_new(Parkinglot)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Parkinglot.any_instance.stub(:save).and_return(false)
        post :create, {:parkinglot => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested parkinglot" do
        parkinglot = Parkinglot.create! valid_attributes
        # Assuming there are no other parkinglots in the database, this
        # specifies that the Parkinglot created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Parkinglot.any_instance.should_receive(:update).with({ "title" => "MyString" })
        put :update, {:id => parkinglot.to_param, :parkinglot => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested parkinglot as @parkinglot" do
        parkinglot = Parkinglot.create! valid_attributes
        put :update, {:id => parkinglot.to_param, :parkinglot => valid_attributes}, valid_session
        assigns(:parkinglot).should eq(parkinglot)
      end

      it "redirects to the parkinglot" do
        parkinglot = Parkinglot.create! valid_attributes
        put :update, {:id => parkinglot.to_param, :parkinglot => valid_attributes}, valid_session
        response.should redirect_to(parkinglot)
      end
    end

    describe "with invalid params" do
      it "assigns the parkinglot as @parkinglot" do
        parkinglot = Parkinglot.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Parkinglot.any_instance.stub(:save).and_return(false)
        put :update, {:id => parkinglot.to_param, :parkinglot => { "title" => "invalid value" }}, valid_session
        assigns(:parkinglot).should eq(parkinglot)
      end

      it "re-renders the 'edit' template" do
        parkinglot = Parkinglot.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Parkinglot.any_instance.stub(:save).and_return(false)
        put :update, {:id => parkinglot.to_param, :parkinglot => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested parkinglot" do
      parkinglot = Parkinglot.create! valid_attributes
      expect {
        delete :destroy, {:id => parkinglot.to_param}, valid_session
      }.to change(Parkinglot, :count).by(-1)
    end

    it "redirects to the parkinglots list" do
      parkinglot = Parkinglot.create! valid_attributes
      delete :destroy, {:id => parkinglot.to_param}, valid_session
      response.should redirect_to(parkinglots_url)
    end
  end

end
