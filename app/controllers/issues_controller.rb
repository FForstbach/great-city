class IssuesController < ApplicationController
  before_action :set_issue, only: [:show, :edit, :update, :destroy, :vote]
  before_action :authenticate_user!, only: :edit

  def vote
    @issue.update_attribute(:votes, @issue.votes + 1)
  end

  # GET /issues
  # GET /issues.json
  def index
    @issues = user_signed_in? ? Issue.all : Issue.approved
  end

  # GET /issues/1
  # GET /issues/1.json
  def show
    @issues = Issue.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@issues) do |issue, marker|
    marker.lat issue.latitude
    marker.lng issue.longitude
    # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  # GET /issues/new
  def new
    @issue = Issue.new
    render '_first_step_form'
  end

  # GET /issues/1/edit
  def edit
    render '_second_step_form'
  end

  # POST /issues
  # POST /issues.json
  def create
    @issue = Issue.new(issue_params)
    puts "ISSUE: #{@issue.inspect}"

    respond_to do |format|
      if @issue.save
        format.html { redirect_to edit_issue_path(@issue), notice: 'Issue was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issues/1
  # PATCH/PUT /issues/1.json
  def update
    respond_to do |format|
      if @issue.update(issue_params)
        format.html { redirect_to @issue, notice: 'Issue was successfully updated.' }
        format.json { render :show, status: :ok, location: @issue }
      else
        format.html { render :edit }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issues/1
  # DELETE /issues/1.json
  def destroy
    @issue.destroy
    respond_to do |format|
      format.html { redirect_to issues_url, notice: 'Issue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue
      id = params[:id] || params[:issue_id]
      @issue = Issue.find(id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def issue_params
      params.require(:issue).permit(:title, :description, :photo, :votes, :active, :address, :longitude, :latitude)
    end
end
