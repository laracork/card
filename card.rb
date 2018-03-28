class Card
    attr_accessor :rank, :suit

    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end

    def output_card
        puts "#{self.rank} of #{self.suit}"
    end
end

class Deck
    def initialize
        @ranks = [*(2..10), 'Jack', 'Queen', 'King', 'Ace']
        @suits = ['spades', 'hearts', 'clubs', 'diamonds']
        @cards = []

        @ranks.each do |rank|
          @suits.each do |suit|
            @cards << Card.new(rank, suit)
          end
        end
      end

    def shuffle
      @cards.shuffle!
    end

    def deal 
      @cards.shift
    end

    def output_deck
        @cards.each do |card|
          card.output_card
        end
    end
end

deck = Deck.new
deck.shuffle
deck.deal
deck.output_deck