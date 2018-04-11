class ToysController < ApplicationController
  before_action :set_toy, only: [:show, :edit, :update, :destroy]

  # GET /toys
  # GET /toys.json
  def index
    @toys = Toy.all
  end

  def shumelki
    @toys = Toy.where(Podrazdel: "beanbag")
  end

  def pyramid
    @toys = Toy.where(Podrazdel: "pyramid")
  end

  def lacing
    @toys = Toy.where(Podrazdel: "lacing")
  end

  def puzzlespictures
    @toys = Toy.where(Podrazdel: "puzzlespictures")
  end

  def looseleaves
    @toys = Toy.where(Podrazdel: "looseleaves")
  end

  def sorters
    @toys = Toy.where(Podrazdel: "sorters")
  end

  def cubes
    @toys = Toy.where(Podrazdel: "cubes")
  end

  def boardgames
    @toys = Toy.where(Podrazdel: "boardgames")
  end

  def constructors
    @toys = Toy.where(Podrazdel: "constructors")
  end

  def creatorskit
    @toys = Toy.where(Podrazdel: "creatorskit")
  end

  def puzzles
    @toys = Toy.where(Podrazdel: "puzzles")
  end

  def learningtoread
    @toys = Toy.where(Podrazdel: "learningtoread")
  end

  def westudythealphabet
    @toys = Toy.where(Podrazdel: "westudythealphabet")
  end

  def languageandcommunication
    @toys = Toy.where(Podrazdel: "languageandcommunication")
  end

  def accounteducation
    @toys = Toy.where(Podrazdel: "accounteducation")
  end

  def developmentoflogicalthinking
    @toys = Toy.where(Podrazdel: "developmentoflogicalthinking")
  end

  def developmentofmemoryandattention
    @toys = Toy.where(Podrazdel: "developmentofmemoryandattention")
  end

  def colorsandshapes
    @toys = Toy.where(Podrazdel: "colorsandshapes")
  end

  def theworld
    @toys = Toy.where(Podrazdel: "theworld")
  end

  def puzzlegames
    @toys = Toy.where(Podrazdel: "puzzlegames")
  end

  def teaching
    @toys = Toy.where(Podrazdel: "teaching")
  end

  def developing
    @toys = Toy.where(Podrazdel: "developing")
  end

  def merry
    @toys = Toy.where(Podrazdel: "merry")
  end

  def forthecompany
    @toys = Toy.where(Podrazdel: "forthecompany")
  end

  def constructor
    @toys = Toy.where(Podrazdel: "constructor")
  end

  def massformodeling
    @toys = Toy.where(Podrazdel: "massformodeling")
  end

  def sandformodeling
    @toys = Toy.where(Podrazdel: "sandformodeling")
  end

  def puzzle
    @toys = Toy.where(Podrazdel: "puzzle")
  end

  def creation
    @toys = Toy.where(Podrazdel: "creation")
  end

  def printedproducts
    @toys = Toy.where(Podrazdel: "printedproducts")
  end

  def plaything
    @toys = Toy.where(Podrazdel: "plaything")
  end


  # GET /toys/1
  # GET /toys/1.json
  def show
  end

  # GET /toys/new
  def new
    @toy = Toy.new
  end

  # GET /toys/1/edit
  def edit
  end

  # POST /toys
  # POST /toys.json
  def create
    @toy = Toy.new(toy_params)

    respond_to do |format|
      if @toy.save
        format.html { redirect_to @toy, notice: 'Toy was successfully created.' }
        format.json { render :show, status: :created, location: @toy }
      else
        format.html { render :new }
        format.json { render json: @toy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toys/1
  # PATCH/PUT /toys/1.json
  def update
    respond_to do |format|
      if @toy.update(toy_params)
        format.html { redirect_to @toy, notice: 'Toy was successfully updated.' }
        format.json { render :show, status: :ok, location: @toy }
      else
        format.html { render :edit }
        format.json { render json: @toy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toys/1
  # DELETE /toys/1.json
  def destroy
    @toy.destroy
    respond_to do |format|
      format.html { redirect_to toys_url, notice: 'Toy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toy
      @toy = Toy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toy_params
      params.require(:toy).permit(:name, :cost, :info, :image, :Razdel, :Podrazdel)
    end
end
