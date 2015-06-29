class PeopleController < ApplicationController
  before_action :set_person, only: [:edit, :update, :destroy]

  # GET /people
  # GET /people.json
  def index
  	#people need to be arranged by id
    @people = Person.order(:pid)
  end

  # GET /people/1
  # GET /people/1.json
  def show
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to "/people", notice: 'Person was successfully created.' }
        if @person.with_whom!=""
        	p = Person.find(@person.with_whom)
        	p.with_whom = @person.id
        	p.save
       	end
        #format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new }
        #format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
	  ###
    respond_to do |format|
    	oldPersonWith = @person.with_whom
      if @person.update_attributes(person_params)
        format.html { redirect_to people_url, notice: 'Person was successfully updated.' }
        if @person.with_whom!=""
        	p = Person.find(@person.with_whom)
        	p.with_whom = @person.id
        	p.save
        else
        	if oldPersonWith != ""
        		p = Person.find(oldPersonWith)
        		p.with_whom = ""
        		p.save
        	end
       	end
        	#we need to change THE OTHER person's value to him
        # @person to "show" page, people_url to index...
        #format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit }
        #format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'Person was successfully destroyed.' }
      #format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:name, :pid, :AB_4, :AB_14, :with_whom)
    end
end
