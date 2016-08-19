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

describe ParkingsController do

  # This should return the minimal set of attributes required to create a valid
  # Parking. As you add validations to Parking, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ParkingsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all parkings as @parkings" do
      parking = Parking.create! valid_attributes
      get :index, {}, valid_session
      assigns(:parkings).should eq([parking])
    end
  end

  describe "GET show" do
    it "assigns the requested parking as @parking" do
      parking = Parking.create! valid_attributes
      get :show, {:id => parking.to_param}, valid_session
      assigns(:parking).should eq(parking)
    end
  end

  describe "GET new" do
    it "assigns a new parking as @parking" do
      get :new, {}, valid_session
      assigns(:parking).should be_a_new(Parking)
    end
  end

  describe "GET edit" do
    it "assigns the requested parking as @parking" do
      parking = Parking.create! valid_attributes
      get :edit, {:id => parking.to_param}, valid_session
      assigns(:parking).should eq(parking)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Parking" do
        expect {
          post :create, {:parking => valid_attributes}, valid_session
        }.to change(Parking, :count).by(1)
      end

      it "assigns a newly created parking as @parking" do
        post :create, {:parking => valid_attributes}, valid_session
        assigns(:parking).should be_a(Parking)
        assigns(:parking).should be_persisted
      end

      it "redirects to the created parking" do
        post :create, {:parking => valid_attributes}, valid_session
        response.should redirect_to(Parking.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved parking as @parking" do
        # Trigger the behavior that occurs when invalid params are submitted
        Parking.any_instance.stub(:save).and_return(false)
        post :create, {:parking => { "title" => "invalid value" }}, valid_session
        assigns(:parking).should be_a_new(Parking)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Parking.any_instance.stub(:save).and_return(false)
        post :create, {:parking => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested parking" do
        parking = Parking.create! valid_attributes
        # Assuming there are no other parkings in the database, this
        # specifies that the Parking created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Parking.any_instance.should_receive(:update).with({ "title" => "MyString" })
        put :update, {:id => parking.to_param, :parking => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested parking as @parking" do
        parking = Parking.create! valid_attributes
        put :update, {:id => parking.to_param, :parking => valid_attributes}, valid_session
        assigns(:parking).should eq(parking)
      end

      it "redirects to the parking" do
        parking = Parking.create! valid_attributes
        put :update, {:id => parking.to_param, :parking => valid_attributes}, valid_session
        response.should redirect_to(parking)
      end
    end

    describe "with invalid params" do
      it "assigns the parking as @parking" do
        parking = Parking.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Parking.any_instance.stub(:save).and_return(false)
        put :update, {:id => parking.to_param, :parking => { "title" => "invalid value" }}, valid_session
        assigns(:parking).should eq(parking)
      end

      it "re-renders the 'edit' template" do
        parking = Parking.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Parking.any_instance.stub(:save).and_return(false)
        put :update, {:id => parking.to_param, :parking => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested parking" do
      parking = Parking.create! valid_attributes
      expect {
        delete :destroy, {:id => parking.to_param}, valid_session
      }.to change(Parking, :count).by(-1)
    end

    it "redirects to the parkings list" do
      parking = Parking.create! valid_attributes
      delete :destroy, {:id => parking.to_param}, valid_session
      response.should redirect_to(parkings_url)
    end
  end

end