# frozen_string_literal: true

# This program generates the lyrics of the 99 Bottles of Beer song.
class BeerSong
  def self.lyrics
    File.read('lyrics.txt', mode: 'r')
  end

  def self.verse(ver)
    lyrics.split(/^\n+/).reverse[ver]
  end

  def self.verses(ver1, ver2)
    (ver2..ver1).each_with_object([]) do |num, result|
      result.prepend(verse(num))
    end.join("\n")
  end
end
