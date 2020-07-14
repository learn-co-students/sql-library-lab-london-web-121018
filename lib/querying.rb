def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 GROUP BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters GROUP BY characters.name ORDER BY length(characters.motto) DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species , COUNT(species) AS species_freq FROM characters GROUP BY species ORDER BY species_freq DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM series JOIN authors ON series.author_id = authors.id JOIN subgenres ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM characters  JOIN series ON characters.series_id = series.id  WHERE species = 'human' GROUP BY series_id ORDER BY count (species)  DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, count(book_id) FROM characters JOIN character_books ON characters.id = character_books.character_id GROUP BY characters.name ORDER BY count(book_id) DESC;"
end
