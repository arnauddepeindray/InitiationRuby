module BooksHelper

  def book_link the_book
    html = "<a href='/books/#{the_book.id}'>".html_safe
    html += the_book.title
    if the_book.category
      html += "  (#{the_book.category.name})"
    end
    html += "</a>".html_safe
    html
  end
end
