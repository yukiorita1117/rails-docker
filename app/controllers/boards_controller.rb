# ApplicationContorollerを継承する事でcontorollerとしての役割を持てるっては話
class BoardsController < ApplicationController

    before_action :set_target_board, only: %i[show edit update destroy]

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
        board = Board.create(board_params)
        # binding pry
        # createした時点でBoardオブジェクトはidを付与され存在している。そこへリダイレクトさせる。
        redirect_to board
    end

    def show
        # idに対応するBoardオブジェクトを取得できる
        # before_actionがあるので @board = Board.find(params[:id]) の記載は不要
        # binding pry
    end

    def edit
        # インスタンス変数に格納してあげる
        # before_actionがあるので @board = Board.find(params[:id]) の記載は不要
    end

    def update
        # boardのparamsを書き換える
        @board.update(board_params)

        # redirect_toメソッドでリダイレクトさせる。特定のmodelのオブジェクト指定にする書き方「/boards/:id」のパスになる。
        redirect_to board
    end

    # 注意：destroyとい関数名はresourcesbase routingにとってはすでに決められた予約語なのでタイポするとエラーでる。
    # もしくはconfig/routeに書くかどっちか。
    def destroy
        @board.delete

        redirect_to boards_path
    end

    private
    def board_params
        params.require(:board).permit(:name,:title,:body)
    end

    def set_target_board
        @board = Board.find(params[:id])
      end
end