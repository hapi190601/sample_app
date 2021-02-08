class TodolistsController < ApplicationController
  def new
    @list = List.new
  end
  
  def create
    # データを新規登録するためのインスタンス作成
    list = List.new(list_params)
    # データベースにデータを保存するメソッド
    list.save
    # リダイレクト処理
    redirect_to '/top'
  end
  
  def index
    @lists = List.all
  end
  
  
  
  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
