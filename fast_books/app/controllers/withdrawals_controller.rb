class WithdrawalsController < ApplicationController
  # GET /withdrawals
  # GET /withdrawals.xml
  def index
    @withdrawals = Withdrawal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @withdrawals }
    end
  end

  # GET /withdrawals/1
  # GET /withdrawals/1.xml
  def show
    @withdrawal = Withdrawal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @withdrawal }
    end
  end

  # GET /withdrawals/new
  # GET /withdrawals/new.xml
  def new
    @withdrawal = Withdrawal.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @withdrawal }
    end
  end

  # GET /withdrawals/1/edit
  def edit
    @withdrawal = Withdrawal.find(params[:id])
  end

  # POST /withdrawals
  # POST /withdrawals.xml
  def create
    @withdrawal = Withdrawal.new(params[:withdrawal])

    respond_to do |format|
      if @withdrawal.save
        flash[:notice] = 'Withdrawal was successfully created.'
        format.html { redirect_to(@withdrawal) }
        format.xml  { render :xml => @withdrawal, :status => :created, :location => @withdrawal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @withdrawal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /withdrawals/1
  # PUT /withdrawals/1.xml
  def update
    @withdrawal = Withdrawal.find(params[:id])

    respond_to do |format|
      if @withdrawal.update_attributes(params[:withdrawal])
        flash[:notice] = 'Withdrawal was successfully updated.'
        format.html { redirect_to(@withdrawal) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @withdrawal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /withdrawals/1
  # DELETE /withdrawals/1.xml
  def destroy
    @withdrawal = Withdrawal.find(params[:id])
    @withdrawal.destroy

    respond_to do |format|
      format.html { redirect_to(withdrawals_url) }
      format.xml  { head :ok }
    end
  end
end
