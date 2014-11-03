class BooksController < ApplicationController
  def index
    @books = Book.all
    @books_array = @books.sort { |a,b| a.rank <=> b.rank }
    @books_array.reverse!
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
      if @book.update(params.require(:book).permit(:name, :author, :description, :rank))
        raise params.inspect
        redirect_to books_path, notice: "book was successfully updated."
      else
        render :edit
      end
  end

  def create
    @book = Book.new(params.require(:book).permit(:name, :author, :description, :rank))
    if @book.save
      redirect_to books_path, notice: "book was created successfully."
    else
      render :new
    end
  end

  def destroy
    @book = Book.all.find(params[:id])
    @book.destroy
    redirect_to books_path, notice: "book was successfully destroyed."
  end

  def upvote
    @book = Book.all.find(params[:id])
    @book.rank += 1
    redirect_to books_path
    @book.save
  end

  def downvote
    @book = Book.all.find(params[:id])
    if @book.rank >= 1
      @book.rank -= 1
    end
    @book.save
    redirect_to books_path
  end

end
