package data;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.WebApplicationContext;

public class GalleryDAOImpl implements GalleryDAO {
	private static final String FILE_NAME = "/WEB-INF/paintings.csv";
	ArrayList<Painting> paintings = new ArrayList<>();

	public GalleryDAOImpl() {
	}

	@Autowired
	private WebApplicationContext wac;

	@PostConstruct
	public void init() {
		try (InputStream is = wac.getServletContext().getResourceAsStream(FILE_NAME);

				BufferedReader buf = new BufferedReader(new InputStreamReader(is));) {
			String line = buf.readLine();
			while ((line = buf.readLine()) != null) {
				String[] tokens = line.split(",");
				String title = tokens[0];
				String artist = tokens[1];
				String price = tokens[2];
				String note = tokens[3];
				String image = tokens[4];
				Painting painting = new Painting(title, artist, price, note, image);
				paintings.add(painting);
				System.out.println(paintings);
			}
		} catch (Exception e) {
			System.err.println(e);
		}

	}

	@Override
	public ArrayList<Painting> addPaintingToGallery(Painting painting) {
		paintings.add(painting);
		for (Painting p : paintings) {
			System.out.println(p);
		}
		return paintings;
	}

	@Override
	public ArrayList<Painting> removePaintingFromGallery(String rp) {
		Painting painting = new Painting();
		for (Painting p : paintings) {
			if (p.getTitle().equals(rp)) {
				painting = p ;
			}
		}
		paintings.remove(painting);
		return paintings;
	}

	@Override
	public ArrayList<Painting> updatePaintingNotes(String note, String title) {
		Painting painting = new Painting();
		for (Painting p : paintings) {
			if (p.getTitle().equals(title)) {
				painting = p;
			}
		}

		StringBuilder sb = new StringBuilder();
		String oldNote = painting.getNote();
		sb.append(oldNote);
		sb.append(" ");
		sb.append(note);
		sb.append(" ");
		painting.setNote(sb.toString());
		return paintings; 
	}

	@Override
	public ArrayList<Painting> clearPaintingNotes(String title) {
		Painting painting = new Painting();
		for (Painting pn : paintings) {
			if (pn.getTitle().equals(title)) {
				painting = pn;
			}
		}
		painting.setNote("");
		return paintings;
	}

	@Override
	public ArrayList<Painting> getPaintingsByArtist(String ga) {
		ArrayList<Painting> filteredPaintings = new ArrayList<Painting>();
		for (Painting p : paintings) { 
			if (p.getArtist().equals(ga)) {
				filteredPaintings.add(p);
			}
		}
		return filteredPaintings;
	}

	@Override
	public ArrayList<Painting> getPaintings() {
		return paintings;
	}

	@Override
	public ArrayList<Painting> getAllPaintings() {
		// TODO Auto-generated method stub
		return paintings;
	}

}