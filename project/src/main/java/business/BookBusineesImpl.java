package business;

import java.util.List;

import javax.inject.Inject;

import dao.BookDAO;
import dao.BookDAOImplJPA;
import model.bean.AuthorBean;
import model.bean.BookBean;
import model.bean.GenreBean;

public class BookBusineesImpl implements BookBusiness{

	@Inject
	private BookDAO dao;
	public BookBusineesImpl() {
	    this.dao = new BookDAOImplJPA();
	}
	
	@Override
	public List<BookBean> getBookList() {
		return this.dao.getBookList();
	}

	@Override
	public BookBean getBook(String titre) {
		return this.dao.getBook(titre);
	}

	@Override
	public BookBean getBook(AuthorBean author) {
		return this.dao.getBook(author);
	}

	@Override
	public BookBean getBook(GenreBean genre) {
		return this.dao.getBook(genre);
	}

	@Override
	public void insertBook(BookBean book) {
		this.dao.insertBook(book);
	}

}
