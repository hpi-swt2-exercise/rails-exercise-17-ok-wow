class PapersController < ApplicationController
  def new
    @paper = Paper.new
  end
  def create
    @paper = Paper.new(paper_params)

    if @paper.save
      redirect_to @paper
    else
      render 'new'
    end
  end
  def show
    @paper = Paper.find(params[:id])
  end
  def index
    @papers = Paper.all
  end
  def edit
    @paper = Paper.find(params[:id])
    @ids = []
    @paper.authors.each do |author|
      @ids.push(author.id)
    end
    @authors = Author.all
  end
  def update
    @paper = Paper.find(params[:id])

    myParams = paper_params
    myParams[:authors] = []
    paper_params[:authors].each do |author|
      if author.present?
        myParams[:authors].push(Author.find(author))
      end
    end

    if @paper.update(myParams)
      redirect_to @paper
    else
      render 'edit'
    end
  end
  def destroy
    @paper = Paper.find(params[:id])
    @paper.destroy

    redirect_to papers_path
  end
  private
  def paper_params
    params.require(:paper).permit(:title, :venue, :year, :authors => [] )

  end

end
