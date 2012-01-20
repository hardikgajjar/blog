class Backend::ProductsController < Backend::ResourceController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])

    if @product.save
      redirect_to backend_products_path, notice: 'Product was successfully created.'
    else
      render action: 'new'
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if(@product.update_attributes(params[:product]))
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render action: 'edit'
    end

  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end

  def destroyall
    tmp = []
    params[:Product].each do |a,i|
      tmp.push(i)
      if i=="1"
        @product = Product.find(a)
        @product.destroy
      end
    end
    #render :text => tmp.inspect
    redirect_to backend_products_path

  end
end
