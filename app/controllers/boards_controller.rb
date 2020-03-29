# ApplicationContorollerを継承する事でcontorollerとしての役割を持てるっては話
class BoardsController < ApplicationController
    # BoardsControllerのindexアクションという(メソッドでもある)
    def index
    end

    def new
        # Boardモデルのオブジェクトを作成.インスタンス変数に格納しviewで使えるようにする。
        @boards = Board.new
    end
end