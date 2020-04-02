# ApplicationContorollerを継承する事でcontorollerとしての役割を持てるっては話
class BoardsController < ApplicationController
    # BoardsControllerのindexアクションという(メソッドでもある)
    def index
        # 全件取得 TODO(orita)あとで件数取得を制限する
        @board = Board.all
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

    def show
        binding pry
    end

    private
    def board_params
        params.require(:board).permit(:name,:title,:body)
    end
end