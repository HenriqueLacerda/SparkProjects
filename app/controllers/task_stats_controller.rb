class TaskStatsController < ApplicationController
  # GET /task_stats
  # GET /task_stats.json
  def index
    @task_stats = TaskStat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @task_stats }
    end
  end

  # GET /task_stats/1
  # GET /task_stats/1.json
  def show
    @task_stat = TaskStat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task_stat }
    end
  end

  # GET /task_stats/new
  # GET /task_stats/new.json
  def new
    @task_stat = TaskStat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task_stat }
    end
  end

  # GET /task_stats/1/edit
  def edit
    @task_stat = TaskStat.find(params[:id])
  end

  # POST /task_stats
  # POST /task_stats.json
  def create
    @task_stat = TaskStat.new(params[:task_stat])

    respond_to do |format|
      if @task_stat.save
        format.html { redirect_to @task_stat, notice: 'Task stat was successfully created.' }
        format.json { render json: @task_stat, status: :created, location: @task_stat }
      else
        format.html { render action: "new" }
        format.json { render json: @task_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /task_stats/1
  # PUT /task_stats/1.json
  def update
    @task_stat = TaskStat.find(params[:id])

    respond_to do |format|
      if @task_stat.update_attributes(params[:task_stat])
        format.html { redirect_to @task_stat, notice: 'Task stat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_stats/1
  # DELETE /task_stats/1.json
  def destroy
    @task_stat = TaskStat.find(params[:id])
    @task_stat.destroy

    respond_to do |format|
      format.html { redirect_to task_stats_url }
      format.json { head :no_content }
    end
  end
end
