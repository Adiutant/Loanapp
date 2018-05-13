class UsersController < ApplicationController
  def index
  @a = User.all
  #@a[0] = {id: 12134241, name: "Alex", surname: "Ivanov", email: "1@mail.ru"}
  #@a[1] = {id: 121342141, name: "Roman", surname: "Alexeev", email: "12mail.ru"}
  #@a[2] = {id: 121342241, name: "Vasya", surname: "Mirnov", email: "3@mail.ru"}
  #@a[3] = {id: 121344241, name: "Senya", surname: "Dobryn", email: "11@mail.ru"}
  #@a[4] = {id: 121343241, name: "Misha", surname: "Vasyn", email: "41@mail.ru"}
  #@a[5] = {id: 121534241, name: "Igor", surname: "Misin", email: "14@mail.ru"}
  end
  def show 
  end
  def new
    @user = User.new
  end
  def create
  end
end
