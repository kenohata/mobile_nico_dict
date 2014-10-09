class WordsController < ApplicationController
  def show
    id    = CGI.escape(params[:id])
    @file = open("http://dic.nicovideo.jp/a/#{id}")
    @word = NicoDict::Word.new(@file)
  end
end
