class MemosController < ApplicationController
    def index
        #トップページの時のアクション
        @memos = Memo.all
    
    end
    
    def new
        #新規作成の時のアクション
        @categories = Category.all
    end
    
    def create
        #postされた時のアクション
        Memo.create(title:params["memos"]["title"],body:params["memos"]["body"],time:params["memos"]["time"],date:params["memos"]["date"],category_id:params["memos"]["category_id"])
        redirect_to "/"
    end 
    
    def destroy
        #削除のアクション
        memo = Memo.find(params["id"]) 
        memo.destroy
        redirect_to "/"
        
    end
    
    def edit
        #編集のアクション
        @memo = Memo.find(params["id"])
    end
    
    def update
        #更新のアクション
        memo = Memo.find(params["id"])
        memo.title = params["memo"]["title"]
        memo.body = params["memo"]["body"]
        memo.time = params["memo"]["time"]
        memo.date = params["memo"]["date"]
        memo.save
        redirect_to "/"
        
    end
end
