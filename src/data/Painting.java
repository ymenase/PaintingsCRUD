package data;

public class Painting {
	
	@Override
	public String toString() {
		return "Painting [title=" + title + ", artist=" + artist + ", price=" + price + ", note=" + note + ", image="
				+ image + "]";
	}
	private String title;
	private String artist;
	private String price;
	private String note;
	private String image;

	public Painting() {
	}
	public Painting(String title, String artist, String price, 
			String note, String image) {
		this.title = title;
		this.artist = artist;
		this.price = price;
		this.note = note;
		this.image = image;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getArtist() {
		return artist;
	}
	public void setArtist(String artist) {
		this.artist = artist;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

}
