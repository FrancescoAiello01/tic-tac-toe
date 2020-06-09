require_relative 'board'

class Game

    attr_accessor :board

    def initialize(board=nil)
        @board = board
    end

    def over?
        if board == nil then
            return false
        elsif board.full? then
            return true
        elsif board.token_at(0, 0) && board.token_at(1, 1) then
            return false
        else 
            return false
        end
    end

    def tie?
        if board.full? then
            return true
        end
    end

end
