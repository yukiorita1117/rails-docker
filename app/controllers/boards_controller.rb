# ApplicationContorollerを継承する事でcontorollerとしての役割を持てるっては話
class BoardsController < ApplicationController
    # BoardsControllerのindexアクションという(メソッドでもある)
    def index
    end

    def new
        # Boardモデルのオブジェクトを作成.インスタンス変数に格納しviewで使えるようにする。
        @board = Board.new
        # binding.pry
    end

    def create
        Board.create(board_params)
        # binding pry
    end

    private
    def board_params
        params.require(:board).permit(:name,:title,:body)
    end
end